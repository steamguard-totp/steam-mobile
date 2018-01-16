package com.valvesoftware.android.steam.community.jsontranslators;

import com.valvesoftware.android.steam.community.model.MessageSession;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class ActiveMessageSessionsTranslator {
    public static List<MessageSession> translateList(JSONObject jsonObject) {
        List<MessageSession> messageSessions = new ArrayList();
        JSONArray array = jsonObject.optJSONArray("message_sessions");
        if (array != null) {
            for (int i = 0; i < array.length(); i++) {
                JSONObject sessionJson = array.optJSONObject(i);
                if (sessionJson != null) {
                    MessageSession session = translateObject(sessionJson);
                    if (session != null) {
                        messageSessions.add(session);
                    }
                }
            }
        }
        return messageSessions;
    }

    private static MessageSession translateObject(JSONObject sessionJson) {
        MessageSession session = new MessageSession();
        session.steamId = TranslatorUtilities.steamIdFromAccountId(sessionJson.optString("accountid_friend"));
        session.lastMessage = sessionJson.optString("last_message");
        session.lastView = sessionJson.optString("last_view");
        session.unreadMessageCount = sessionJson.optInt("unread_message_count");
        return session;
    }
}
