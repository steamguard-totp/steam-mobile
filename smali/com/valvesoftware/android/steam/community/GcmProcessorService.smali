.class public Lcom/valvesoftware/android/steam/community/GcmProcessorService;
.super Landroid/app/IntentService;
.source "GcmProcessorService.java"


# instance fields
.field private settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/valvesoftware/android/steam/community/GcmProcessorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/GcmProcessorService;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    .line 12
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-static {}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getInstance()Lcom/valvesoftware/android/steam/community/NotificationSender;

    move-result-object v2

    .line 18
    .local v2, "notificationSender":Lcom/valvesoftware/android/steam/community/NotificationSender;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v10, "registration_id"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 20
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;-><init>()V

    .line 21
    .local v0, "gcmRegistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v10, "registration_id"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "regId":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->storeRegistrationIdAndSendToServer(Ljava/lang/String;)V

    .line 94
    .end local v0    # "gcmRegistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    .end local v3    # "regId":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 95
    return-void

    .line 26
    :cond_1
    const-string v5, "type"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "messageType":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v5, "tfpr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 31
    const-wide/16 v8, 0x0

    .line 33
    .local v8, "timestampSent":J
    :try_start_0
    const-string v5, "timestamp"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 38
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 39
    .local v6, "timestampNow":J
    const-wide/16 v10, 0x1e

    add-long/2addr v10, v8

    cmp-long v5, v6, v10

    if-gtz v5, :cond_0

    .line 40
    const-string v5, "gid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendTwoFactorPromptNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v6    # "timestampNow":J
    .end local v8    # "timestampSent":J
    :cond_2
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    const-string v5, "chat"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 52
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/GcmProcessorService;->settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->usePushInBackground()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    const-string v5, "message"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "messageFrom"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "messageIsTruncated"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "messageIsTruncated"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "true"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v2, v10, v11, v5}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendChatNotification(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 59
    :cond_4
    const-string v5, "wishlist"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 60
    const-string v5, "title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "message"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendWishlistNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_5
    const-string v5, "promotion"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 62
    const-string v5, "title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "message"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendPromotionNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_6
    const-string v5, "conf"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 65
    const-string v5, "alert"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "strAlert":Ljava/lang/String;
    sget-boolean v5, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->isInForeground:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->mMainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v5, :cond_7

    .line 69
    sget-object v5, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->confirmationRefreshHandler:Landroid/os/Handler;

    new-instance v10, Lcom/valvesoftware/android/steam/community/GcmProcessorService$1;

    invoke-direct {v10, p0, v4}, Lcom/valvesoftware/android/steam/community/GcmProcessorService$1;-><init>(Lcom/valvesoftware/android/steam/community/GcmProcessorService;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 83
    :cond_7
    invoke-virtual {v2, v4}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendConfirmationNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v4    # "strAlert":Ljava/lang/String;
    :cond_8
    const-string v5, "rmtf"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    const-string v5, "gid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "scheme"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/valvesoftware/android/steam/community/SteamguardState;->handleTwoFactorRemovalNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v8    # "timestampSent":J
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method
