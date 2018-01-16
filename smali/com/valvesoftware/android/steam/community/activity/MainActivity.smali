.class public Lcom/valvesoftware/android/steam/community/activity/MainActivity;
.super Lcom/valvesoftware/android/steam/community/activity/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;
    }
.end annotation


# instance fields
.field private lastLoginFragmentLoadTime:J

.field private final loginFragmentRefreshDelay:J

.field public final steamData:Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

.field private steamWebViewClient:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->lastLoginFragmentLoadTime:J

    .line 54
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loginFragmentRefreshDelay:J

    .line 56
    new-instance v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamData:Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshUserNotificationCounts()V

    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    return-void
.end method

.method private doIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideKeyboard()V

    .line 304
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 305
    .local v5, "u":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "resource":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doIntent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    if-nez v3, :cond_2

    .line 314
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    goto :goto_0

    .line 318
    :cond_2
    const-string v7, "appsettings"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 319
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadSettingsFragment()V

    goto :goto_0

    .line 320
    :cond_3
    const-string v7, "login"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 321
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment()V

    goto :goto_0

    .line 322
    :cond_4
    const-string v7, "deletenotification"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 324
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 325
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    sget-object v7, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationId:Ljava/lang/String;

    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 326
    .end local v1    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_5
    const-string v7, "friends"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 327
    const-string v7, "search"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 329
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFriendsFragment()V

    goto :goto_0

    .line 331
    :cond_6
    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFriendsSearchFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v2    # "query":Ljava/lang/String;
    :cond_7
    const-string v7, "chat"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 334
    const-string v7, "steamid"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "chatPartnerSteamId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0, v0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadChatFragment(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    .end local v0    # "chatPartnerSteamId":Ljava/lang/String;
    :cond_8
    const-string v7, "groups"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 340
    const-string v7, "search"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .restart local v2    # "query":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 342
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadGroupsFragment()V

    goto/16 :goto_0

    .line 344
    :cond_9
    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadGroupsSearchFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    .end local v2    # "query":Ljava/lang/String;
    :cond_a
    const-string v7, "openurl"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 347
    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->extractUrlFromOpenUrlUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 349
    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadWebViewFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    .end local v6    # "url":Ljava/lang/String;
    :cond_b
    const-string v7, "opencategoryurl"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 352
    const-string v7, "url"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 353
    .restart local v6    # "url":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 354
    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadTabbedWebViewFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v6    # "url":Ljava/lang/String;
    :cond_c
    const-string v7, "steamguard"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 357
    sget-object v7, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_PRECHANGE:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadSteamGuardWebFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    :cond_d
    const-string v7, "steamguardweb"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 359
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadSteamGuardWebFragment()V

    goto/16 :goto_0

    .line 360
    :cond_e
    const-string v7, "steamguardviewrcode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 361
    sget-object v7, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_RCODE:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadSteamGuardWebFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_f
    const-string v7, "confirmation"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 363
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v4

    .line 364
    .local v4, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 365
    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getConfirmationUrl()Ljava/lang/String;

    move-result-object v6

    .line 366
    .restart local v6    # "url":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 367
    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadWebViewFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .end local v6    # "url":Ljava/lang/String;
    :cond_10
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s?p=%s&a=%s&m=android"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    sget-object v10, Lcom/valvesoftware/android/steam/community/SteamAppUri;->CONFIRMATION_WEB:Ljava/lang/String;

    aput-object v10, v9, v11

    const/4 v10, 0x1

    .line 373
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getUniqueIdForPhone()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 374
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 371
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 376
    .restart local v6    # "url":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadWebViewFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    .end local v4    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v6    # "url":Ljava/lang/String;
    :cond_11
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    goto/16 :goto_0
.end method

.method private getCurrentBackStackEntryName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 265
    .local v0, "backStackEntry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    .end local v0    # "backStackEntry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getGroupsSearchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 473
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;-><init>()V

    .line 474
    .local v1, "searchFragment":Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "groups"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 477
    return-object v1
.end method

