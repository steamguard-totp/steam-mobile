.class public Lcom/google/android/gms/internal/zzcp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private final zzrN:Ljava/lang/Object;

.field private final zztr:Lcom/google/android/gms/internal/zzqa;

.field private final zzvX:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/zzov;",
            "Lcom/google/android/gms/internal/zzcq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzcq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvZ:Landroid/content/Context;

.field private final zzwa:Lcom/google/android/gms/internal/zzja;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzja;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzrN:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvY:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvZ:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcp;->zztr:Lcom/google/android/gms/internal/zzqa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcp;->zzwa:Lcom/google/android/gms/internal/zzja;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzcq;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcq;->zzdF()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;)V
    .locals 1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Landroid/view/View;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcq$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzcq$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzov;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzcx;Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Landroid/view/View;Lcom/google/android/gms/internal/zzjb;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcq$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzcq$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzov;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzcx;Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzcx;Lcom/google/android/gms/internal/zzjb;)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcp;->zzrN:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzcp;->zzi(Lcom/google/android/gms/internal/zzov;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcq;

    :goto_0
    if-eqz p4, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzcs;

    invoke-direct {v1, v0, p4}, Lcom/google/android/gms/internal/zzcs;-><init>(Lcom/google/android/gms/internal/zzcq;Lcom/google/android/gms/internal/zzjb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcq;->zza(Lcom/google/android/gms/internal/zzcu;)V

    :goto_1
    monitor-exit v6

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzcq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzvZ:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcp;->zztr:Lcom/google/android/gms/internal/zzqa;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzcx;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcq;->zza(Lcom/google/android/gms/internal/zzcr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzvY:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/zzct;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcp;->zzwa:Lcom/google/android/gms/internal/zzja;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzct;-><init>(Lcom/google/android/gms/internal/zzcq;Lcom/google/android/gms/internal/zzja;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcq;->zza(Lcom/google/android/gms/internal/zzcu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzgu;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcq$zza;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzcq$zza;-><init>(Lcom/google/android/gms/internal/zzgu;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzcx;Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzov;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->zzdF()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzov;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->zzdD()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzov;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->stop()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzov;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->pause()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzov;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzvX:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->resume()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
