package com.valvesoftware.android.steam.community;

public class ChatNotification {
    String from;
    String message;
    long timeProcessed;

    boolean matches(String from, String message, long time) {
        if (this.from == null || !this.from.equals(from) || this.message == null || !this.message.equals(message) || time - this.timeProcessed >= 500) {
            return false;
        }
        return true;
    }
}
