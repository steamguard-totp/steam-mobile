package com.valvesoftware.android.steam.community.model;

import android.text.TextUtils;

public class Persona {
    private PersonaStateCategoryInList categoryInList = PersonaStateCategoryInList.OFFLINE;
    public int currentGameID;
    public String currentGameString = "";
    public String fullAvatarUrl;
    public boolean isOnMobile;
    public boolean isOnTenFoot;
    public boolean isOnWeb;
    private long lastMessageTime;
    public long lastOnlineTime = 0;
    public String mediumAvatarUrl;
    private int numUnreadMessagesSent;
    public String personaName;
    public PersonaState personaState = PersonaState.OFFLINE;
    public String realName;
    public PersonaRelationship relationship = PersonaRelationship.none;
    public String smallAvatarUrl;
    public String steamId;
    private long twoDaysInSeconds = 172800;

    public boolean hasSentUnreadMessage() {
        return this.numUnreadMessagesSent > 0;
    }

    public void overwriteOrMergeWith(Persona other) {
        this.personaName = TextUtils.isEmpty(other.personaName) ? this.personaName : other.personaName;
        PersonaRelationship personaRelationship = (other.relationship == null || other.relationship == PersonaRelationship.none) ? this.relationship : other.relationship;
        this.relationship = personaRelationship;
        this.categoryInList = other.categoryInList == null ? this.categoryInList : other.categoryInList;
        this.realName = TextUtils.isEmpty(other.realName) ? other.realName : this.realName;
        this.currentGameID = other.currentGameID == 0 ? this.currentGameID : other.currentGameID;
        this.currentGameString = other.currentGameString;
        this.smallAvatarUrl = TextUtils.isEmpty(other.smallAvatarUrl) ? this.smallAvatarUrl : other.smallAvatarUrl;
        this.mediumAvatarUrl = TextUtils.isEmpty(other.mediumAvatarUrl) ? this.mediumAvatarUrl : other.mediumAvatarUrl;
        this.fullAvatarUrl = TextUtils.isEmpty(other.fullAvatarUrl) ? this.fullAvatarUrl : other.fullAvatarUrl;
        this.lastOnlineTime = Math.max(this.lastOnlineTime, other.lastOnlineTime);
        this.personaState = other.personaState == null ? this.personaState : other.personaState;
        this.numUnreadMessagesSent = Math.max(this.numUnreadMessagesSent, other.numUnreadMessagesSent);
        this.isOnMobile = other.isOnMobile;
        this.isOnTenFoot = other.isOnTenFoot;
        this.isOnWeb = other.isOnWeb;
        this.lastMessageTime = Math.max(other.lastMessageTime, this.lastMessageTime);
        determineDisplayCategory();
    }

    public boolean isPlaying() {
        return this.currentGameString != null && this.currentGameString.length() > 0;
    }

    public PersonaStateCategoryInList getDisplayCategory() {
        return this.categoryInList;
    }

    public boolean isOnline() {
        return this.personaState != PersonaState.OFFLINE;
    }

    public boolean isFriend() {
        return PersonaRelationship.friend == this.relationship;
    }

    public String toString() {
        return this.personaName != null ? this.personaName : "";
    }

    public void setDisplayCategoryForSearch() {
        this.categoryInList = PersonaStateCategoryInList.SEARCH_ALL;
    }

    public long getLastMessageTime() {
        return this.lastMessageTime;
    }

    public void setLastMessageTime(long time) {
        this.lastMessageTime = time;
    }

    public boolean hasRecentlySentMessage() {
        if ((System.currentTimeMillis() / 1000) - this.lastMessageTime > this.twoDaysInSeconds) {
            return false;
        }
        return true;
    }

    public void incrementUnreadMessageCount() {
        this.numUnreadMessagesSent++;
    }

    public int getUnreadMessageCount() {
        return this.numUnreadMessagesSent;
    }

    public void clearUnreadMessageCount() {
        this.numUnreadMessagesSent = 0;
    }

    public void determineDisplayCategory() {
        if (this.relationship == PersonaRelationship.requestrecipient) {
            this.categoryInList = PersonaStateCategoryInList.REQUEST_INCOMING;
        } else if (hasSentUnreadMessage() || hasRecentlySentMessage()) {
            this.categoryInList = PersonaStateCategoryInList.CHATS;
        } else if (this.currentGameString.length() > 0) {
            this.categoryInList = PersonaStateCategoryInList.INGAME;
        } else if (this.personaState == PersonaState.OFFLINE) {
            this.categoryInList = PersonaStateCategoryInList.OFFLINE;
        } else {
            this.categoryInList = PersonaStateCategoryInList.ONLINE;
        }
    }
}
