package com.valvesoftware.android.steam.community.fragment;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.NetworkImageView;
import com.valvesoftware.android.steam.community.AndroidUtils;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamAppIntents;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.model.Persona;
import com.valvesoftware.android.steam.community.model.PersonaRelationship;
import com.valvesoftware.android.steam.community.model.PersonaState;
import com.valvesoftware.android.steam.community.model.PersonaStateCategoryInList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class FriendsListAdapter extends BaseAdapter implements FilterableAdapter<Persona> {
    private static Comparator<Persona> personaComparator = new Comparator<Persona>() {
        public int compare(Persona o1, Persona o2) {
            if (o1.getDisplayCategory() != o2.getDisplayCategory()) {
                if (o1.getDisplayCategory().ordinal() < o2.getDisplayCategory().ordinal()) {
                    return -1;
                }
                return 1;
            } else if (o1.hasSentUnreadMessage() != o2.hasSentUnreadMessage()) {
                if (o1.hasSentUnreadMessage()) {
                    return -1;
                }
                return 1;
            } else if (o1.getDisplayCategory() != PersonaStateCategoryInList.CHATS || o1.getLastMessageTime() <= 0 || o2.getLastMessageTime() <= 0) {
                return o1.personaName.compareToIgnoreCase(o2.personaName);
            } else {
                if (o1.getLastMessageTime() <= o2.getLastMessageTime()) {
                    return 1;
                }
                return -1;
            }
        }
    };
    private final Context context;
    private OnClickListener friendChatClickListener;
    private GenericFilter friendInfoFilter;
    private OnClickListener friendProfileClickListener;
    private List<Persona> friendsList;
    private final boolean groupAndLabelByStatus;
    private ImageLoader imageLoader;
    private LayoutInflater layoutInflater;
    private final Persona searchItemInfo;
    private String searchString;

    private static class FriendListViewHolder {
        public String avatarUrl;
        public NetworkImageView avatarView;
        public ImageView avatarViewFrame;
        public ImageView chatBtn;
        public ImageView chevronView;
        public TextView labelView;
        public View mobileIcon;
        public View nameAndStatusContainer;
        public TextView nameView;
        public String personaName;
        public TextView statusView;
        public String steamId;
        public TextView unreadMessageTextView;
        public View vAreaAroundChatBtn;

        private FriendListViewHolder() {
        }
    }

    public FriendsListAdapter(Collection<Persona> friends, FragmentActivity activity) {
        this(friends, activity, true);
    }

    public FriendsListAdapter(Collection<Persona> friends, final FragmentActivity activity, boolean groupAndLabelByStatus) {
        this.friendsList = new ArrayList(friends);
        Collections.sort(this.friendsList, personaComparator);
        this.context = activity;
        this.imageLoader = SteamCommunityApplication.GetInstance().imageLoader;
        this.layoutInflater = (LayoutInflater) activity.getApplicationContext().getSystemService("layout_inflater");
        this.groupAndLabelByStatus = groupAndLabelByStatus;
        this.friendProfileClickListener = new OnClickListener() {
            public void onClick(View v) {
                String tag = v.getTag();
                String steamId = null;
                if (tag instanceof String) {
                    steamId = tag;
                }
                if (tag instanceof FriendListViewHolder) {
                    steamId = ((FriendListViewHolder) tag).steamId;
                }
                if (steamId != null) {
                    if (steamId.equals("0")) {
                        Intent intent = SteamAppIntents.searchFriendIntent(activity, FriendsListAdapter.this.getSearchString());
                        FriendsListAdapter.this.setSearchString("");
                        activity.startActivity(intent);
                        return;
                    }
                    activity.startActivity(SteamAppIntents.visitProfileIntent(activity, steamId));
                }
            }
        };
        this.friendChatClickListener = new OnClickListener() {
            public void onClick(View v) {
                FriendListViewHolder holder = (FriendListViewHolder) v.getTag();
                if (holder != null) {
                    activity.startActivity(SteamAppIntents.chatIntent(activity, holder.steamId, holder.personaName, holder.avatarUrl));
                }
            }
        };
        this.searchItemInfo = createSearchItem();
    }

    public void notifyDataSetChanged() {
        Collections.sort(this.friendsList, personaComparator);
        super.notifyDataSetChanged();
    }

    public void add(Persona persona) {
        if (persona != null) {
            if (this.friendsList == null) {
                this.friendsList = new ArrayList();
            }
            this.friendsList.add(persona);
        }
    }

    public void add(List<Persona> additions) {
        if (additions != null && additions.size() != 0) {
            if (this.friendsList == null) {
                this.friendsList = new ArrayList();
            }
            this.friendsList.addAll(additions);
        }
    }

    public void remove(List<Persona> removals) {
        if (removals != null && removals.size() != 0 && this.friendsList != null && this.friendsList.size() != 0) {
            HashSet<String> removalIds = new HashSet();
            for (Persona p : removals) {
                removalIds.add(p.steamId);
            }
            Iterator<Persona> friends = this.friendsList.iterator();
            while (friends.hasNext()) {
                if (removalIds.contains(((Persona) friends.next()).steamId)) {
                    friends.remove();
                }
            }
            notifyDataSetChanged();
        }
    }

    public String getSearchString() {
        return this.searchString;
    }

    public void setSearchString(String newSearchString) {
        if (newSearchString != null && newSearchString.length() > 0 && this.friendInfoFilter == null) {
            this.friendInfoFilter = new GenericFilter(this.friendsList, this, this.searchItemInfo);
        }
        if (this.friendInfoFilter != null) {
            if (newSearchString == null || newSearchString.length() <= 0) {
                notifyDataSetChanged();
                this.friendInfoFilter.removeFromOriginal(this.searchItemInfo);
            } else {
                this.friendInfoFilter.removeFromOriginal(this.searchItemInfo);
                this.friendInfoFilter.addToOriginal(this.searchItemInfo);
            }
            this.searchString = newSearchString;
            this.friendInfoFilter.filter(this.searchString);
        }
    }

    public int getCount() {
        if (this.friendsList == null) {
            return 0;
        }
        return this.friendsList.size();
    }

    public Persona getItem(int position) {
        if (position >= getCount()) {
            return null;
        }
        return (Persona) this.friendsList.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View v, ViewGroup parent) {
        Persona friendInfo = null;
        Persona friendInfoPrev = null;
        if (position < getCount()) {
            friendInfo = getItem(position);
            if (position > 0) {
                friendInfoPrev = getItem(position - 1);
            } else {
                friendInfoPrev = null;
            }
        }
        if (friendInfo == null) {
            return v;
        }
        FriendListViewHolder holder;
        if (v == null) {
            v = this.layoutInflater.inflate(R.layout.friend_list_item, null);
            holder = new FriendListViewHolder();
            holder.labelView = (TextView) v.findViewById(R.id.label);
            holder.nameView = (TextView) v.findViewById(R.id.name);
            holder.statusView = (TextView) v.findViewById(R.id.status);
            holder.avatarView = (NetworkImageView) v.findViewById(R.id.avatar);
            holder.avatarViewFrame = (ImageView) v.findViewById(R.id.avatar_frame);
            holder.chevronView = (ImageView) v.findViewById(R.id.imageChevron);
            holder.chatBtn = (ImageView) v.findViewById(R.id.chatButton);
            holder.unreadMessageTextView = (TextView) v.findViewById(R.id.unreadMessageCount);
            holder.vAreaAroundChatBtn = v.findViewById(R.id.friendItemAreaAroundChatButton);
            holder.mobileIcon = v.findViewById(R.id.mobileIcon);
            holder.nameAndStatusContainer = v.findViewById(R.id.nameAndStatusContainer);
            v.setTag(holder);
        } else {
            holder = (FriendListViewHolder) v.getTag();
        }
        holder.steamId = friendInfo.steamId;
        holder.personaName = friendInfo.personaName;
        holder.avatarUrl = friendInfo.mediumAvatarUrl;
        holder.vAreaAroundChatBtn.setOnClickListener(null);
        holder.chatBtn.setOnClickListener(null);
        v.setClickable(true);
        if (friendInfo.isFriend()) {
            v.setOnClickListener(this.friendChatClickListener);
        } else if (friendInfo == this.searchItemInfo) {
            holder.vAreaAroundChatBtn.setOnClickListener(this.friendProfileClickListener);
            holder.nameAndStatusContainer.setOnClickListener(this.friendProfileClickListener);
            holder.nameAndStatusContainer.setTag(holder.steamId);
            v.setOnClickListener(this.friendProfileClickListener);
        } else {
            v.setOnClickListener(this.friendProfileClickListener);
        }
        holder.avatarView.setTag(holder.steamId);
        holder.avatarView.setOnClickListener(this.friendProfileClickListener);
        if (this.groupAndLabelByStatus && (position == 0 || friendInfoPrev == null || friendInfo.getDisplayCategory() != friendInfoPrev.getDisplayCategory())) {
            holder.labelView.setText(getContext().getString(friendInfo.getDisplayCategory().GetDisplayString()).toUpperCase(Locale.getDefault()));
            holder.labelView.setVisibility(0);
        } else {
            holder.labelView.setVisibility(8);
        }
        AndroidUtils.setTextViewText(holder.nameView, friendInfo.personaName);
        determineChatElementsState(friendInfo, holder);
        determineStatusAndAvatar(friendInfo, holder, getContext());
        return v;
    }

    public Filter getFilter() {
        return this.friendInfoFilter;
    }

    public void clear() {
        if (this.friendsList != null) {
            this.friendsList.clear();
        }
    }

    private Context getContext() {
        return this.context;
    }

    private Persona createSearchItem() {
        Persona info = new Persona();
        info.steamId = "0";
        info.personaState = PersonaState.OFFLINE;
        info.relationship = PersonaRelationship.none;
        String string = SteamCommunityApplication.GetInstance().getResources().getString(R.string.Friend_Search_All);
        info.realName = string;
        info.personaName = string;
        info.setDisplayCategoryForSearch();
        info.isOnMobile = false;
        info.isOnTenFoot = false;
        info.isOnWeb = false;
        return info;
    }

    private void determineStatusAndAvatar(Persona friendInfo, FriendListViewHolder holder, Context appContext) {
        holder.mobileIcon.setVisibility(8);
        if (friendInfo.isPlaying()) {
            String str;
            holder.avatarViewFrame.setImageResource(R.drawable.avatar_frame_ingame);
            holder.nameView.setTextColor(appContext.getResources().getColor(R.color.ingame));
            holder.statusView.setTextColor(appContext.getResources().getColor(R.color.ingame));
            String inGameStatus = appContext.getResources().getString(R.string.Playing);
            TextView textView = holder.statusView;
            StringBuilder append = new StringBuilder().append(inGameStatus).append(" ");
            if (friendInfo.currentGameString != null) {
                str = friendInfo.currentGameString;
            } else {
                str = "";
            }
            textView.setText(append.append(str).toString());
        } else if (friendInfo.isOnline()) {
            holder.avatarViewFrame.setImageResource(R.drawable.avatar_frame_online);
            holder.nameView.setTextColor(appContext.getResources().getColor(R.color.online));
            holder.statusView.setTextColor(appContext.getResources().getColor(R.color.online));
            holder.statusView.setText(friendInfo.personaState.GetDisplayString());
            if (friendInfo.isOnMobile) {
                holder.mobileIcon.setVisibility(0);
            }
        } else {
            holder.avatarViewFrame.setImageResource(R.drawable.avatar_frame_offline);
            holder.nameView.setTextColor(appContext.getResources().getColor(R.color.offline));
            holder.statusView.setTextColor(appContext.getResources().getColor(R.color.offline));
            holder.statusView.setText(getLastOnlineString(friendInfo.lastOnlineTime));
        }
        if (friendInfo == this.searchItemInfo) {
            holder.avatarView.setVisibility(4);
            holder.avatarViewFrame.setImageResource(R.drawable.icon_search);
            holder.statusView.setText(this.searchString);
            return;
        }
        holder.avatarView.setVisibility(0);
        holder.avatarView.setImageUrl(friendInfo.mediumAvatarUrl, this.imageLoader);
        holder.avatarUrl = friendInfo.mediumAvatarUrl;
        holder.avatarViewFrame.setVisibility(0);
    }

    private void determineChatElementsState(Persona friendInfo, FriendListViewHolder holder) {
        if (friendInfo.isFriend()) {
            turnOnChatElements(friendInfo, holder);
        } else {
            turnOffChatElements(friendInfo, holder);
        }
    }

    private void turnOffChatElements(Persona friendInfo, FriendListViewHolder holder) {
        holder.vAreaAroundChatBtn.setOnClickListener(null);
        holder.chatBtn.setOnClickListener(null);
        holder.vAreaAroundChatBtn.setVisibility(8);
        holder.chatBtn.setVisibility(8);
        holder.unreadMessageTextView.setVisibility(8);
        if (friendInfo == this.searchItemInfo) {
            holder.chevronView.setVisibility(8);
        } else {
            holder.chevronView.setVisibility(0);
        }
    }

    private void turnOnChatElements(Persona friendInfo, FriendListViewHolder holder) {
        holder.chevronView.setVisibility(8);
        if (friendInfo.hasSentUnreadMessage()) {
            holder.chatBtn.setBackgroundResource(R.drawable.ic_unread_message_chat);
            holder.unreadMessageTextView.setText(String.valueOf(friendInfo.getUnreadMessageCount()));
            holder.unreadMessageTextView.setVisibility(0);
            holder.unreadMessageTextView.setTextColor(getContext().getResources().getColor(R.color.primary_background));
        } else if (friendInfo.isOnline()) {
            holder.unreadMessageTextView.setVisibility(8);
            holder.chatBtn.setBackgroundResource(R.drawable.ic_chat_back_forth);
        } else {
            holder.unreadMessageTextView.setVisibility(8);
            holder.chatBtn.setBackgroundResource(R.drawable.chat_button_available);
        }
        holder.chatBtn.setVisibility(0);
        holder.vAreaAroundChatBtn.setVisibility(0);
        holder.vAreaAroundChatBtn.setTag(holder);
        holder.chatBtn.setTag(holder);
        holder.vAreaAroundChatBtn.setOnClickListener(this.friendChatClickListener);
        holder.chatBtn.setOnClickListener(this.friendChatClickListener);
    }

    private String getLastOnlineString(long lastOnlineTime) {
        String lastOnlineString = "";
        if (lastOnlineTime <= 0) {
            return lastOnlineString;
        }
        long currentServerTime = System.currentTimeMillis() / 1000;
        if (!(currentServerTime == 0 || lastOnlineTime == 0)) {
            long numSeconds = currentServerTime - lastOnlineTime;
            if (numSeconds < 10) {
                numSeconds = 10;
            }
            if (numSeconds < 60) {
                lastOnlineString = SteamCommunityApplication.GetInstance().getResources().getString(R.string.LastOnline_SecondsAgo).replace("#", String.valueOf(numSeconds));
            } else {
                long numMinutes = 1 + (numSeconds / 60);
                if (numMinutes < 60) {
                    lastOnlineString = SteamCommunityApplication.GetInstance().getResources().getString(R.string.LastOnline_MinutesAgo).replace("#", String.valueOf(numMinutes));
                } else {
                    long numHours = 1 + (numMinutes / 60);
                    if (numHours < 48) {
                        lastOnlineString = SteamCommunityApplication.GetInstance().getResources().getString(R.string.LastOnline_HoursAgo).replace("#", String.valueOf(numHours));
                    } else {
                        long numDays = numHours / 24;
                        lastOnlineString = numDays < 365 ? SteamCommunityApplication.GetInstance().getResources().getString(R.string.LastOnline_DaysAgo).replace("#", String.valueOf(numDays)) : SteamCommunityApplication.GetInstance().getResources().getString(R.string.LastOnline_YearOrMore);
                    }
                }
            }
        }
        return lastOnlineString;
    }
}
