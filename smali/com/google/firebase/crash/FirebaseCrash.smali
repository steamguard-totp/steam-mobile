.class public Lcom/google/firebase/crash/FirebaseCrash;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static volatile zzbWY:Lcom/google/firebase/crash/FirebaseCrash;


# instance fields
.field private zzbWW:Lcom/google/android/gms/internal/zzbkr;

.field private zzbWX:Lcom/google/android/gms/internal/zzbkn;

.field private zzbqB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/firebase/crash/FirebaseCrash;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crash/FirebaseCrash;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbqB:Z

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Application context is missing, disabling api"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbqB:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbqB:Z

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzbkp;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/zzbkp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbks;->zzUT()Lcom/google/android/gms/internal/zzbks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbks;->zzao(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbks;->zzUT()Lcom/google/android/gms/internal/zzbks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbks;->zzUU()Lcom/google/android/gms/internal/zzbkr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWW:Lcom/google/android/gms/internal/zzbkr;

    iget-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWW:Lcom/google/android/gms/internal/zzbkr;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzbkr;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzbkp;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbkn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbkn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWX:Lcom/google/android/gms/internal/zzbkn;

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzUP()V

    const-string v0, "FirebaseCrash reporting initialized "

    invoke-static {}, Lcom/google/android/gms/internal/zzbks;->zzUT()Lcom/google/android/gms/internal/zzbks;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to initialize crash reporting: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbqB:Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/crash/FirebaseCrash;
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbku;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXh:Lcom/google/android/gms/internal/zzapn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lcom/google/firebase/crash/FirebaseCrash;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/crash/FirebaseCrash;-><init>(Lcom/google/firebase/FirebaseApp;Z)V

    const-class v2, Lcom/google/firebase/crash/FirebaseCrash;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWY:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_0

    sput-object v1, Lcom/google/firebase/crash/FirebaseCrash;->zzbWY:Lcom/google/firebase/crash/FirebaseCrash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWY:Lcom/google/firebase/crash/FirebaseCrash;

    invoke-direct {v0}, Lcom/google/firebase/crash/FirebaseCrash;->zzUM()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzbko; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbqB:Z

    return v0
.end method

.method public static zzUL()Lcom/google/firebase/crash/FirebaseCrash;
    .locals 2

    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWY:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/firebase/crash/FirebaseCrash;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWY:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWY:Lcom/google/firebase/crash/FirebaseCrash;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWY:Lcom/google/firebase/crash/FirebaseCrash;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zzUM()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbko;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbko;

    const-string v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbko;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWX:Lcom/google/android/gms/internal/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbkn;->zzUR()V

    return-void
.end method

.method private zzUN()Lcom/google/android/gms/internal/zzbkr;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWW:Lcom/google/android/gms/internal/zzbkr;

    return-object v0
.end method

.method private static zzUO()Z
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzUP()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->zzUO()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FirebaseCrash reporting may only be initialized on the main thread (preferably in your app\'s Application.onCreate)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbkt;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/zzbkt;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crash/FirebaseCrash;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private zzUQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/firebase/iid/zzc;->zzaab()Lcom/google/firebase/iid/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzc;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->zzUL()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/crash/FirebaseCrash;->zzb(Ljava/lang/String;JLandroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbko; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbko;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public zzb(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbko;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbko;

    const-string v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbko;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzUN()Lcom/google/android/gms/internal/zzbkr;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbkr;->zzb(Ljava/lang/String;JLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->LOG_TAG:Ljava/lang/String;

    const-string v2, "log remoting failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzi(Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbko;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbko;

    const-string v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbko;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzUN()Lcom/google/android/gms/internal/zzbkr;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzbWX:Lcom/google/android/gms/internal/zzbkn;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzbkn;->zza(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzUQ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbkr;->zziD(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbkr;->zzO(Lcom/google/android/gms/dynamic/zzd;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->LOG_TAG:Ljava/lang/String;

    const-string v2, "report remoting failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
