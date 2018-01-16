package com.valvesoftware.android.steam.community;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Vibrator;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

public class NotificationSender {
    private static NotificationSender instance;
    private HashSet<String> chatPartnerNamesWithRecentlyMadeNotifications = new HashSet();
    private Context context = this.steamCommunityApplication.getApplicationContext();
    private ChatNotification lastChatNotification;
    private long lastRingOrVibrateTime = 0;
    private SettingInfoDB settingInfoDB = SteamCommunityApplication.GetInstance().GetSettingInfoDB();
    private SteamCommunityApplication steamCommunityApplication = SteamCommunityApplication.GetInstance();

    private NotificationSender() {
    }

    public static NotificationSender getInstance() {
        if (instance == null) {
            synchronized (NotificationSender.class) {
                instance = new NotificationSender();
            }
        }
        return instance;
    }

    public void clearRecentNotificationsTracking() {
        this.chatPartnerNamesWithRecentlyMadeNotifications.clear();
    }

    public void clearRecentNotificationsTrackingFor(String personaName) {
        this.chatPartnerNamesWithRecentlyMadeNotifications.remove(personaName);
    }

    public void sendConfirmationNotification(String alert) {
        String str = alert;
        sendNotification(SteamCommunityApplication.GetInstance().getResources().getString(R.string.ConfirmationTitle), str, PendingIntent.getActivity(this.context, 4, SteamAppIntents.viewConfirmations(this.context), 0), 4, shouldRingForGenericNotification(), shouldVibrateForGenericNotification());
    }

    public void sendTwoFactorPromptNotification(String gidString) {
        if (gidString != null) {
            SteamguardState sgState = SteamguardState.steamguardStateForGID(gidString);
            if (sgState != null && sgState.getTwoFactorToken() != null) {
                sendNotificationWithHeadsUp(this.context.getResources().getString(R.string.notification_newlogin).replaceAll("%accountname%", sgState.getAccountName()), this.context.getResources().getString(R.string.notification_newlogin_short_body).replaceAll("%code%", sgState.getTwoFactorToken().generateSteamGuardCode()), PendingIntent.getActivity(this.context, 5, SteamAppIntents.viewSteamGuard(this.context), 134217728), 5, false, false, null);
                Intent intentDelete = new Intent(this.context, NotificationDeleteReceiver.class).setData(SteamAppUri.deleteNotification());
                intentDelete.putExtra(SteamAppIntents.notificationId, 5);
                ((AlarmManager) this.context.getSystemService("alarm")).set(1, System.currentTimeMillis() + 60000, PendingIntent.getBroadcast(this.context, 1000, intentDelete, 1207959552));
            }
        }
    }

    public void sendChatNotification(String message, String from, boolean isTruncated) {
        if (message == null) {
            message = "";
        }
        if (isTruncated) {
            message = message + "...";
        }
        if (this.lastChatNotification == null || !this.lastChatNotification.matches(from, message, System.currentTimeMillis())) {
            Intent chatIntent;
            ChatNotification newNotification = new ChatNotification();
            newNotification.from = from;
            newNotification.message = message;
            newNotification.timeProcessed = System.currentTimeMillis();
            this.lastChatNotification = newNotification;
            LocalDb localDb = SteamCommunityApplication.GetInstance().getLocalDb();
            String steamId = "";
            List<ChatNotification> notifications = new ArrayList();
            if (localDb != null) {
                steamId = localDb.getSteamIdForPersonaName(from);
                localDb.saveChatNotification(newNotification);
                notifications = localDb.getNotifications();
            }
            Map<String, List<String>> notificationsBySender = groupNotificationsBySender(notifications);
            boolean hasRungOrVibratedRecently = hasRungOrVibratedRecently();
            boolean shouldRing = !hasRungOrVibratedRecently && shouldRingForChat(from);
            boolean shouldVibrate = !hasRungOrVibratedRecently && shouldVibrateForChat(from);
            if (from != null) {
                this.chatPartnerNamesWithRecentlyMadeNotifications.add(from);
            }
            if (notificationsBySender != null && notificationsBySender.keySet().size() > 1) {
                chatIntent = SteamAppIntents.viewFriendsList(this.context);
                from = this.context.getResources().getString(R.string.Chats);
                message = TextUtils.join(", ", notificationsBySender.keySet().toArray());
            } else if (steamId == null || steamId.length() <= 0) {
                chatIntent = SteamAppIntents.viewFriendsList(this.context);
            } else {
                chatIntent = SteamAppIntents.chatIntent(this.context, steamId);
            }
            chatIntent.addFlags(538968064);
            chatIntent.setAction(Long.toString(System.currentTimeMillis()));
            sendNotificationWithHeadsUp(from, message, PendingIntent.getActivity(this.context, 1, chatIntent, 134217728), 1, shouldRing, shouldVibrate, this.context.getResources().getString(R.string.notification_chat));
        }
    }

    public void sendWishlistNotification(String title, String message) {
        String str = title;
        String str2 = message;
        sendNotification(str, str2, PendingIntent.getActivity(this.context, 2, SteamAppIntents.viewWishList(this.context), 0), 2, shouldRingForGenericNotification(), shouldVibrateForGenericNotification());
    }

