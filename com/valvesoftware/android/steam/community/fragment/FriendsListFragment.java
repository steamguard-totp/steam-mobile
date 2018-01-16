package com.valvesoftware.android.steam.community.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.ListFragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.valvesoftware.android.steam.community.ChatStateListener;
import com.valvesoftware.android.steam.community.LocalDb;
import com.valvesoftware.android.steam.community.LoggedInStatusChangedListener;
import com.valvesoftware.android.steam.community.LoggedInUserAccountInfo;
import com.valvesoftware.android.steam.community.NotificationSender;
import com.valvesoftware.android.steam.community.PersonaRepository;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.RepositoryCallback;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.UmqCommunicator;
import com.valvesoftware.android.steam.community.activity.ActivityHelper;
import com.valvesoftware.android.steam.community.activity.MainActivity;
import com.valvesoftware.android.steam.community.jsontranslators.PersonaTranslator;
import com.valvesoftware.android.steam.community.model.Persona;
import com.valvesoftware.android.steam.community.model.PersonaRelationship;
import com.valvesoftware.android.steam.community.model.UmqMessage;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class FriendsListFragment extends ListFragment {
    private FriendsListAdapter adapter;
    private View chatIsOfflineNotice;
    private LocalDb localDb;
    private MainActivity mainActivity;
    private String searchString;
    private final Map<String, Persona> steamIdToFriendsMap = new HashMap();
    private final Handler uiThreadHandler = new Handler();
    private UmqCommunicator umqCommunicator;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View v = inflater.inflate(R.layout.friends_groups_list_fragment, container, false);
        this.chatIsOfflineNotice = v.findViewById(R.id.chat_is_offline_notice);
        return v;
    }

    public void onResume() {
        super.onResume();
        this.mainActivity = getBaseActivity();
        ActivityHelper.hideKeyboard(getActivity());
        setupEventListeners();
        setTitleText();
        this.localDb = SteamCommunityApplication.GetInstance().getLocalDb();
        this.umqCommunicator = UmqCommunicator.getInstance();
        this.umqCommunicator.setChatStateListener(new ChatStateListener() {
            public boolean listenerWillHandleAllVisualChatNotifications() {
                if (ActivityHelper.fragmentIsActive(FriendsListFragment.this)) {
                    return true;
                }
                return false;
            }

            public boolean listenerWillHandleVisualChatNotificationForSteamId(String steamId) {
                return listenerWillHandleAllVisualChatNotifications();
            }

            public void newMessagesSaved(List<UmqMessage> umqMessages) {
                if (ActivityHelper.fragmentIsActive(FriendsListFragment.this) && umqMessages != null && umqMessages.size() != 0) {
                    FriendsListFragment.this.updateUnreadMessageCountsForEachFriend(FriendsListFragment.this.steamIdToFriendsMap);
                    FriendsListFragment.this.updateFriendsWithLastMessageTimes();
                }
            }

            public void personaStateChanged(List<String> steamIds) {
                if (ActivityHelper.fragmentIsActive(FriendsListFragment.this)) {
                    FriendsListFragment.this.getDetailedFriendInfo(steamIds);
                }
            }

            public void relationshipStateChanged(List<String> list) {
                if (ActivityHelper.fragmentIsActive(FriendsListFragment.this)) {
                    FriendsListFragment.this.getFriendsList();
                }
            }

            public void messageSent(UmqMessage message) {
            }

            public void messageSendFailed(UmqMessage message) {
            }

            public void isTypingMessageReceived(List<UmqMessage> list) {
            }
        });
        this.umqCommunicator.setChatLoggedInStatusChangedListener(new LoggedInStatusChangedListener() {
            public void loggedOff() {
                if (ActivityHelper.fragmentIsActive(FriendsListFragment.this) && FriendsListFragment.this.chatIsOfflineNotice != null) {
                    FriendsListFragment.this.chatIsOfflineNotice.setVisibility(0);
                }
            }

            public void loggedIn() {
                if (ActivityHelper.fragmentIsActive(FriendsListFragment.this) && FriendsListFragment.this.chatIsOfflineNotice != null) {
                    FriendsListFragment.this.chatIsOfflineNotice.setVisibility(8);
                }
            }
        });
        showProgressDialog();
        loadCachedFriendsList();
        getFriendsList();
        this.umqCommunicator.updateOfflineChats();
        if (LoggedInUserAccountInfo.dontLoginToChat()) {
            this.chatIsOfflineNotice.setVisibility(0);
        } else {
            this.chatIsOfflineNotice.setVisibility(8);
        }
        NotificationSender.getInstance().clearRecentNotificationsTracking();
    }

    public void onStop() {
        super.onStop();
    }

    protected MainActivity getBaseActivity() {
        Activity parentActivity = getActivity();
        if (parentActivity instanceof MainActivity) {
            return (MainActivity) parentActivity;
        }
        return null;
    }

    private void notifyItemContentsChanged() {
        this.uiThreadHandler.post(new Runnable() {
            public void run() {
                if (ActivityHelper.fragmentIsActive(FriendsListFragment.this) && FriendsListFragment.this.adapter != null) {
                    FriendsListFragment.this.adapter.notifyDataSetChanged();
                }
            }
        });
    }

    private void showProgressDialog() {
        if (this.mainActivity != null) {
            this.mainActivity.showProgressIndicator();
        }
    }

    private void hideProgressDialog() {
        if (this.mainActivity != null) {
            this.mainActivity.hideProgressIndicator();
        }
    }

    private void setTitleText() {
        if (this.mainActivity != null && ActivityHelper.fragmentIsActive(this)) {
            this.mainActivity.setTitle(R.string.Friends);
        }
    }

    private void setSearchText(String searchString) {
        this.searchString = searchString;
        if (this.adapter != null) {
            this.adapter.setSearchString(searchString);
        }
    }

    private void display(Collection<Persona> fullList, List<Persona> additions, List<Persona> removals) {
        if (fullList != null) {
            FragmentActivity activity = getActivity();
            if (!ActivityHelper.fragmentIsActive(this)) {
                return;
            }
            if (this.adapter == null) {
                this.adapter = new FriendsListAdapter(fullList, activity);
                this.adapter.setSearchString(this.searchString);
                setListAdapter(this.adapter);
                return;
            }
            if (additions != null && additions.size() > 0) {
                this.adapter.add((List) additions);
            }
            if (removals != null && removals.size() > 0) {
                this.adapter.remove(removals);
            }
            notifyItemContentsChanged();
        }
    }

    private void setupEventListeners() {
        if (this.mainActivity != null) {
            this.mainActivity.setRefreshButtonClickListener(new OnClickListener() {
                public void onClick(View view) {
                    FriendsListFragment.this.getFriendsList();
                }
            });
            this.mainActivity.setSearchTextListener(new TextWatcher() {
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    FriendsListFragment.this.setSearchText(charSequence.toString());
                }

                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void afterTextChanged(Editable editable) {
                }
            });
        }
    }

    private void getFriendsList() {
        showProgressDialog();
        RequestBuilder requestBuilder = Endpoints.getFriendListRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID(), "friend");
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                List<Persona> friendsList = PersonaTranslator.translateList(response);
                Set<String> upToDateSetOfFriendSteamIds = new HashSet();
                if (friendsList.size() == 0) {
                    FriendsListFragment.this.hideProgressDialog();
                    return;
                }
                List<Persona> additionsList = new ArrayList();
                Iterator<Persona> friendsIterator = friendsList.iterator();
                while (friendsIterator.hasNext()) {
                    Persona friend = (Persona) friendsIterator.next();
                    if (friend.relationship == PersonaRelationship.blocked || friend.relationship == PersonaRelationship.ignored || friend.relationship == PersonaRelationship.requestinitiator) {
                        friendsIterator.remove();
                    } else {
                        if (FriendsListFragment.this.steamIdToFriendsMap.containsKey(friend.steamId)) {
                            Persona existingFriendEntry = (Persona) FriendsListFragment.this.steamIdToFriendsMap.get(friend.steamId);
                            existingFriendEntry.relationship = friend.relationship;
                            existingFriendEntry.determineDisplayCategory();
                        } else {
                            FriendsListFragment.this.steamIdToFriendsMap.put(friend.steamId, friend);
                            additionsList.add(friend);
                        }
                        upToDateSetOfFriendSteamIds.add(friend.steamId);
                    }
                }
                List<Persona> removalList = new ArrayList();
                Iterator<Entry<String, Persona>> it = FriendsListFragment.this.steamIdToFriendsMap.entrySet().iterator();
                while (it.hasNext()) {
                    Entry<String, Persona> entry = (Entry) it.next();
                    if (!upToDateSetOfFriendSteamIds.contains(entry.getKey())) {
                        removalList.add(entry.getValue());
                        it.remove();
                    }
                }
                FriendsListFragment.this.display(friendsList, additionsList, removalList);
                FriendsListFragment.this.updateUnreadMessageCountsForEachFriend(FriendsListFragment.this.steamIdToFriendsMap);
                FriendsListFragment.this.updateFriendsWithLastMessageTimes();
                FriendsListFragment.this.getDetailedFriendInfo(FriendsListFragment.this.steamIdToFriendsMap.keySet());
            }

            public void onError(RequestErrorInfo errorInfo) {
                FriendsListFragment.this.hideProgressDialog();
            }
        });
        sendRequest(requestBuilder);
    }

    private void getDetailedFriendInfo(Collection<String> steamIds) {
        showProgressDialog();
        PersonaRepository.getDetailedPersonaInfo((Collection) steamIds, new RepositoryCallback<List<Persona>>() {
            public void dataAvailable(List<Persona> friendDetails) {
                for (Persona detail : friendDetails) {
                    Persona friend = (Persona) FriendsListFragment.this.steamIdToFriendsMap.get(detail.steamId);
                    if (friend != null) {
                        friend.overwriteOrMergeWith(detail);
                    }
                }
            }

            public void end() {
                FriendsListFragment.this.cacheFriends();
                FriendsListFragment.this.hideProgressDialog();
                FriendsListFragment.this.notifyItemContentsChanged();
            }
        });
    }

    private void cacheFriends() {
        if (!(this.mainActivity == null || this.mainActivity.steamData == null)) {
            this.mainActivity.steamData.saveFriends(this.steamIdToFriendsMap);
        }
        SteamCommunityApplication.GetInstance().runOnBackgroundThread(new Runnable() {
            public void run() {
                try {
                    LocalDb localDb = SteamCommunityApplication.GetInstance().getLocalDb();
                    localDb.clearPersonaInfo();
                    localDb.replaceStoredFriendsList(FriendsListFragment.this.steamIdToFriendsMap.values(), LoggedInUserAccountInfo.getLoginSteamID());
                } catch (Exception e) {
                }
            }
        });
    }

    private void loadCachedFriendsList() {
        if (!((this.steamIdToFriendsMap != null && this.steamIdToFriendsMap.size() != 0) || this.mainActivity == null || this.mainActivity.steamData == null)) {
            this.steamIdToFriendsMap.putAll(this.mainActivity.steamData.getSteamIdToFriendsMap());
        }
        if (this.steamIdToFriendsMap != null) {
            display(this.steamIdToFriendsMap.values(), null, null);
            getDetailedFriendInfo(this.steamIdToFriendsMap.keySet());
        }
    }

    private void sendRequest(RequestBuilder requestBuilder) {
        SteamCommunityApplication.GetInstance().sendRequest(requestBuilder);
    }

    private void updateFriendsWithLastMessageTimes() {
        SteamCommunityApplication.GetInstance().runOnBackgroundThread(new Runnable() {
            public void run() {
                final HashMap<String, Long> latestMessages = FriendsListFragment.this.localDb.getLatestMessagesFromAllUsers(LoggedInUserAccountInfo.getLoginSteamID());
                FriendsListFragment.this.uiThreadHandler.post(new Runnable() {
                    public void run() {
                        if (latestMessages != null && FriendsListFragment.this.steamIdToFriendsMap != null && FriendsListFragment.this.steamIdToFriendsMap.size() != 0) {
                            for (Persona p : FriendsListFragment.this.steamIdToFriendsMap.values()) {
                                if (latestMessages.containsKey(p.steamId)) {
                                    p.setLastMessageTime(((Long) latestMessages.get(p.steamId)).longValue());
                                } else {
                                    p.setLastMessageTime(0);
                                }
                                p.determineDisplayCategory();
                            }
                            FriendsListFragment.this.notifyItemContentsChanged();
                        }
                    }
                });
            }
        });
    }

    private void updateUnreadMessageCountsForEachFriend(final Map<String, Persona> friends) {
        if (friends != null && friends.size() != 0) {
            SteamCommunityApplication.GetInstance().runOnBackgroundThread(new Runnable() {
                public void run() {
                    final List<UmqMessage> unreadMessages = FriendsListFragment.this.localDb.getAllUnreadMessages(LoggedInUserAccountInfo.getLoginSteamID());
                    FriendsListFragment.this.uiThreadHandler.post(new Runnable() {
                        public void run() {
                            for (Persona f : friends.values()) {
                                f.clearUnreadMessageCount();
                            }
                            if (unreadMessages != null) {
                                for (UmqMessage message : unreadMessages) {
                                    Persona friend = (Persona) friends.get(message.chatPartnerSteamId);
                                    if (friend != null) {
                                        friend.incrementUnreadMessageCount();
                                    }
                                }
                            }
                            FriendsListFragment.this.notifyItemContentsChanged();
                        }
                    });
                }
            });
        }
    }
}
