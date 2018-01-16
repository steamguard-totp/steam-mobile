package com.valvesoftware.android.steam.community.model;

import com.valvesoftware.android.steam.community.R;

public enum GroupCategoryInList {
    REQUEST_INVITE,
    PRIVATE,
    PUBLIC,
    OFFICIAL,
    SEARCH_ALL;

    public int getDisplayNumber() {
        switch (this) {
            case REQUEST_INVITE:
                return R.string.Group_Invites;
            case OFFICIAL:
                return R.string.Official_Groups;
            case PRIVATE:
                return R.string.Private_Groups;
            case PUBLIC:
                return R.string.Public_Groups;
            case SEARCH_ALL:
                return R.string.Search;
            default:
                return R.string.Unknown;
        }
    }
}