.method private getWebViewFragment(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;-><init>()V

    .line 451
    .local v1, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 452
    return-object v1
.end method

.method private isSpecialNonLoggedInUri(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 193
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "openurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->steamHelpUriPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_2

    move v1, v2

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->steamSubscriberAgreementUriPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_3

    move v1, v2

    .line 203
    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->steamPrivacyPolicyUriPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_0

    move v1, v2

    .line 206
    goto :goto_0
.end method

.method private loadChatFragment(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 481
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;-><init>()V

    .line 482
    .local v1, "chatFragment":Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 483
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "chatPartnerSteamIdKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "chatPartnerAvatarUrl"

    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatPartnerAvatarUrlKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v2, "chatPartnerPersonaNameKey"

    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatPartnerPersonaNameKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v3, "loggedInUserAvatarUrl"

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->setArguments(Landroid/os/Bundle;)V

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 490
    return-void

    .line 487
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "newEntryName"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 272
    return-void
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "newEntryName"    # Ljava/lang/String;
    .param p3, "bForce"    # Z

    .prologue
    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    if-nez p3, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 279
    .local v0, "backStackEntry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFragment has backstack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    if-eqz p2, :cond_0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    .end local v0    # "backStackEntry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearTitleLabel()V

    .line 288
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideProgressIndicator(I)V

    .line 289
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideSearchBar()V

    .line 290
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearRefreshButtonListener()V

    .line 291
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearSearchButtonListener()V

    .line 292
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearExtraMenuItems()V

    .line 293
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->invalidateOptionsMenu()V

    .line 295
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 296
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0e00f1

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 297
    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 298
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 299
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method private loadFriendsFragment()V
    .locals 2

    .prologue
    .line 493
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;-><init>()V

    const-class v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method private loadFriendsSearchFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 464
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;-><init>()V

    .line 465
    .local v1, "searchFragment":Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 466
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "friends"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private loadGroupsFragment()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;-><init>()V

    const-class v1, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method private loadGroupsSearchFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getGroupsSearchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private loadLoginFragment()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method private loadLoginFragment(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intentAfterLoginCompletes"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLoginFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getCurrentBackStackEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->lastLoginFragmentLoadTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getCurrentBackStackEntryName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->lastLoginFragmentLoadTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;-><init>()V

    .line 111
    .local v0, "gcmUnregistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->unregister()V

    .line 113
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->lastLoginFragmentLoadTime:J

    .line 115
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideMenuAndActionBar()V

    .line 116
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;-><init>()V

    .line 117
    .local v1, "loginFragment":Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;
    new-instance v2, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;-><init>(Lcom/valvesoftware/android/steam/community/activity/MainActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->setLoginChangedListener(Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;)V

    .line 144
    const-class v2, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v6}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private loadSettingsFragment()V
    .locals 2

    .prologue
    .line 415
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;-><init>()V

    .line 416
    .local v0, "settingsFragment":Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;
    const-class v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method private loadSteamGuardWebFragment()V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;-><init>()V

    .line 421
    .local v0, "steamguardFragmentWeb":Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;
    const-class v1, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 422
    return-void
.end method

.method private loadSteamGuardWebFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 425
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;-><init>()V

    .line 427
    .local v1, "steamguardFragmentWeb":Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "defaultUrl"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->setArguments(Landroid/os/Bundle;)V

    .line 431
    const-class v2, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 432
    return-void
.end method

.method private loadTabbedWebViewFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;-><init>()V

    .line 443
    .local v1, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private loadUserDefaultFragment()V
    .locals 4

    .prologue
    .line 384
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v2

    iget-object v1, v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_startScreen:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 386
    .local v1, "startScreenSetting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-virtual {v1, p0}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getIntegerValue(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->fromInt(I)Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    move-result-object v0

    .line 387
    .local v0, "screen":Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    sget-object v2, Lcom/valvesoftware/android/steam/community/activity/MainActivity$3;->$SwitchMap$com$valvesoftware$android$steam$community$SettingInfoDB$StartScreen:[I

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 409
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewFriendsList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 412
    :goto_0
    return-void

    .line 389
    :pswitch_0
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewCatalog(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewGroupsList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewSteamGuard(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 398
    :pswitch_3
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewSteamNews(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 401
    :pswitch_4
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewFriendActivity(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 404
    :pswitch_5
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewLibrary(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadWebViewFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getWebViewFragment(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    move-result-object v0

    .line 436
    .local v0, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 437
    return-void
.end method

.method private refreshUserNotificationCounts()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUserNotificationCounts()Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 150
    .local v0, "notificationCountRequest":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;-><init>(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 177
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 179
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 501
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_1

    .line 502
    if-eqz p3, :cond_5

    .line 503
    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "sCall":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 505
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamWebViewClient:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function(){"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    .line 525
    .end local v1    # "sCall":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_4

    .line 510
    sget-object v3, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_FilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_0

    .line 511
    if-eqz p3, :cond_2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    :cond_2
    move-object v0, v2

    .line 512
    .local v0, "resultUri":Landroid/net/Uri;
    :goto_1
    sget-object v3, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_FilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 513
    sput-object v2, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_FilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 511
    .end local v0    # "resultUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 516
    :cond_4
    const/16 v3, 0x3ea

    if-ne p1, v3, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_5

    .line 517
    sget-object v3, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_MultiFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_0

    .line 518
    sget-object v3, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_MultiFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 519
    sput-object v2, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_MultiFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 524
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->closeDrawer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 67
    .local v0, "n":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->finish()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearTitleLabel()V

    .line 71
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideSearchBar()V

    .line 72
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearRefreshButtonListener()V

    .line 73
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearSearchButtonListener()V

    .line 74
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->clearExtraMenuItems()V

    .line 75
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 538
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0e00f1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 541
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/valvesoftware/android/steam/community/fragment/IBackButtonSupport;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 543
    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/IBackButtonSupport;

    .line 544
    .local v0, "backButtonSupportingFragment":Lcom/valvesoftware/android/steam/community/fragment/IBackButtonSupport;
    invoke-interface {v0}, Lcom/valvesoftware/android/steam/community/fragment/IBackButtonSupport;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-interface {v0}, Lcom/valvesoftware/android/steam/community/fragment/IBackButtonSupport;->goBack()V

    .line 547
    const/4 v2, 0x1

    .line 552
    .end local v0    # "backButtonSupportingFragment":Lcom/valvesoftware/android/steam/community/fragment/IBackButtonSupport;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->isSpecialNonLoggedInUri(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-super {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->doIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 529
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onPause()V

    .line 530
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->switchingToBackground()V

    .line 531
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v0

    .line 533
    .local v0, "umqCommunicator":Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stop()V

    .line 534
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onResume()V

    .line 217
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->switchingToForeground(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V

    .line 218
    return-void
.end method

.method protected onResumeFragments()V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onResumeFragments()V

    .line 228
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->isSpecialNonLoggedInUri(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    if-nez v2, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshNavDrawer()V

    .line 239
    :cond_2
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getLocalDb()Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/LocalDb;->clearNotifications()V

    .line 241
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshUserNotificationCounts()V

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 245
    .local v0, "n":I
    if-nez v0, :cond_4

    .line 246
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 248
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->doIntent(Landroid/content/Intent;)V

    .line 255
    :cond_4
    :goto_1
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v1

    .line 256
    .local v1, "umqCommunicator":Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->start()V

    goto :goto_0

    .line 251
    .end local v1    # "umqCommunicator":Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    :cond_5
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadUserDefaultFragment()V

    goto :goto_1
.end method

.method public readyForPaypalComplete(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0
    .param p1, "steamWebViewClient"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamWebViewClient:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .line 497
    return-void
.end method

.method public refreshConfirmationsPageIfActive()Z
    .locals 4

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0e00f1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 557
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 558
    check-cast v1, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 559
    .local v1, "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->refreshConfirmationsPageIfActive()Z

    move-result v2

    .line 562
    .end local v1    # "webViewFragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
