package com.valvesoftware.android.steam.community.jsontranslators;

import android.util.Log;
import com.valvesoftware.android.steam.community.model.Persona;
import com.valvesoftware.android.steam.community.model.PersonaRelationship;
import com.valvesoftware.android.steam.community.model.PersonaState;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class PersonaTranslator {
    public static List<Persona> translateList(JSONObject friendsJson) {
        List<Persona> friends = new ArrayList();
        if (friendsJson == null) {
            Log.e("json_parsing", "Unexpected null JSONObject");
        } else {
            JSONArray topLevelDocNames = friendsJson.names();
            JSONArray friendsArray = null;
            if (topLevelDocNames.length() > 0) {
                Object name = topLevelDocNames.opt(0);
                if (name instanceof String) {
                    friendsArray = friendsJson.optJSONArray((String) name);
                }
            }
            if (friendsArray != null) {
                for (int i = 0; i < friendsArray.length(); i++) {
                    JSONObject friend = friendsArray.optJSONObject(i);
                    if (friend != null) {
                        Persona f = translateObject(friend);
                        if (f != null) {
                            friends.add(f);
                        }
                    } else {
                        Log.e(friendsJson.toString(), "expected friends array to contain object at index: " + i);
                    }
                }
            }
        }
        return friends;
    }

    private static Persona translateObject(JSONObject friendJson) {
        Persona persona = null;
        boolean z = true;
        if (friendJson == null) {
            Log.e("json_parsing", "attempted to parse null object");
        } else {
            String steamIdString = friendJson.optString("steamid");
            if (steamIdString == null) {
                Log.e("json_parsing", "no steamid while parsing: " + friendJson.toString());
            } else {
                boolean z2;
                persona = new Persona();
                persona.steamId = steamIdString;
                persona.personaName = friendJson.optString("personaname");
                persona.realName = friendJson.optString("realname");
                persona.smallAvatarUrl = friendJson.optString("avatar");
                persona.mediumAvatarUrl = friendJson.optString("avatarmedium");
                persona.fullAvatarUrl = friendJson.optString("avatarfull");
                persona.personaState = PersonaState.FromInteger(friendJson.optInt("personastate"));
                int personaStateFlags = friendJson.optInt("personastateflags");
                if ((personaStateFlags & 256) == 256) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                persona.isOnWeb = z2;
                if ((personaStateFlags & 512) == 512) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                persona.isOnMobile = z2;
                if ((personaStateFlags & 1024) != 1024) {
                    z = false;
                }
                persona.isOnTenFoot = z;
                persona.currentGameID = friendJson.optInt("gameid");
                persona.currentGameString = friendJson.optString("gameextrainfo");
                persona.lastOnlineTime = (long) friendJson.optInt("lastlogoff");
                String relationshipJsonValue = friendJson.optString("relationship");
                if (relationshipJsonValue != null) {
                    PersonaRelationship relationship = PersonaRelationship.getEnumValue(relationshipJsonValue);
                    if (relationship == null) {
                        relationship = PersonaRelationship.none;
                    }
                    persona.relationship = relationship;
                }
            }
        }
        return persona;
    }
}
