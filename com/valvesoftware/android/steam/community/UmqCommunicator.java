package com.valvesoftware.android.steam.community;

import android.os.Handler;
import com.valvesoftware.android.steam.community.jsontranslators.ActiveMessageSessionsTranslator;
import com.valvesoftware.android.steam.community.jsontranslators.UmqMessageHistoryTranslator;
import com.valvesoftware.android.steam.community.jsontranslators.UmqPollResultTranslator;
import com.valvesoftware.android.steam.community.model.MessageSession;
import com.valvesoftware.android.steam.community.model.PollStatus;
import com.valvesoftware.android.steam.community.model.UmqMessage;
import com.valvesoftware.android.steam.community.model.UmqPollResult;
import com.valvesoftware.android.steam.community.model.UserNotificationCounts;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

public class UmqCommunicator {
    private static UmqCommunicator instance;
    private boolean canSendTypingNotification = true;
    private ChatStateListener chatStateListener;
    private int consecutiveLoginAttemptsFailed = 0;
    private final Handler enqueueStopHandler = new Handler();
    private long lastMessageNumber;
    private final AtomicLong lastPollTime = new AtomicLong(0);
    private LoggedInStatusChangedListener loggedInStatusChangedListener;
    private NotificationCountUpdateListener notificationCountUpdateListener;
    final AtomicInteger numSwitchToPushRetries = new AtomicInteger(0);
    private final AtomicBoolean pollInFlight = new AtomicBoolean(false);
    private final SteamCommunityApplication steamCommunityApplication = SteamCommunityApplication.GetInstance();
    private boolean stopPolling = true;
    private final Handler uiThreadHandler = new Handler();
    private String umqId;
    private final LocalDb umqdb = new LocalDb(this.steamCommunityApplication.getApplicationContext());

    private UmqCommunicator() {
    }

    public static UmqCommunicator getInstance() {
        if (instance == null) {
            synchronized (UmqCommunicator.class) {
                instance = new UmqCommunicator();
            }
        }
        return instance;
    }

    public void stop() {
        stop(60000);
    }

    public void stopImmediate() {
        stop(0);
    }

    public void stop(int delayBeforeStop) {
        if (delayBeforeStop == 0) {
            this.stopPolling = true;
        }
        this.enqueueStopHandler.postDelayed(new Runnable() {
            public void run() {
                UmqCommunicator.this.stopPolling = true;
                UmqCommunicator.this.switchToPush();
            }
        }, (long) delayBeforeStop);
    }

    private void switchToPush() {
        new Handler().postDelayed(new Runnable() {
            public void run() {
                if (SteamCommunityApplication.GetInstance().GetSettingInfoDB().usePushInBackground()) {
                    String regId = new GcmRegistrar().getStoredRegistrationId();
                    if (regId != null || regId.length() != 0) {
                        UmqCommunicator.this.setPushInfoOnServer(true, new ResponseListener() {
                            public void onSuccess(JSONObject response) {
                                RequestBuilder rb = Endpoints.getSwitchToPushRequestBuilder(UmqCommunicator.this.umqId);
                                UmqCommunicator.this.numSwitchToPushRetries.set(0);
                                rb.setResponseListener(new ResponseListener() {
                                    public void onSuccess(JSONObject response) {
                                        UmqCommunicator.this.numSwitchToPushRetries.set(0);
                                    }

                                    public void onError(RequestErrorInfo errorInfo) {
                                        if (UmqCommunicator.this.numSwitchToPushRetries.getAndIncrement() < 3) {
                                            UmqCommunicator.this.switchToPush();
                                        }
                                    }
                                });
                                UmqCommunicator.this.steamCommunityApplication.sendRequest(rb);
                                UmqCommunicator.this.umqId = "0";
                            }

                            public void onError(RequestErrorInfo errorInfo) {
                                if (UmqCommunicator.this.numSwitchToPushRetries.getAndIncrement() < 3) {
                                    UmqCommunicator.this.switchToPush();
                                }
                            }
                        });
                    }
                }
            }
        }, (long) (this.numSwitchToPushRetries.get() * 2000));
    }

    public void start() {
        this.enqueueStopHandler.removeCallbacksAndMessages(null);
        if (this.stopPolling || !this.pollInFlight.get()) {
            this.stopPolling = false;
            pollUmqStatus();
        }
    }

    public boolean isRunning() {
        return !this.stopPolling;
    }

