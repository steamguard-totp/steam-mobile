package com.valvesoftware.android.steam.community.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class UmqPollResult {
    private boolean containsMessageText;
    public long lastMessageNumber = -1;
    public long messagebase = -1;
    public int nextSuggestedTimeoutDuration;
    public long pollId;
    public PollStatus statusCode;
    public long timeStamp;
    private final ArrayList<UmqMessage> umqMessages = new ArrayList();
    private UmqMessageNotificationCounts umqNotificationCountMessage = null;
    public long utcTimeStamp;

    public void addMessage(UmqMessageBase newMessage) {
        if (newMessage != null) {
            if (newMessage instanceof UmqMessageNotificationCounts) {
                this.umqNotificationCountMessage = (UmqMessageNotificationCounts) newMessage;
            } else if (newMessage instanceof UmqMessage) {
                this.umqMessages.add((UmqMessage) newMessage);
                if (newMessage.type == UmqMessageType.MESSAGE_TEXT) {
                    this.containsMessageText = true;
                }
            }
        }
    }

    public List<UmqMessage> getAllMessagesWithText() {
        List<UmqMessage> messagesWithText = new ArrayList();
        if (this.umqMessages == null) {
            return Collections.EMPTY_LIST;
        }
        Iterator it = this.umqMessages.iterator();
        while (it.hasNext()) {
            UmqMessage message = (UmqMessage) it.next();
            if (message.type == UmqMessageType.MESSAGE_TEXT) {
                messagesWithText.add(message);
            }
        }
        return messagesWithText;
    }

    public boolean containsMessageText() {
        return this.containsMessageText;
    }

    public boolean containsIsTypingNotification() {
        return getTypingNotificationMessages().size() > 0;
    }

    public List<UmqMessage> getTypingNotificationMessages() {
        List<UmqMessage> result = new ArrayList();
        if (this.umqMessages != null) {
            Iterator it = this.umqMessages.iterator();
            while (it.hasNext()) {
                UmqMessage message = (UmqMessage) it.next();
                if (message.type == UmqMessageType.TYPING) {
                    result.add(message);
                }
            }
        }
        return result;
    }

    public List<String> steamIdsWithPersonaStateChange() {
        List<String> steamIds = new ArrayList();
        Iterator it = this.umqMessages.iterator();
        while (it.hasNext()) {
            UmqMessage message = (UmqMessage) it.next();
            if (message.type == UmqMessageType.PERSONA_STATE) {
                steamIds.add(message.chatPartnerSteamId);
            }
        }
        return steamIds;
    }

    public List<String> steamIdsWithRelationshipChanges() {
        List<String> steamIds = new ArrayList();
        Iterator it = this.umqMessages.iterator();
        while (it.hasNext()) {
            UmqMessage message = (UmqMessage) it.next();
            if (message.type == UmqMessageType.PERSONA_RELATIONSHIP) {
                steamIds.add(message.chatPartnerSteamId);
            }
        }
        return steamIds;
    }

    public boolean containsNotificationCountUpdate() {
        return this.umqNotificationCountMessage != null;
    }

    public UmqMessageNotificationCounts getNotificationCountMessage() {
        return this.umqNotificationCountMessage;
    }
}
