package com.valvesoftware.android.steam.community.jsontranslators;

import com.valvesoftware.android.steam.community.model.UmqMessage;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class UmqMessageHistoryTranslator {
    public static List<UmqMessage> translateList(JSONObject messagesJson, String chatPartnerSteamId) {
        List<UmqMessage> messages = new ArrayList();
        JSONArray array = messagesJson.optJSONArray("messages");
        if (array != null) {
            for (int i = 0; i < array.length(); i++) {
                JSONObject messageJson = array.optJSONObject(i);
                if (messageJson != null) {
                    UmqMessage singleMessage = translate(messageJson, chatPartnerSteamId);
                    if (singleMessage != null) {
                        messages.add(singleMessage);
                    }
                }
            }
        }
        return messages;
    }

    private static UmqMessage translate(JSONObject messageJson, String chatPartnerSteamId) {
        UmqMessage umqMessage = new UmqMessage();
        if (TranslatorUtilities.steamIdFromAccountId(messageJson.optString("accountid")).equals(chatPartnerSteamId)) {
            umqMessage.isIncoming = true;
        }
        umqMessage.chatPartnerSteamId = chatPartnerSteamId;
        umqMessage.utcTimeStamp = messageJson.optLong("timestamp");
        umqMessage.text = messageJson.optString("message");
        return umqMessage;
    }
}
