.class final Lcom/google/android/gms/internal/zzato$zzd;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzato;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzbsX:Lcom/google/android/gms/internal/zzato;

.field private final zzbta:Ljava/lang/Object;

.field private final zzbtb:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzato;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbta:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbtb:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzato$zzd;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private zza(Ljava/lang/InterruptedException;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLc()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzato$zzd;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzato;->zza(Lcom/google/android/gms/internal/zzato;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzato$zzd;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_0

    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbtb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzato;->zzc(Lcom/google/android/gms/internal/zzato;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzato;->zza(Lcom/google/android/gms/internal/zzato;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzato;->zzc(Lcom/google/android/gms/internal/zzato;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzato;->zzd(Lcom/google/android/gms/internal/zzato;)Lcom/google/android/gms/internal/zzato$zzd;

    move-result-object v2

    if-ne p0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzato;->zza(Lcom/google/android/gms/internal/zzato;Lcom/google/android/gms/internal/zzato$zzd;)Lcom/google/android/gms/internal/zzato$zzd;

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    throw v0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbta:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbtb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzato;->zzb(Lcom/google/android/gms/internal/zzato;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbta:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_3
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzato;->zzc(Lcom/google/android/gms/internal/zzato;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbtb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzato;->zzc(Lcom/google/android/gms/internal/zzato;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzato;->zza(Lcom/google/android/gms/internal/zzato;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzato;->zzc(Lcom/google/android/gms/internal/zzato;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzato;->zzd(Lcom/google/android/gms/internal/zzato;)Lcom/google/android/gms/internal/zzato$zzd;

    move-result-object v0

    if-ne p0, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzato;->zza(Lcom/google/android/gms/internal/zzato;Lcom/google/android/gms/internal/zzato$zzd;)Lcom/google/android/gms/internal/zzato$zzd;

    :goto_4
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    :catch_1
    move-exception v0

    :try_start_a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzato$zzd;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_3
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzato;->zze(Lcom/google/android/gms/internal/zzato;)Lcom/google/android/gms/internal/zzato$zzd;

    move-result-object v0

    if-ne p0, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzato;->zzb(Lcom/google/android/gms/internal/zzato;Lcom/google/android/gms/internal/zzato$zzd;)Lcom/google/android/gms/internal/zzato$zzd;

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :cond_4
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_4

    :cond_5
    :try_start_e
    monitor-exit v1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_6
    :try_start_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzato;->zze(Lcom/google/android/gms/internal/zzato;)Lcom/google/android/gms/internal/zzato$zzd;

    move-result-object v2

    if-ne p0, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzato;->zzb(Lcom/google/android/gms/internal/zzato;Lcom/google/android/gms/internal/zzato$zzd;)Lcom/google/android/gms/internal/zzato$zzd;

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0

    :cond_7
    :try_start_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbsX:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v2

    const-string v3, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto/16 :goto_2
.end method

.method public zzhf()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbta:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzato$zzd;->zzbta:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
