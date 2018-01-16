package com.valvesoftware.android.steam.community.model;

import java.util.HashMap;
import java.util.Map;

public enum PersonaRelationship {
    none,
    myself,
    friend,
    blocked,
    requestrecipient,
    requestinitiator,
    ignored,
    ignoredfriend,
    suggested;
    
    static Map<String, PersonaRelationship> stringFriendRelationshipMap;

    static {
        stringFriendRelationshipMap = new HashMap();
        stringFriendRelationshipMap.put("none", none);
        stringFriendRelationshipMap.put("myself", myself);
        stringFriendRelationshipMap.put("friend", friend);
        stringFriendRelationshipMap.put("blocked", blocked);
        stringFriendRelationshipMap.put("requestrecipient", requestrecipient);
        stringFriendRelationshipMap.put("requestinitiator", requestinitiator);
        stringFriendRelationshipMap.put("ignored", ignored);
        stringFriendRelationshipMap.put("ignoredfriend", ignoredfriend);
        stringFriendRelationshipMap.put("suggested", suggested);
    }

    public static PersonaRelationship getEnumValue(String stringValue) {
        return (PersonaRelationship) stringFriendRelationshipMap.get(stringValue);
    }
}
