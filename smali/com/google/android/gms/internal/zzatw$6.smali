.class Lcom/google/android/gms/internal/zzatw$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatw;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbuG:Lcom/google/android/gms/internal/zzatw;

.field final synthetic zzbuJ:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzbuk:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatw;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuJ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuJ:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatw;->zzc(Lcom/google/android/gms/internal/zzatw;)Lcom/google/android/gms/internal/zzate;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatw;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v2, "Failed to get user properties"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuJ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuJ:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatw;->zzJj()Lcom/google/android/gms/internal/zzatf;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatf;->zzfH(Ljava/lang/String;)Lcom/google/android/gms/internal/zzasq;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuk:Z

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/zzate;->zza(Lcom/google/android/gms/internal/zzasq;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatw;->zzd(Lcom/google/android/gms/internal/zzatw;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuJ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatw;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuJ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzatw$6;->zzbuJ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
