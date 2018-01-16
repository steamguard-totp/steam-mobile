.class public Lcom/valvesoftware/android/steam/community/GcmRegistrar;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"


# static fields
.field private static final gcmHandler:Landroid/os/Handler;


# instance fields
.field private final context:Landroid/content/Context;

.field private numberOfFailedRegistrationAttempts:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->gcmHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->numberOfFailedRegistrationAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/GcmRegistrar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/GcmRegistrar;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->numberOfFailedRegistrationAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->gcmHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/GcmRegistrar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->unregister(Z)V

    return-void
.end method

.method private checkPlayServices()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    .local v0, "resultCode":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 116
    .end local v0    # "resultCode":I
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 105
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-class v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private unregister(Z)V
    .locals 4
    .param p1, "withRetry"    # Z

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;

    invoke-direct {v0, p0, p1}, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;-><init>(Lcom/valvesoftware/android/steam/community/GcmRegistrar;Z)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 148
    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public clearStoredRegistrationId()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "registration_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public getStoredRegistrationId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "registration_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "storedRegId":Ljava/lang/String;
    return-object v1
.end method

.method public registerWithGcm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;-><init>(Lcom/valvesoftware/android/steam/community/GcmRegistrar;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 66
    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public storeRegistrationIdAndSendToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->context:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 82
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 83
    .local v0, "appVersion":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 84
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "registration_id"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v3, "appVersion"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v3, "lastRegTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setServerPushStateBasedOnUserPreference()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->unregister(Z)V

    .line 122
    return-void
.end method
