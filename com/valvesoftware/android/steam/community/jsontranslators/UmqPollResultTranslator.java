package com.valvesoftware.android.steam.community.jsontranslators;

import com.valvesoftware.android.steam.community.model.PersonaState;
import com.valvesoftware.android.steam.community.model.PollStatus;
import com.valvesoftware.android.steam.community.model.UmqMessage;
import com.valvesoftware.android.steam.community.model.UmqMessageBase;
import com.valvesoftware.android.steam.community.model.UmqMessageNotificationCounts;
import com.valvesoftware.android.steam.community.model.UmqMessageType;
import com.valvesoftware.android.steam.community.model.UmqPollResult;
import com.valvesoftware.android.steam.community.model.UserNotificationCounts;
import org.json.JSONArray;
import org.json.JSONObject;

public class UmqPollResultTranslator {
    public static UmqPollResult translate(JSONObject messagesJson) {
        UmqPollResult umqPollResult = new UmqPollResult();
        umqPollResult.statusCode = PollStatus.getValueFromString(messagesJson.optString("error"));
        umqPollResult.lastMessageNumber = messagesJson.optLong("messagelast", -1);
        umqPollResult.messagebase = messagesJson.optLong("messagebase");
        umqPollResult.nextSuggestedTimeoutDuration = messagesJson.optInt("sectimeout");
        umqPollResult.timeStamp = messagesJson.optLong("timestamp", -1);
        umqPollResult.utcTimeStamp = messagesJson.optLong("utc_timestamp", -1);
        umqPollResult.pollId = messagesJson.optLong("pollid", -1);
        JSONArray messagesArray = messagesJson.optJSONArray("messages");
        if (messagesArray != null) {
            for (int i = 0; i < messagesArray.length(); i++) {
                JSONObject m = messagesArray.optJSONObject(i);
                if (m != null) {
                    UmqMessageBase umqMessage = translateMessage(m);
                    if (umqMessage != null) {
                        umqPollResult.addMessage(umqMessage);
                    }
                }
            }
        }
        return umqPollResult;
    }

    private static UmqMessageBase translateMessage(JSONObject m) {
        UmqMessageBase umqMessageBase = null;
        if (m != null) {
            UmqMessageType type = getUmqMessageTypeFromString(m.optString("type"));
            if (type != null) {
                if (type == UmqMessageType.NOTIFICATION_COUNTS) {
                    UmqMessageBase notificationMsg = new UmqMessageNotificationCounts();
                    for (int i = 0; i < UserNotificationCounts.MAX_NOTIFICATION_TYPES; i++) {
                        int count = m.optInt("n" + i, 0);
                        if (count > 0) {
                            notificationMsg.notificationCounts.SetNotificationCount(i, count);
                        }
                    }
                    umqMessageBase = notificationMsg;
                } else {
                    UmqMessageBase friendMessage = new UmqMessage();
                    friendMessage.chatPartnerSteamId = m.optString("steamid_from");
                    friendMessage.text = m.optString("text");
                    friendMessage.personaState = PersonaState.FromInteger(m.optInt("persona_state", -1));
                    umqMessageBase = friendMessage;
                }
                umqMessageBase.type = type;
                umqMessageBase.utcTimeStamp = m.optLong("utc_timestamp", -1);
                umqMessageBase.secureMessageId = m.optString("secure_message_id");
                umqMessageBase.isIncoming = true;
            }
        }
        return umqMessageBase;
    }

    private static UmqMessageType getUmqMessageTypeFromString(String value) {
        if (value == null) {
            return null;
        }
        if (value.equalsIgnoreCase("typing")) {
            return UmqMessageType.TYPING;
        }
        if (value.equalsIgnoreCase("emote")) {
            return UmqMessageType.EMOTE;
        }
        if (value.equalsIgnoreCase("saytext")) {
            return UmqMessageType.MESSAGE_TEXT;
        }
        if (value.equalsIgnoreCase("personastate")) {
            return UmqMessageType.PERSONA_STATE;
        }
        if (value.equalsIgnoreCase("personarelationship")) {
            return UmqMessageType.PERSONA_RELATIONSHIP;
        }
        if (value.equals("notificationcountupdate")) {
            return UmqMessageType.NOTIFICATION_COUNTS;
        }
        return null;
    }
}
