.class public Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;
.super Landroid/app/Application;
.source "SteamCommunityApplication.java"


# static fields
.field public static final confirmationRefreshHandler:Landroid/os/Handler;

.field private static final foregroundStatusHandler:Landroid/os/Handler;

.field public static isInForeground:Z

.field public static mMainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

.field public static m_CrashHandler:Lcom/valvesoftware/android/steam/community/CrashHandler;

.field private static m_singleton:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;


# instance fields
.field private backgroundThreadHandler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field public imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

.field private m_diskCacheIndefinite:Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;

.field private m_settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

.field public requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/valvesoftware/android/steam/community/CrashHandler;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/CrashHandler;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_CrashHandler:Lcom/valvesoftware/android/steam/community/CrashHandler;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_singleton:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->foregroundStatusHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->confirmationRefreshHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_diskCacheIndefinite:Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;

    .line 35
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SteamCommunityApplication.BackgroundHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_singleton:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    return-object v0
.end method

.method public static switchingToBackground()V
    .locals 4

    .prologue
    .line 187
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->foregroundStatusHandler:Landroid/os/Handler;

    new-instance v1, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$2;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$2;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->mMainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 195
    return-void
.end method

.method public static switchingToForeground(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .prologue
    .line 198
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->foregroundStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    const/4 v0, 0x1

    sput-boolean v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->isInForeground:Z

    .line 200
    sput-object p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->mMainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 201
    return-void
.end method


# virtual methods
.method public GetDiskCacheIndefinite()Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_diskCacheIndefinite:Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;

    return-object v0
.end method

.method public GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    return-object v0
.end method

.method public PreemptivelyLoginBasedOnCachedLoginDocument()V
    .locals 9

    .prologue
    .line 141
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetDiskCacheIndefinite()Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;

    move-result-object v7

    const-string v8, "login.json"

    invoke-virtual {v7, v8}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;->Read(Ljava/lang/String;)[B

    move-result-object v6

    .line 142
    .local v6, "logindata":[B
    if-nez v6, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 146
    .local v2, "document":Ljava/lang/String;
    const/4 v4, 0x0

    .line 149
    .local v4, "loginInformationFinal":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
    :try_start_0
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "doc":Ljava/lang/Object;
    const-class v7, Lorg/json/JSONObject;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 151
    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 153
    .local v3, "jsonDoc":Lorg/json/JSONObject;
    const-string v7, "access_token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "x_steamid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    new-instance v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    invoke-direct {v5, v3}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "loginInformationFinal":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
    .local v5, "loginInformationFinal":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
    move-object v4, v5

    .line 161
    .end local v1    # "doc":Ljava/lang/Object;
    .end local v3    # "jsonDoc":Lorg/json/JSONObject;
    .end local v5    # "loginInformationFinal":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
    .restart local v4    # "loginInformationFinal":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 162
    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setLoginInformation(Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;)V

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public UpdateCachedLoginInformation()V
    .locals 4

    .prologue
    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v0, "doc":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginInformation()Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->SerializeToJSONDoc(Lorg/json/JSONObject;)V

    .line 176
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetDiskCacheIndefinite()Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;

    move-result-object v1

    const-string v2, "login.json"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;->Write(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLocalDb()Lcom/valvesoftware/android/steam/community/LocalDb;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

    return-object v0
.end method

.method public final onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 51
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->backgroundThreadHandler:Landroid/os/Handler;

    .line 54
    sput-object p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_singleton:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    .line 55
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 56
    new-instance v1, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v3, Lcom/valvesoftware/android/steam/community/LruBitmapCache;

    .line 57
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/LruBitmapCache;->getCacheSize(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/valvesoftware/android/steam/community/LruBitmapCache;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION:Ljava/lang/String;

    .line 63
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION_ID:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_CrashHandler:Lcom/valvesoftware/android/steam/community/CrashHandler;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/CrashHandler;->register()V

    .line 70
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 71
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 72
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->resetAllCookies()V

    .line 74
    new-instance v1, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cache_i"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_diskCacheIndefinite:Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;

    .line 76
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfoDB;-><init>()V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->m_settingInfoDB:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    .line 77
    new-instance v1, Lcom/valvesoftware/android/steam/community/LocalDb;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/valvesoftware/android/steam/community/LocalDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

    .line 79
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->initializeSteamguardState(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->PreemptivelyLoginBasedOnCachedLoginDocument()V

    .line 86
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->syncAllCookies()V

    .line 87
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public runOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->backgroundThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method public sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V
    .locals 5
    .param p1, "requestBuilder"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .prologue
    .line 103
    sget-object v3, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v4, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Dev:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v3, v4, :cond_0

    .line 104
    invoke-static {}, Lcom/valvesoftware/android/steam/community/DevHttpsTrustManager;->allowSslToValveDev()V

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->getResponseListener()Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    move-result-object v0

    .line 107
    .local v0, "originalResponseListener":Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
    new-instance v2, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;

    invoke-direct {v2, p0, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;-><init>(Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 132
    .local v2, "responseListenerWrapper":Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
    invoke-virtual {p1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 133
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setAccessToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->toRequest()Lcom/android/volley/Request;

    move-result-object v1

    .line 136
    .local v1, "request":Lcom/android/volley/Request;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 137
    return-void
.end method
