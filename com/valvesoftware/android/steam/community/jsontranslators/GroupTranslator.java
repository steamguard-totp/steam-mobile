package com.valvesoftware.android.steam.community.jsontranslators;

import android.util.Log;
import com.valvesoftware.android.steam.community.model.Group;
import com.valvesoftware.android.steam.community.model.GroupRelationship;
import com.valvesoftware.android.steam.community.model.GroupType;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class GroupTranslator {
    public static List<Group> translateList(JSONObject groupsJson) {
        List<Group> groups = new ArrayList();
        if (groupsJson == null) {
            Log.e("json_parsing", "Unexpected null JSONObject");
        } else {
            JSONArray topLevelDocNames = groupsJson.names();
            JSONArray groupsArray = null;
            if (topLevelDocNames != null && topLevelDocNames.length() > 0) {
                Object name = topLevelDocNames.opt(0);
                if (name instanceof String) {
                    groupsArray = groupsJson.optJSONArray((String) name);
                }
            }
            if (groupsArray != null) {
                for (int i = 0; i < groupsArray.length(); i++) {
                    JSONObject group = groupsArray.optJSONObject(i);
                    if (group != null) {
                        Group g = translateObject(group);
                        if (g != null) {
                            groups.add(g);
                        }
                    } else {
                        Log.e(groupsJson.toString(), "expected friends array to contain object at index: " + i);
                    }
                }
            }
        }
        return groups;
    }

    public static Group translateObject(JSONObject groupJson) {
        Group group = null;
        if (groupJson == null) {
            Log.e("json_parsing", "attempted to parse null object");
        } else {
            String steamIdString = groupJson.optString("steamid");
            if (steamIdString == null) {
                Log.e("json_parsing", "no steamid while parsing: " + groupJson.toString());
            } else {
                group = new Group();
                group.steamId = steamIdString;
                group.name = groupJson.optString("name");
                group.numUsersTotal = groupJson.optInt("users");
                group.numUsersOnline = groupJson.optInt("usersonline");
                group.type = GroupType.FromInteger(groupJson.optInt("type"));
                group.smallAvatarUrl = groupJson.optString("avatar");
                group.mediumAvatarUrl = groupJson.optString("avatarmedium");
                group.fullAvatarUrl = groupJson.optString("avatarfull");
                group.favoriteAppId = groupJson.optInt("favoriteappid");
                group.profileUrl = groupJson.optString("profileurl");
                try {
                    group.relationship = GroupRelationship.valueOf(groupJson.optString("relationship", "None"));
                } catch (Exception e) {
                    group.relationship = GroupRelationship.None;
                }
                if (group.hasProfileUrl()) {
                    if (group.type == GroupType.OFFICIAL) {
                        group.profileUrl = "/games/" + group.profileUrl;
                    } else {
                        group.profileUrl = "/groups/" + group.profileUrl;
                    }
                }
            }
        }
        return group;
    }
}
