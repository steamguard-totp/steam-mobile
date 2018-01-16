package com.valvesoftware.android.steam.community;

import com.valvesoftware.android.steam.community.model.UmqMessage;
import java.util.List;

public interface ChatStateListener {
    void isTypingMessageReceived(List<UmqMessage> list);

    boolean listenerWillHandleAllVisualChatNotifications();

    boolean listenerWillHandleVisualChatNotificationForSteamId(String str);

    void messageSendFailed(UmqMessage umqMessage);

    void messageSent(UmqMessage umqMessage);

    void newMessagesSaved(List<UmqMessage> list);

    void personaStateChanged(List<String> list);

    void relationshipStateChanged(List<String> list);
}
