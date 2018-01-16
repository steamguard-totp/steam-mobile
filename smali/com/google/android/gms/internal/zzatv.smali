.class public Lcom/google/android/gms/internal/zzatv;
.super Lcom/google/android/gms/internal/zzats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzatv$zza;
    }
.end annotation


# instance fields
.field protected zzbul:Lcom/google/android/gms/internal/zzatv$zza;

.field private volatile zzbum:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

.field private zzbun:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

.field private zzbuo:J

.field private final zzbup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzatv$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbuq:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzbur:Z

.field private zzbus:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

.field private zzbut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzatp;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzats;-><init>(Lcom/google/android/gms/internal/zzatp;)V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbup:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbuq:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzatv$zza;Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbum:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbum:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    :goto_0
    if-eqz v1, :cond_4

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement$zzf;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    move-object v1, v0

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzatv;->zzbur:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbuq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/AppMeasurement$zzd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/measurement/AppMeasurement$zzd;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    and-int/2addr v0, v2

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbun:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzatv;->zzbuo:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbun:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v4

    const-string v5, "onScreenChangeCallback threw exception"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto :goto_3

    :cond_1
    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzatv;->zzbur:Z

    :goto_4
    if-eqz v2, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatv$zza;->zzbpA:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatv;->zzfV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/zzatv$zza;->zzbpA:Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzatv$zza;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzatv$zza;-><init>(Lcom/google/android/gms/internal/zzatv$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbum:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbun:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzatv;->zzbuo:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbum:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJs()Lcom/google/android/gms/internal/zzato;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzatv$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/google/android/gms/internal/zzatv$1;-><init>(Lcom/google/android/gms/internal/zzatv;ZLcom/google/android/gms/internal/zzatv$zza;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzato;->zzm(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v1

    const-string v3, "onScreenChangeCallback loop threw exception"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzatv;->zzbur:Z

    goto :goto_4

    :catchall_0
    move-exception v0

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzatv;->zzbur:Z

    throw v0

    :cond_4
    move-object v1, v0

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private zza(Lcom/google/android/gms/internal/zzatv$zza;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJg()Lcom/google/android/gms/internal/zzaso;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaso;->zzV(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJr()Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzatv$zza;->zzbuy:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaty;->zzaJ(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzatv$zza;->zzbuy:Z

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzatv;Lcom/google/android/gms/internal/zzatv$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzatv;->zza(Lcom/google/android/gms/internal/zzatv$zza;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbpz:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "_sn"

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbpz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "_sc"

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbpA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_si"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbpB:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method static zzfV(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x24

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzatv;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzatv$zza;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzatv$zza;->zzbpB:J

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzatv$zza;->zzbpz:Ljava/lang/String;

    const-string v2, "referrer_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzatv$zza;->zzbpA:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzatv;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzatv$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbum:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbun:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzatv;->zzbuo:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbum:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJs()Lcom/google/android/gms/internal/zzato;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzatv$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzatv$2;-><init>(Lcom/google/android/gms/internal/zzatv;Lcom/google/android/gms/internal/zzatv$zza;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzato;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzatv;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzatv$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzatv;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzatv$zza;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJg()Lcom/google/android/gms/internal/zzaso;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaso;->zzJc()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatv$zza;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatv$zza;->zzbpB:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "name"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatv$zza;->zzbpz:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "referrer_name"

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatv$zza;->zzbpA:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zzd;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJe()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLc()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Attempting to register null OnScreenChangeCallback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbuq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbuq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zzd;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbuq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic zzJd()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJd()V

    return-void
.end method

.method public bridge synthetic zzJe()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJe()V

    return-void
.end method

.method public bridge synthetic zzJf()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJf()V

    return-void
.end method

.method public bridge synthetic zzJg()Lcom/google/android/gms/internal/zzaso;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJg()Lcom/google/android/gms/internal/zzaso;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJh()Lcom/google/android/gms/internal/zzass;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJh()Lcom/google/android/gms/internal/zzass;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJi()Lcom/google/android/gms/internal/zzatu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJi()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJj()Lcom/google/android/gms/internal/zzatf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJj()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJk()Lcom/google/android/gms/internal/zzasw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJk()Lcom/google/android/gms/internal/zzasw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJl()Lcom/google/android/gms/internal/zzatw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJl()Lcom/google/android/gms/internal/zzatw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJm()Lcom/google/android/gms/internal/zzatv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJm()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJn()Lcom/google/android/gms/internal/zzatg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJn()Lcom/google/android/gms/internal/zzatg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJo()Lcom/google/android/gms/internal/zzasu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJo()Lcom/google/android/gms/internal/zzasu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJp()Lcom/google/android/gms/internal/zzaue;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJp()Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJq()Lcom/google/android/gms/internal/zzatn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJq()Lcom/google/android/gms/internal/zzatn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJr()Lcom/google/android/gms/internal/zzaty;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJr()Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJs()Lcom/google/android/gms/internal/zzato;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJs()Lcom/google/android/gms/internal/zzato;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJt()Lcom/google/android/gms/internal/zzati;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJu()Lcom/google/android/gms/internal/zzatl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJv()Lcom/google/android/gms/internal/zzast;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v0

    return-object v0
.end method

.method public zzLU()Lcom/google/android/gms/internal/zzatv$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzmq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbul:Lcom/google/android/gms/internal/zzatv$zza;

    return-object v0
.end method

.method public zzLV()Lcom/google/android/gms/measurement/AppMeasurement$zzf;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJe()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbum:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement$zzf;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzmq()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbut:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbut:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzatv;->zzbut:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatv;->zzbus:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzfU(Ljava/lang/String;)Lcom/google/android/gms/measurement/AppMeasurement$zzf;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbus:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbut:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbut:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbus:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic zzmq()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzmq()V

    return-void
.end method

.method protected zzmr()V
    .locals 0

    return-void
.end method

.method public bridge synthetic zznq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

.method zzv(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzatv$zza;
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatv$zza;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatv;->zzfV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzatv$zza;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJp()Lcom/google/android/gms/internal/zzaue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaue;->zzMi()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/zzatv$zza;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbup:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
