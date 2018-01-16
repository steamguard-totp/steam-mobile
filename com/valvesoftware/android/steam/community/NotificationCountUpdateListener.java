package com.valvesoftware.android.steam.community;

import com.valvesoftware.android.steam.community.model.UserNotificationCounts;

public interface NotificationCountUpdateListener {
    void notificationCountsChanged(UserNotificationCounts userNotificationCounts);
}
