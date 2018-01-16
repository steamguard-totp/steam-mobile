package com.valvesoftware.android.steam.community.fragment;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;
import com.valvesoftware.android.steam.community.ChatStateListener;
import com.valvesoftware.android.steam.community.LocalDb;
import com.valvesoftware.android.steam.community.LoggedInStatusChangedListener;
import com.valvesoftware.android.steam.community.LoggedInUserAccountInfo;
import com.valvesoftware.android.steam.community.NotificationSender;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.UmqCommunicator;
import com.valvesoftware.android.steam.community.activity.ActivityHelper;
import com.valvesoftware.android.steam.community.activity.MainActivity;
import com.valvesoftware.android.steam.community.jsontranslators.PersonaTranslator;
import com.valvesoftware.android.steam.community.model.Persona;
import com.valvesoftware.android.steam.community.model.UmqMessage;
import com.valvesoftware.android.steam.community.views.SteamMenuItem;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONObject;

public class ChatFragment extends Fragment {
    private View chatIsOfflineNotice;
    private String chatPartnerAvatarUrl;
    private String chatPartnerPersonaName;
    private String chatPartnerSteamId;
    private ChatViewAdapter chatViewAdapter = null;
    private ListView chatViewContents = null;
    private EditText chatViewMessageTextBox = null;
    private OnClickListener clearChatHistoryListener = new OnClickListener() {
        public void onClick(View v) {
            new Builder(ChatFragment.this.getActivity()).setTitle(R.string.Chat_clear_history).setIcon(17301543).setPositiveButton(17039379, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int whichButton) {
                    ChatFragment.this.clearChatHistory();
                }
            }).setNegativeButton(17039369, null).show();
        }
    };
    private LocalDb localDb;
    private final List<UmqMessage> messageListForDisplay = new ArrayList();
    private boolean passwordWarningShown = false;
    private final List<UmqMessage> successfullySentAndReceivedMessages = new ArrayList();
    private final List<UmqMessage> toBeSentMessages = new ArrayList();
    private Toast toast;
    private UmqCommunicator umqCommunicator;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View fragmentView = inflater.inflate(R.layout.chat_fragment, container, false);
        setupControls(fragmentView);
        return fragmentView;
    }

    public void onResume() {
        super.onResume();
        if (ActivityHelper.fragmentIsActive(this)) {
            this.localDb = SteamCommunityApplication.GetInstance().getLocalDb();
            Bundle args = getArguments();
            if (args != null) {
                this.chatPartnerSteamId = args.getString("chatPartnerSteamIdKey") != null ? args.getString("chatPartnerSteamIdKey") : this.chatPartnerSteamId;
                this.chatPartnerAvatarUrl = args.getString("chatPartnerAvatarUrl") != null ? args.getString("chatPartnerAvatarUrl") : this.chatPartnerAvatarUrl;
                this.chatPartnerPersonaName = args.getString("chatPartnerPersonaNameKey") != null ? args.getString("chatPartnerPersonaNameKey") : this.chatPartnerPersonaName;
            }
            if (this.chatPartnerPersonaName == null || this.chatPartnerAvatarUrl == null) {
                loadChatParticipantInfo(this.chatPartnerSteamId);
            }
            this.toBeSentMessages.clear();
            showCompleteListOfMessagesAndToBeSentMessages();
            loadChats();
            this.umqCommunicator = UmqCommunicator.getInstance();
            this.umqCommunicator.setChatStateListener(new ChatStateListener() {
                public boolean listenerWillHandleAllVisualChatNotifications() {
                    return false;
                }

                public boolean listenerWillHandleVisualChatNotificationForSteamId(String steamId) {
                    if (ActivityHelper.fragmentIsActive(ChatFragment.this) && steamId != null && steamId.equals(ChatFragment.this.chatPartnerSteamId)) {
                        return true;
                    }
                    return false;
                }

                public void newMessagesSaved(List<UmqMessage> umqMessages) {
                    if (ActivityHelper.fragmentIsActive(ChatFragment.this)) {
                        ChatFragment.this.appendToSuccessFullySentAndReceivedList(umqMessages);
                    }
                }

                public void messageSent(UmqMessage message) {
                    if (ActivityHelper.fragmentIsActive(ChatFragment.this)) {
                        ChatFragment.this.toBeSentMessages.remove(message);
                        ArrayList<UmqMessage> list = new ArrayList();
                        list.add(message);
                        ChatFragment.this.appendToSuccessFullySentAndReceivedList(list);
                    }
                }

                public void messageSendFailed(UmqMessage message) {
                    message.hadSendError = true;
                    ChatViewAdapter chatViewAdapter = ChatFragment.this.getChatViewAdapter();
                    if (chatViewAdapter != null) {
                        chatViewAdapter.notifyDataSetChanged();
                    }
                }

                public void isTypingMessageReceived(List<UmqMessage> isTypingNotifications) {
                    boolean chatPartnerIsTyping = false;
                    for (UmqMessage notification : isTypingNotifications) {
                        if (notification.chatPartnerSteamId.equals(ChatFragment.this.chatPartnerSteamId)) {
                            chatPartnerIsTyping = true;
                        }
                    }
                    if (chatPartnerIsTyping && ChatFragment.this.chatViewAdapter != null) {
                        ChatFragment.this.chatViewAdapter.showIsTyping();
                        new Handler().postDelayed(new Runnable() {
                            public void run() {
                                ChatFragment.this.chatViewAdapter.hideIsTyping();
                            }
                        }, 4000);
                    }
                }

                public void personaStateChanged(List<String> list) {
                }

                public void relationshipStateChanged(List<String> list) {
                }
            });
            this.umqCommunicator.updateChatMessages(this.chatPartnerSteamId);
            this.umqCommunicator.setChatLoggedInStatusChangedListener(new LoggedInStatusChangedListener() {
                public void loggedOff() {
                    if (ActivityHelper.fragmentIsActive(ChatFragment.this) && ChatFragment.this.chatIsOfflineNotice != null) {
                        ChatFragment.this.chatIsOfflineNotice.setVisibility(0);
                    }
                }

                public void loggedIn() {
                    if (ActivityHelper.fragmentIsActive(ChatFragment.this) && ChatFragment.this.chatIsOfflineNotice != null) {
                        ChatFragment.this.chatIsOfflineNotice.setVisibility(8);
                    }
                }
            });
            this.chatIsOfflineNotice.setVisibility(this.umqCommunicator.isLoggedInToChat() ? 8 : 0);
            if (!this.passwordWarningShown) {
                this.toast = Toast.makeText(getActivity(), R.string.Chat_Headline_Message, 1);
                this.toast.setGravity(49, 0, 110);
                this.toast.show();
                this.passwordWarningShown = true;
            }
            setupDeleteButton();
            setTitle();
        }
    }

    public void onPause() {
        if (this.toast != null) {
            this.toast.cancel();
        }
        NotificationSender.getInstance().clearRecentNotificationsTrackingFor(this.chatPartnerPersonaName);
        super.onPause();
    }

    private void sendRequest(RequestBuilder rb) {
        SteamCommunityApplication.GetInstance().sendRequest(rb);
    }

    private void setupControls(View view) {
        this.chatIsOfflineNotice = view.findViewById(R.id.chat_is_offline_notice);
        this.chatViewContents = (ListView) view.findViewById(R.id.chat_view_contents);
        this.chatViewContents.setTranscriptMode(2);
        this.chatViewContents.setStackFromBottom(true);
        this.chatViewMessageTextBox = (EditText) view.findViewById(R.id.chat_view_say_text);
        ((Button) view.findViewById(R.id.chat_view_say_button)).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ChatFragment.this.sendMessage();
            }
        });
        this.chatViewMessageTextBox.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable s) {
                ChatFragment.this.sendTypingNotification();
            }

            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }
        });
        this.chatViewMessageTextBox.post(new Runnable() {
            public void run() {
                ChatFragment.this.chatViewMessageTextBox.requestFocusFromTouch();
            }
        });
    }

    public void resendMessage(UmqMessage message) {
        if (message != null) {
            message.hadSendError = false;
            ChatViewAdapter chatViewAdapter = getChatViewAdapter();
            if (chatViewAdapter != null) {
                chatViewAdapter.notifyDataSetChanged();
            }
            this.umqCommunicator.sendMessage(message, this.chatPartnerSteamId);
        }
    }

    private void sendMessage() {
        UmqMessage message = getTypedMessage();
        clearMessageBox();
        if (message != null && !message.isEmpty()) {
            this.toBeSentMessages.add(message);
            showCompleteListOfMessagesAndToBeSentMessages();
            this.umqCommunicator.sendMessage(message, this.chatPartnerSteamId);
        }
    }

    private ChatViewAdapter getChatViewAdapter() {
        FragmentActivity act = getActivity();
        if (this.chatViewAdapter == null) {
            this.chatViewAdapter = new ChatViewAdapter(this.messageListForDisplay, act.getLayoutInflater(), act, this, this.chatPartnerAvatarUrl);
        }
        this.chatViewAdapter.attach(this.chatViewContents);
        return this.chatViewAdapter;
    }

    private synchronized void appendToSuccessFullySentAndReceivedList(List<UmqMessage> umqMessages) {
        if (umqMessages != null) {
            if (umqMessages.size() != 0) {
                for (UmqMessage umqMessage : umqMessages) {
                    if (umqMessage.chatPartnerSteamId != null && umqMessage.chatPartnerSteamId.equals(this.chatPartnerSteamId)) {
                        this.successfullySentAndReceivedMessages.add(umqMessage);
                    }
                }
                showCompleteListOfMessagesAndToBeSentMessages();
            }
        }
    }

    private void loadChats() {
        if (ActivityHelper.fragmentOrActivityIsActive(getActivity())) {
            final Handler h = new Handler();
            SteamCommunityApplication.GetInstance().runOnBackgroundThread(new Runnable() {
                public void run() {
                    final List<UmqMessage> messages = ChatFragment.this.localDb.getMessages(LoggedInUserAccountInfo.getLoginSteamID(), ChatFragment.this.chatPartnerSteamId);
                    h.post(new Runnable() {
                        public void run() {
                            ChatFragment.this.addMessagesReloadedFromDb(messages);
                        }
                    });
                }
            });
        }
    }

    private synchronized void addMessagesReloadedFromDb(List<UmqMessage> messagesFromDb) {
        this.successfullySentAndReceivedMessages.clear();
        this.successfullySentAndReceivedMessages.addAll(messagesFromDb);
        showCompleteListOfMessagesAndToBeSentMessages();
    }

    private synchronized void showCompleteListOfMessagesAndToBeSentMessages() {
        HashSet<UmqMessage> hashSet = new HashSet();
        if (ActivityHelper.fragmentIsActive(this)) {
            hashSet.addAll(this.successfullySentAndReceivedMessages);
            hashSet.addAll(this.toBeSentMessages);
            this.messageListForDisplay.clear();
            this.messageListForDisplay.addAll(hashSet);
            getChatViewAdapter().notifyDataSetChanged();
            markMessagesRead();
        }
    }

    private void markMessagesRead() {
        SteamCommunityApplication.GetInstance().runOnBackgroundThread(new Runnable() {
            public void run() {
                ChatFragment.this.localDb.markMessagesRead(LoggedInUserAccountInfo.getLoginSteamID(), ChatFragment.this.chatPartnerSteamId);
            }
        });
        RequestBuilder requestBuilder = Endpoints.getMarkMessagesReadRequestBuilder(this.chatPartnerSteamId);
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
            }

            public void onError(RequestErrorInfo errorInfo) {
            }
        });
        sendRequest(requestBuilder);
    }

    private void sendTypingNotification() {
        if (this.umqCommunicator != null) {
            this.umqCommunicator.sendTypingNotification(this.chatPartnerSteamId);
        }
    }

    private void clearMessageBox() {
        this.chatViewMessageTextBox.setText("");
    }

    private void clearChatHistory() {
        this.localDb.deleteMessages(LoggedInUserAccountInfo.getLoginSteamID(), this.chatPartnerSteamId);
        if (ActivityHelper.fragmentIsActive(this)) {
            this.messageListForDisplay.clear();
            this.successfullySentAndReceivedMessages.clear();
            getChatViewAdapter().notifyDataSetChanged();
        }
    }

    private UmqMessage getTypedMessage() {
        UmqMessage message = new UmqMessage();
        message.text = this.chatViewMessageTextBox.getText().toString().trim();
        message.chatPartnerSteamId = this.chatPartnerSteamId;
        return message;
    }

    private void setTitle(CharSequence seq) {
        if (seq != null && ActivityHelper.fragmentIsActive(this)) {
            getActivity().setTitle(seq);
        }
    }

    private void loadChatParticipantInfo(final String steamId) {
        if (steamId != null) {
            RequestBuilder requestBuilder = Endpoints.getUserSummaryRequestBuilder(steamId);
            requestBuilder.setResponseListener(new ResponseListener() {
                public void onSuccess(JSONObject response) {
                    List<Persona> chatParticipants = PersonaTranslator.translateList(response);
                    if (chatParticipants != null && chatParticipants.size() != 0) {
                        Persona chatParticipant = (Persona) chatParticipants.get(0);
                        if (!steamId.equalsIgnoreCase(LoggedInUserAccountInfo.getLoginSteamID())) {
                            ChatFragment.this.chatPartnerAvatarUrl = chatParticipant.mediumAvatarUrl;
                            if (ActivityHelper.fragmentIsActive(ChatFragment.this)) {
                                ChatFragment.this.getChatViewAdapter().setChatPartnerAvatarUrl(chatParticipant.mediumAvatarUrl);
                            }
                            ChatFragment.this.chatPartnerPersonaName = chatParticipant.personaName;
                        }
                        ChatFragment.this.setTitle();
                    }
                }

                public void onError(RequestErrorInfo errorInfo) {
                }
            });
            sendRequest(requestBuilder);
        }
    }

    private void setTitle() {
        if (((MainActivity) getActivity()) != null) {
            setTitle(this.chatPartnerPersonaName);
        }
    }

    private void setupDeleteButton() {
        MainActivity mainActivity = (MainActivity) getActivity();
        SteamMenuItem extraMenuItem = new SteamMenuItem();
        extraMenuItem.iconResourceId = R.drawable.ic_action_delete;
        extraMenuItem.onClickListener = this.clearChatHistoryListener;
        mainActivity.setExtraToolbarItem(extraMenuItem);
    }
}
