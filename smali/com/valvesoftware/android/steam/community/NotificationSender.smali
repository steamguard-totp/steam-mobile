.class public Lcom/valvesoftware/android/steam/community/NotificationSender;
.super Ljava/lang/Object;
.source "NotificationSender.java"


# static fields
.field private static instance:Lcom/valvesoftware/android/steam/community/NotificationSender;


# instance fields
.field private chatPartnerNamesWithRecentlyMadeNotifications:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private lastChatNotification:Lcom/valvesoftware/android/steam/community/ChatNotification;

.field private lastRingOrVibrateTime:J

.field private settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

.field private steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->lastRingOrVibrateTime:J

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->chatPartnerNamesWithRecentlyMadeNotifications:Ljava/util/HashSet;

    .line 39
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    .line 40
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/valvesoftware/android/steam/community/NotificationSender;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->instance:Lcom/valvesoftware/android/steam/community/NotificationSender;

    if-nez v0, :cond_0

    .line 45
    const-class v1, Lcom/valvesoftware/android/steam/community/NotificationSender;

    monitor-enter v1

    .line 46
    :try_start_0
    new-instance v0, Lcom/valvesoftware/android/steam/community/NotificationSender;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/NotificationSender;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->instance:Lcom/valvesoftware/android/steam/community/NotificationSender;

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->instance:Lcom/valvesoftware/android/steam/community/NotificationSender;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRingToneUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingRing:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "ringTone":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    .end local v0    # "ringTone":Ljava/lang/String;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingRing:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private groupNotificationsBySender(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/ChatNotification;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "chatNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 325
    .local v1, "notificationsBySender":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p1, :cond_1

    .line 334
    :cond_0
    return-object v1

    .line 326
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/ChatNotification;

    .line 327
    .local v0, "c":Lcom/valvesoftware/android/steam/community/ChatNotification;
    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 328
    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 329
    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_3
    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/ChatNotification;->message:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private hasRungOrVibratedRecently()Z
    .locals 4

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->lastRingOrVibrateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ringtone()V
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getRingToneUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 238
    .local v0, "r":Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 241
    :cond_0
    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;IZZ)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "resultPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "notificationId"    # I
    .param p5, "ring"    # Z
    .param p6, "vibrate"    # Z

    .prologue
    .line 299
    if-eqz p1, :cond_2

    .line 300
    :goto_0
    if-eqz p2, :cond_3

    .line 302
    :goto_1
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02017c

    .line 304
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 305
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 306
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 307
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 309
    .local v2, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 311
    .local v1, "notification":Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 312
    if-eqz p5, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getRingToneUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 315
    :cond_0
    if-eqz p6, :cond_1

    .line 316
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    iput-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 320
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 321
    return-void

    .line 299
    .end local v0    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_2
    const-string p1, ""

    goto :goto_0

    .line 300
    :cond_3
    const-string p2, ""

    goto :goto_1

    .line 316
    :array_0
    .array-data 8
        0x0
        0xc8
    .end array-data
.end method