    public void sendMessage(final UmqMessage message, final String chatPartnerSteamId) {
        if (message != null && !message.isEmpty()) {
            RequestBuilder requestBuilder = Endpoints.getSendUMQMessageRequestBuilder(message.text, chatPartnerSteamId, this.umqId);
            requestBuilder.setResponseListener(new ResponseListener() {
                public void onSuccess(final JSONObject response) {
                    UmqCommunicator.this.steamCommunityApplication.runOnBackgroundThread(new Runnable() {
                        public void run() {
                            long timestamp = response.optLong("utc_timestamp", 0);
                            message.utcTimeStamp = timestamp;
                            UmqCommunicator.this.umqdb.saveSentMessage(message.text, timestamp, LoggedInUserAccountInfo.getLoginSteamID(), chatPartnerSteamId);
                            if (UmqCommunicator.this.chatStateListener != null) {
                                UmqCommunicator.this.uiThreadHandler.post(new Runnable() {
                                    public void run() {
                                        UmqCommunicator.this.chatStateListener.messageSent(message);
                                    }
                                });
                            }
                        }
                    });
                }

                public void onError(RequestErrorInfo errorInfo) {
                    if (UmqCommunicator.this.chatStateListener != null) {
                        UmqCommunicator.this.chatStateListener.messageSendFailed(message);
                    }
                }
            });
            this.steamCommunityApplication.sendRequest(requestBuilder);
        }
    }

    public void sendTypingNotification(String chatPartnerSteamId) {
        if (this.canSendTypingNotification) {
            this.canSendTypingNotification = false;
            RequestBuilder requestBuilder = Endpoints.getSendUMQTypingNotificationRequestBuilder(chatPartnerSteamId, this.umqId);
            requestBuilder.setResponseListener(new ResponseListener() {
                public void onSuccess(JSONObject response) {
                    UmqCommunicator.this.canSendTypingNotification = true;
                }

                public void onError(RequestErrorInfo errorInfo) {
                    UmqCommunicator.this.canSendTypingNotification = true;
                }
            });
            this.steamCommunityApplication.sendRequest(requestBuilder);
        }
    }

    public void updateOfflineChats() {
        RequestBuilder requestBuilder = Endpoints.getActiveMessageSessions();
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                for (MessageSession session : ActiveMessageSessionsTranslator.translateList(response)) {
                    UmqCommunicator.this.updateChatMessages(session.steamId);
                }
            }

