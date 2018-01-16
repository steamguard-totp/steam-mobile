package com.valvesoftware.android.steam.community;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;

public class NotificationDeleteReceiver extends WakefulBroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        NotificationManager mNotificationManager = (NotificationManager) context.getSystemService("notification");
        int id = intent.getIntExtra(SteamAppIntents.notificationId, 0);
        "Deleting notification " + id;
        mNotificationManager.cancel(id);
        setResultCode(-1);
    }
}
