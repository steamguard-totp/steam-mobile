.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;


# instance fields
.field private final zzbCS:Ljava/lang/String;

.field private zzbCU:Lcom/google/android/gms/tagmanager/zzcx;


# direct methods
.method private declared-synchronized zzOB()Lcom/google/android/gms/tagmanager/zzcx;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbCU:Lcom/google/android/gms/tagmanager/zzcx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbCS:Ljava/lang/String;

    return-object v0
.end method

.method release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbCU:Lcom/google/android/gms/tagmanager/zzcx;

    return-void
.end method

.method public zzgX(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzOB()Lcom/google/android/gms/tagmanager/zzcx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzcx;->zzgX(Ljava/lang/String;)V

    return-void
.end method