.method private sendNotificationWithHeadsUp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;IZZLjava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "resultPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "notificationId"    # I
    .param p5, "ring"    # Z
    .param p6, "vibrate"    # Z
    .param p7, "publicMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 260
    if-eqz p1, :cond_3

    .line 261
    :goto_0
    if-eqz p2, :cond_4

    .line 263
    :goto_1
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02017c

    .line 265
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 266
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 267
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 268
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "msg"

    .line 269
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 270
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 271
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 274
    .local v2, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz p7, :cond_0

    .line 275
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 276
    invoke-virtual {v3, p7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 277
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 278
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 279
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 280
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 283
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 285
    .local v1, "notification":Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 286
    if-eqz p5, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getRingToneUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 290
    :cond_1
    if-eqz p6, :cond_2

    .line 291
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    iput-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 295
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 296
    return-void

    .line 260
    .end local v0    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_3
    const-string p1, ""

    goto/16 :goto_0

    .line 261
    :cond_4
    const-string p2, ""

    goto/16 :goto_1

    .line 291
    :array_0
    .array-data 8
        0x0
        0xc8
    .end array-data
.end method

.method private shouldRingForChat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingSound:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getIntegerValue(Landroid/content/Context;)I

    move-result v0

    .line 223
    .local v0, "makeSound":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->chatPartnerNamesWithRecentlyMadeNotifications:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldRingForGenericNotification()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 232
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingSound:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getIntegerValue(Landroid/content/Context;)I

    move-result v0

    .line 233
    .local v0, "makeSound":I
    if-eq v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldVibrateForChat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingVibrate:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getIntegerValue(Landroid/content/Context;)I

    move-result v0

    .line 218
    .local v0, "vibrate":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->chatPartnerNamesWithRecentlyMadeNotifications:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldVibrateForGenericNotification()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 227
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingVibrate:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getIntegerValue(Landroid/content/Context;)I

    move-result v0

    .line 228
    .local v0, "vibrate":I
    if-eq v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private vibrate()V
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 245
    .local v0, "vibs":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 246
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 248
    :cond_0
    return-void
.end method


# virtual methods
.method public clearRecentNotificationsTracking()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->chatPartnerNamesWithRecentlyMadeNotifications:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 54
    return-void
.end method

.method public clearRecentNotificationsTrackingFor(Ljava/lang/String;)V
    .locals 1
    .param p1, "personaName"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->chatPartnerNamesWithRecentlyMadeNotifications:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public ringOrVibrateAsNeededForChat(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatPartnerName"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->hasRungOrVibratedRecently()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->lastRingOrVibrateTime:J

    .line 201
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldVibrateForChat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->vibrate()V

    .line 205
    :cond_2
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldRingForChat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->ringtone()V

    .line 209
    :cond_3
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->chatPartnerNamesWithRecentlyMadeNotifications:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendChatNotification(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "isTruncated"    # Z

    .prologue
    .line 117
    if-eqz p1, :cond_1

    .line 118
    :goto_0
    if-eqz p3, :cond_0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->lastChatNotification:Lcom/valvesoftware/android/steam/community/ChatNotification;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->lastChatNotification:Lcom/valvesoftware/android/steam/community/ChatNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/ChatNotification;->matches(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    :goto_1
    return-void

    .line 117
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 128
    :cond_2
    new-instance v15, Lcom/valvesoftware/android/steam/community/ChatNotification;

    invoke-direct {v15}, Lcom/valvesoftware/android/steam/community/ChatNotification;-><init>()V

    .line 129
    .local v15, "newNotification":Lcom/valvesoftware/android/steam/community/ChatNotification;
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/valvesoftware/android/steam/community/ChatNotification;->message:Ljava/lang/String;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/valvesoftware/android/steam/community/ChatNotification;->timeProcessed:J

    .line 133
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->lastChatNotification:Lcom/valvesoftware/android/steam/community/ChatNotification;

    .line 135
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getLocalDb()Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v14

    .line 136
    .local v14, "localDb":Lcom/valvesoftware/android/steam/community/LocalDb;
    const-string v18, ""

    .line 137
    .local v18, "steamId":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v16, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    if-eqz v14, :cond_3

    .line 139
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/valvesoftware/android/steam/community/LocalDb;->getSteamIdForPersonaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 140
    invoke-virtual {v14, v15}, Lcom/valvesoftware/android/steam/community/LocalDb;->saveChatNotification(Lcom/valvesoftware/android/steam/community/ChatNotification;)V

    .line 141
    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/LocalDb;->getNotifications()Ljava/util/List;

    move-result-object v16

    .line 146
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/NotificationSender;->groupNotificationsBySender(Ljava/util/List;)Ljava/util/Map;

    move-result-object v17

    .line 147
    .local v17, "notificationsBySender":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct/range {p0 .. p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->hasRungOrVibratedRecently()Z

    move-result v13

    .line 148
    .local v13, "hasRungOrVibratedRecently":Z
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldRingForChat(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v9, 0x1

    .line 149
    .local v9, "shouldRing":Z
    :goto_2
    if-nez v13, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldVibrateForChat(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v10, 0x1

    .line 151
    .local v10, "shouldVibrate":Z
    :goto_3
    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->chatPartnerNamesWithRecentlyMadeNotifications:Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_4
    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_9

    .line 155
    :cond_5
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 166
    .local v12, "chatIntent":Landroid/content/Intent;
    :goto_4
    const/high16 v4, 0x20200000

    invoke-virtual {v12, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v12, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 171
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    .line 178
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    .line 171
    invoke-direct/range {v4 .. v11}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendNotificationWithHeadsUp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;IZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 148
    .end local v7    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "shouldRing":Z
    .end local v10    # "shouldVibrate":Z
    .end local v12    # "chatIntent":Landroid/content/Intent;
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 149
    .restart local v9    # "shouldRing":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 158
    .restart local v10    # "shouldVibrate":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewFriendsList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    .restart local v12    # "chatIntent":Landroid/content/Intent;
    goto :goto_4

    .line 161
    .end local v12    # "chatIntent":Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewFriendsList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    .line 163
    .restart local v12    # "chatIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 164
    const-string v4, ", "

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method public sendConfirmationNotification(Ljava/lang/String;)V
    .locals 8
    .param p1, "alert"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 61
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewConfirmations(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    .line 62
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v4, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 64
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldRingForGenericNotification()Z

    move-result v5

    .line 69
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldVibrateForGenericNotification()Z

    move-result v6

    move-object v0, p0

    move-object v2, p1

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;IZZ)V

    .line 71
    return-void
.end method

.method public sendPromotionNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 189
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewCatalog(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    .line 190
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v4, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 192
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldRingForGenericNotification()Z

    move-result v5

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldVibrateForGenericNotification()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;IZZ)V

    .line 193
    return-void
.end method

.method public sendTwoFactorPromptNotification(Ljava/lang/String;)V
    .locals 14
    .param p1, "gidString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 74
    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForGID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v13

    .line 78
    .local v13, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f080151

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "title":Ljava/lang/String;
    const-string v0, "%accountname%"

    invoke-virtual {v13}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v13}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->generateSteamGuardCode()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "code":Ljava/lang/String;
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f080152

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "alertText":Ljava/lang/String;
    const-string v0, "%code%"

    invoke-virtual {v2, v0, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewSteamGuard(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    .line 90
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v0, v4, v10, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 95
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendNotificationWithHeadsUp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;IZZLjava/lang/String;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const-class v6, Lcom/valvesoftware/android/steam/community/NotificationDeleteReceiver;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->deleteNotification()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    .line 108
    .local v11, "intentDelete":Landroid/content/Intent;
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationId:Ljava/lang/String;

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const/16 v4, 0x3e8

    const/high16 v5, 0x48000000    # 131072.0f

    invoke-static {v0, v4, v11, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 111
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 112
    .local v8, "am":Landroid/app/AlarmManager;
    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-virtual {v8, v0, v4, v5, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public sendWishlistNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 182
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewWishList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    .line 183
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/NotificationSender;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v4, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 185
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldRingForGenericNotification()Z

    move-result v5

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->shouldVibrateForGenericNotification()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;IZZ)V

    .line 186
    return-void
.end method
