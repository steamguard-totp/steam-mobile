.class public final Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/zza;


# static fields
.field private static zzaaF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaaG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzaaI:Z

.field private volatile zzaaJ:Z

.field private zzaaK:Z

.field private zztW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaF:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzrw;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaG:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrw;->zzW(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznE()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public static zzlW()V
    .locals 3

    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaF:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaF:Ljava/util/List;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private zzma()Lcom/google/android/gms/internal/zzth;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzlM()Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zzma()Lcom/google/android/gms/internal/zzth;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppOptOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaJ:Z

    return v0
.end method

.method public initialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzlV()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zztW:Z

    return-void
.end method

.method public isDryRunEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaI:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zztW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzlM()Lcom/google/android/gms/internal/zzrw;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/internal/zzrw;Ljava/lang/String;Lcom/google/android/gms/internal/zzsv;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker;->initialize()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDryRun(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaI:Z

    return-void
.end method

.method public setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzsw;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaK:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzsq;->zzaek:Lcom/google/android/gms/internal/zzsq$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzsq;->zzaek:Lcom/google/android/gms/internal/zzsq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsq$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x70

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzaaK:Z

    :cond_0
    return-void
.end method

.method zzlV()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzma()Lcom/google/android/gms/internal/zzth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzth;->zzpi()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzth;->zzpm()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzth;->zzpn()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzth;->zzpi()Z

    return-void
.end method

.method public zzlX()Ljava/lang/String;
    .locals 1

    const-string v0, "getClientId can not be called from the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzlM()Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznH()Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzse;->zzop()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