    public void sendPromotionNotification(String title, String message) {
        String str = title;
        String str2 = message;
        sendNotification(str, str2, PendingIntent.getActivity(this.context, 3, SteamAppIntents.viewCatalog(this.context), 0), 3, shouldRingForGenericNotification(), shouldVibrateForGenericNotification());
    }

    public void ringOrVibrateAsNeededForChat(String chatPartnerName) {
        if (!hasRungOrVibratedRecently()) {
            this.lastRingOrVibrateTime = System.currentTimeMillis();
            if (shouldVibrateForChat(chatPartnerName)) {
                vibrate();
            }
            if (shouldRingForChat(chatPartnerName)) {
                ringtone();
            }
            if (chatPartnerName != null) {
                this.chatPartnerNamesWithRecentlyMadeNotifications.add(chatPartnerName);
            }
        }
    }

    private boolean hasRungOrVibratedRecently() {
        return System.currentTimeMillis() - this.lastRingOrVibrateTime < 1000;
    }

    private boolean shouldVibrateForChat(String from) {
        int vibrate = this.settingInfoDB.m_settingVibrate.getIntegerValue(SteamCommunityApplication.GetInstance().getApplicationContext());
        return vibrate == -1 || (vibrate == 0 && !this.chatPartnerNamesWithRecentlyMadeNotifications.contains(from));
    }

    private boolean shouldRingForChat(String from) {
        int makeSound = this.settingInfoDB.m_settingSound.getIntegerValue(SteamCommunityApplication.GetInstance().getApplicationContext());
        return makeSound == -1 || (makeSound == 0 && !this.chatPartnerNamesWithRecentlyMadeNotifications.contains(from));
    }

    private boolean shouldVibrateForGenericNotification() {
        if (this.settingInfoDB.m_settingVibrate.getIntegerValue(SteamCommunityApplication.GetInstance().getApplicationContext()) != 1) {
            return true;
        }
        return false;
    }

    private boolean shouldRingForGenericNotification() {
        if (this.settingInfoDB.m_settingSound.getIntegerValue(SteamCommunityApplication.GetInstance().getApplicationContext()) != 1) {
            return true;
        }
        return false;
    }

    private void ringtone() {
        Ringtone r = RingtoneManager.getRingtone(this.steamCommunityApplication.getApplicationContext(), getRingToneUri());
        if (r != null) {
            r.play();
        }
    }

    private void vibrate() {
        Vibrator vibs = (Vibrator) this.steamCommunityApplication.getSystemService("vibrator");
        if (vibs != null) {
            vibs.vibrate(200);
        }
    }

    private Uri getRingToneUri() {
        try {
            return Uri.parse(this.settingInfoDB.m_settingRing.getValue(this.steamCommunityApplication.getApplicationContext()));
        } catch (RuntimeException e) {
            return Uri.parse(this.settingInfoDB.m_settingRing.m_defaultValue);
        }
    }

    private void sendNotificationWithHeadsUp(String title, String message, PendingIntent resultPendingIntent, int notificationId, boolean ring, boolean vibrate, String publicMessage) {
        if (title == null) {
            title = "";
        }
        if (message == null) {
            message = "";
        }
        Builder notificationBuilder = new Builder(this.context).setSmallIcon(R.drawable.notification_chat).setContentTitle(title).setContentText(message).setContentIntent(resultPendingIntent).setCategory("msg").setVisibility(1).setPriority(1);
        if (publicMessage != null) {
            notificationBuilder.setContentTitle(this.context.getResources().getString(R.string.app_name)).setContentText(publicMessage).setPublicVersion(notificationBuilder.build()).setVisibility(0).setContentTitle(title).setContentText(message);
        }
        Notification notification = notificationBuilder.build();
        notification.flags |= 16;
        if (ring) {
            notification.sound = getRingToneUri();
        }
        if (vibrate) {
            notification.vibrate = new long[]{0, 200};
        }
        ((NotificationManager) this.context.getSystemService("notification")).notify(notificationId, notification);
    }

    private void sendNotification(String title, String message, PendingIntent resultPendingIntent, int notificationId, boolean ring, boolean vibrate) {
        if (title == null) {
            title = "";
        }
        if (message == null) {
            message = "";
        }
        Notification notification = new Builder(this.context).setSmallIcon(R.drawable.notification_chat).setContentTitle(title).setContentText(message).setContentIntent(resultPendingIntent).build();
        notification.flags |= 16;
        if (ring) {
            notification.sound = getRingToneUri();
        }
        if (vibrate) {
            notification.vibrate = new long[]{0, 200};
        }
        ((NotificationManager) this.context.getSystemService("notification")).notify(notificationId, notification);
    }

    private Map<String, List<String>> groupNotificationsBySender(List<ChatNotification> chatNotifications) {
        Map<String, List<String>> notificationsBySender = new HashMap();
        if (chatNotifications != null) {
            for (ChatNotification c : chatNotifications) {
                if (c.from != null) {
                    if (!notificationsBySender.containsKey(c.from)) {
                        notificationsBySender.put(c.from, new ArrayList());
                    }
                    ((List) notificationsBySender.get(c.from)).add(c.message);
                }
            }
        }
        return notificationsBySender;
    }
}