            public void onError(RequestErrorInfo errorInfo) {
            }
        });
        this.steamCommunityApplication.sendRequest(requestBuilder);
    }

    public void setChatLoggedInStatusChangedListener(LoggedInStatusChangedListener loggedInStatusChangedListener) {
        this.loggedInStatusChangedListener = loggedInStatusChangedListener;
    }

    public void setChatStateListener(ChatStateListener chatStateListener) {
        this.chatStateListener = chatStateListener;
    }

    public void setNotificationCountUpdateListener(NotificationCountUpdateListener notificationCountUpdateListener) {
        this.notificationCountUpdateListener = notificationCountUpdateListener;
    }

    public void updateChatMessages(String chatPartnerSteamId) {
        updateChatMessages(chatPartnerSteamId, false, null);
    }

    public void updateChatMessages(final String chatPartnerSteamId, final boolean enterNewMessagesAsUnread, final CompleteCallback onCompleteCallback) {
        RequestBuilder requestBuilder = Endpoints.getRecentMessages(LoggedInUserAccountInfo.getLoginSteamID(), chatPartnerSteamId);
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                final List<UmqMessage> umqMessages = UmqMessageHistoryTranslator.translateList(response, chatPartnerSteamId);
                if (umqMessages != null && umqMessages.size() != 0) {
                    SteamCommunityApplication.GetInstance().runOnBackgroundThread(new Runnable() {
                        public void run() {
                            long mostRecentDeletedMessageTime = UmqCommunicator.this.umqdb.getMostRecentDeletionTime(LoggedInUserAccountInfo.getLoginSteamID(), chatPartnerSteamId);
                            Iterator<UmqMessage> msgIterator = umqMessages.iterator();
                            while (msgIterator.hasNext()) {
                                if (((UmqMessage) msgIterator.next()).utcTimeStamp <= mostRecentDeletedMessageTime) {
                                    msgIterator.remove();
                                }
                            }
                            if (umqMessages.size() > 0 && UmqCommunicator.this.umqdb.saveMessages(umqMessages, LoggedInUserAccountInfo.getLoginSteamID(), enterNewMessagesAsUnread) > 0) {
                                UmqCommunicator.this.uiThreadHandler.post(new Runnable() {
                                    public void run() {
                                        UmqCommunicator.this.sendMessagesSavedNotification(umqMessages);
                                    }
                                });
                            }
                        }
                    });
                }
            }

            public void onError(RequestErrorInfo errorInfo) {
            }
        });
        this.steamCommunityApplication.sendRequest(requestBuilder);
    }

    private void pollUmqStatus() {
        if (!this.stopPolling) {
            if (this.umqId == null) {
                loginToUmq();
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (!this.pollInFlight.get() || currentTimeMillis - this.lastPollTime.get() >= 30000) {
                this.lastPollTime.set(System.currentTimeMillis());
                this.pollInFlight.set(true);
                RequestBuilder requestBuilder = Endpoints.getUMQPollStatusRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID(), this.umqId, this.lastMessageNumber);
                requestBuilder.setResponseListener(new ResponseListener() {
                    public void onSuccess(JSONObject response) {
                        UmqPollResult umqPollResult = UmqPollResultTranslator.translate(response);
                        UmqCommunicator.this.pollInFlight.set(false);
                        if (umqPollResult.statusCode == PollStatus.NOT_LOGGED_ON) {
                            if (!UmqCommunicator.this.stopPolling) {
                                UmqCommunicator.this.loginToUmq();
                            }
                        } else if (umqPollResult.statusCode == PollStatus.TIMEOUT) {
                            UmqCommunicator.this.pollUmqStatus();
                        } else {
                            UmqCommunicator.this.lastMessageNumber = umqPollResult.lastMessageNumber;
                            if (umqPollResult.containsMessageText()) {
                                UmqCommunicator.this.pollUmqForMessageContents();
                                return;
                            }
                            UmqCommunicator.this.sendRefreshSteamIdsNotification(umqPollResult.steamIdsWithPersonaStateChange());
                            UmqCommunicator.this.sendRelationshipChangeNotification(umqPollResult.steamIdsWithRelationshipChanges());
                            if (umqPollResult.containsIsTypingNotification()) {
                                UmqCommunicator.this.sendIsTypingNotification(umqPollResult.getTypingNotificationMessages());
                            }
                            if (umqPollResult.containsNotificationCountUpdate()) {
                                UmqCommunicator.this.sendNotificationCountsUpdate(umqPollResult.getNotificationCountMessage().notificationCounts);
                            }
                            if (!UmqCommunicator.this.stopPolling) {
                                UmqCommunicator.this.pollUmqStatus();
                            }
                        }
                    }

                    public void onError(RequestErrorInfo errorInfo) {
                        UmqCommunicator.this.pollInFlight.set(false);
                        UmqCommunicator.this.loginToUmq();
                    }
                });
                this.steamCommunityApplication.sendRequest(requestBuilder);
            }
        }
    }

    private void sendRefreshSteamIdsNotification(List<String> steamIds) {
        if (steamIds != null && steamIds.size() != 0 && this.chatStateListener != null) {
            this.chatStateListener.personaStateChanged(steamIds);
        }
    }

    private void sendRelationshipChangeNotification(List<String> steamIds) {
        if (steamIds != null && steamIds.size() != 0 && this.chatStateListener != null) {
            this.chatStateListener.relationshipStateChanged(steamIds);
        }
    }

    private void sendNotificationCountsUpdate(UserNotificationCounts notificationCounts) {
        if (this.notificationCountUpdateListener != null) {
            this.notificationCountUpdateListener.notificationCountsChanged(notificationCounts);
        }
    }

    private void pollUmqForMessageContents() {
        if (this.umqId == null) {
            pollUmqStatus();
            return;
        }
        RequestBuilder requestBuilder = Endpoints.getUMQPollForMessageRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID(), this.umqId, this.lastMessageNumber);
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                UmqPollResult umqPollResult = UmqPollResultTranslator.translate(response);
                if (umqPollResult.statusCode != PollStatus.NOT_LOGGED_ON) {
                    UmqCommunicator.this.lastMessageNumber = umqPollResult.lastMessageNumber;
                    if (umqPollResult.containsMessageText()) {
                        final List<UmqMessage> umqMessages = umqPollResult.getAllMessagesWithText();
                        UmqCommunicator.this.steamCommunityApplication.runOnBackgroundThread(new Runnable() {
                            public void run() {
                                UmqCommunicator.this.umqdb.saveMessages(umqMessages, LoggedInUserAccountInfo.getLoginSteamID(), true);
                                UmqCommunicator.this.uiThreadHandler.post(new Runnable() {
                                    public void run() {
                                        UmqCommunicator.this.sendMessagesSavedNotification(umqMessages);
                                        for (UmqMessage message : umqMessages) {
                                            UmqCommunicator.this.sendNoticesAsNeeded(message.chatPartnerSteamId, message.text);
                                        }
                                    }
                                });
                            }
                        });
                    }
                    UmqCommunicator.this.pollUmqStatus();
                } else if (!UmqCommunicator.this.stopPolling) {
                    UmqCommunicator.this.loginToUmq();
                }
            }

            public void onError(RequestErrorInfo errorInfo) {
                UmqCommunicator.this.pollUmqStatus();
            }
        });
        this.steamCommunityApplication.sendRequest(requestBuilder);
    }

    public void loginToUmq() {
        loginToUmq(null);
    }

    public void loginToUmq(final ResponseListener listener) {
        RequestBuilder requestBuilder = Endpoints.getUMQLogonRequestBuilder();
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                UmqCommunicator.this.consecutiveLoginAttemptsFailed = 0;
                UmqCommunicator.this.umqId = response.optString("umqid");
                if (response.optInt("push", -1) == 0) {
                    UmqCommunicator.this.setServerPushStateBasedOnUserPreference();
                }
                UmqCommunicator.this.lastMessageNumber = response.optLong("message", -1);
                UmqCommunicator.this.pollUmqStatus();
                if (listener != null) {
                    listener.onSuccess(response);
                }
                if (UmqCommunicator.this.loggedInStatusChangedListener != null) {
                    UmqCommunicator.this.loggedInStatusChangedListener.loggedIn();
                }
            }

            public void onError(RequestErrorInfo errorInfo) {
                if (UmqCommunicator.this.loggedInStatusChangedListener != null && UmqCommunicator.this.consecutiveLoginAttemptsFailed > 3) {
                    UmqCommunicator.this.loggedInStatusChangedListener.loggedOff();
                }
                UmqCommunicator.this.consecutiveLoginAttemptsFailed = UmqCommunicator.this.consecutiveLoginAttemptsFailed + 1;
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        UmqCommunicator.this.loginToUmq();
                    }
                }, 2000);
            }
        });
        this.steamCommunityApplication.sendRequest(requestBuilder);
    }

    public void setServerPushStateBasedOnUserPreference() {
        setPushInfoOnServer(this.steamCommunityApplication.GetSettingInfoDB().usePushInBackground(), null);
    }

    private void setPushInfoOnServer(boolean pushOn, final ResponseListener listener) {
        String regId = new GcmRegistrar().getStoredRegistrationId();
        if (regId != null && regId.length() != 0) {
            RequestBuilder requestBuilder = Endpoints.getSendServerPushInfoRequestBuilder(regId, pushOn, this.umqId);
            requestBuilder.setResponseListener(new ResponseListener() {
                public void onSuccess(JSONObject response) {
                    if (listener != null) {
                        listener.onSuccess(response);
                    }
                }

                public void onError(RequestErrorInfo errorInfo) {
                    if (listener != null) {
                        listener.onError(errorInfo);
                    }
                }
            });
            this.steamCommunityApplication.sendRequest(requestBuilder);
        }
    }

    public void signOutOfAppCompletely() {
        this.stopPolling = true;
        setPushInfoOnServer(false, null);
    }

    public void logOffFromUmq(final ResponseListener responseListener) {
        stopImmediate();
        RequestBuilder requestBuilder = Endpoints.getUMQLogoffRequestBuilder(this.umqId != null ? this.umqId : "0");
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                if (responseListener != null) {
                    responseListener.onSuccess(response);
                }
                UmqCommunicator.this.umqId = "0";
                if (UmqCommunicator.this.loggedInStatusChangedListener != null) {
                    UmqCommunicator.this.loggedInStatusChangedListener.loggedOff();
                }
            }

            public void onError(RequestErrorInfo errorInfo) {
                if (responseListener != null) {
                    responseListener.onError(errorInfo);
                }
            }
        });
        this.steamCommunityApplication.sendRequest(requestBuilder);
    }

    public boolean isLoggedInToChat() {
        return (this.umqId == null || this.umqId.equals("0")) ? false : true;
    }

    private void sendMessagesSavedNotification(List<UmqMessage> umqMessages) {
        if (this.chatStateListener != null) {
            this.chatStateListener.newMessagesSaved(umqMessages);
        }
    }

    private void sendIsTypingNotification(List<UmqMessage> isTypingMessages) {
        if (this.chatStateListener != null) {
            this.chatStateListener.isTypingMessageReceived(isTypingMessages);
        }
    }

    public void sendNoticesAsNeeded(String chatPartnerSteamId, String messageText) {
        boolean sendSystemTrayNotification = true;
        if (SteamCommunityApplication.isInForeground && this.chatStateListener != null && (this.chatStateListener.listenerWillHandleAllVisualChatNotifications() || this.chatStateListener.listenerWillHandleVisualChatNotificationForSteamId(chatPartnerSteamId))) {
            sendSystemTrayNotification = false;
        }
        String fromPersonaName = "";
        if (this.umqdb != null) {
            fromPersonaName = this.umqdb.getPersonaNameForSteamId(chatPartnerSteamId);
        }
        if (sendSystemTrayNotification) {
            NotificationSender.getInstance().sendChatNotification(messageText, fromPersonaName, false);
        } else {
            NotificationSender.getInstance().ringOrVibrateAsNeededForChat(fromPersonaName);
        }
    }
}
