package com.valvesoftware.android.steam.community.model;

import com.valvesoftware.android.steam.community.R;

public enum PersonaStateCategoryInList {
    REQUEST_INCOMING,
    CHATS,
    INGAME,
    ONLINE,
    OFFLINE,
    REQUEST_SENT,
    SEARCH_ALL;

    public int GetDisplayString() {
        switch (this) {
            case REQUEST_INCOMING:
                return R.string.Friend_Requests;
            case CHATS:
                return R.string.Chats;
            case INGAME:
                return R.string.In_Game;
            case ONLINE:
                return R.string.Online;
            case REQUEST_SENT:
            case OFFLINE:
                return R.string.Offline;
            case SEARCH_ALL:
                return R.string.Search;
            default:
                return R.string.Unknown;
        }
    }
}
