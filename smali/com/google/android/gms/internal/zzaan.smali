.class public Lcom/google/android/gms/internal/zzaan;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaau;
.implements Lcom/google/android/gms/internal/zzzz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaan$zza;,
        Lcom/google/android/gms/internal/zzaan$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaAE:Ljava/util/concurrent/locks/Condition;

.field private final zzaAF:Lcom/google/android/gms/internal/zzaan$zzb;

.field final zzaAG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzaAH:Lcom/google/android/gms/internal/zzaam;

.field private zzaAI:Lcom/google/android/gms/common/ConnectionResult;

.field zzaAJ:I

.field final zzaAK:Lcom/google/android/gms/internal/zzaau$zza;

.field final zzaAr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field final zzaxY:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzaxn;",
            "Lcom/google/android/gms/internal/zzaxo;",
            ">;"
        }
    .end annotation
.end field

.field final zzazd:Lcom/google/android/gms/internal/zzaal;

.field private final zzazn:Ljava/util/concurrent/locks/Lock;

.field final zzazs:Lcom/google/android/gms/common/internal/zzg;

.field final zzazu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzazw:Lcom/google/android/gms/common/zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaal;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzaau$zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzaal;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzaxn;",
            "Lcom/google/android/gms/internal/zzaxo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzzy;",
            ">;",
            "Lcom/google/android/gms/internal/zzaau$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAG:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAI:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaan;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaan;->zzazw:Lcom/google/android/gms/common/zzc;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaan;->zzaAr:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaan;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzaan;->zzazu:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzaan;->zzaxY:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaan;->zzazd:Lcom/google/android/gms/internal/zzaal;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzaan;->zzaAK:Lcom/google/android/gms/internal/zzaau$zza;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzzy;->zza(Lcom/google/android/gms/internal/zzzz;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaan$zzb;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/zzaan$zzb;-><init>(Lcom/google/android/gms/internal/zzaan;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAF:Lcom/google/android/gms/internal/zzaan$zzb;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAE:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/internal/zzaak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaak;-><init>(Lcom/google/android/gms/internal/zzaan;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaan;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaan;)Lcom/google/android/gms/internal/zzaam;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    return-object v0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaan;->connect()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaan;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAE:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaan;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzawX:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAI:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAI:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaam;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaam;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaan;->zzaAr:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzuH()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zze;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzaai;

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzaaj;

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaam;->onConnected(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaam;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaam;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zza(Lcom/google/android/gms/internal/zzaan$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAF:Lcom/google/android/gms/internal/zzaan$zzb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaan$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzaAF:Lcom/google/android/gms/internal/zzaan$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaan$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zza(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAF:Lcom/google/android/gms/internal/zzaan$zzb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaan$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzaAF:Lcom/google/android/gms/internal/zzaan$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaan$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzabi;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzzv$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzzv$zza;->zzvf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaam;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaan;->zzaAI:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/zzaak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaak;-><init>(Lcom/google/android/gms/internal/zzaan;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaam;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAE:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzuN()V
    .locals 0

    return-void
.end method

.method zzvO()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzaaj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaan;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaan;->zzazu:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaan;->zzazw:Lcom/google/android/gms/common/zzc;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaan;->zzaxY:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzaan;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzaaj;-><init>(Lcom/google/android/gms/internal/zzaan;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaam;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAE:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzvP()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazd:Lcom/google/android/gms/internal/zzaal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaal;->zzvL()Z

    new-instance v0, Lcom/google/android/gms/internal/zzaai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaai;-><init>(Lcom/google/android/gms/internal/zzaan;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaam;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAE:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzazn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzvQ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzvj()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaan;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzaAH:Lcom/google/android/gms/internal/zzaam;

    check-cast v0, Lcom/google/android/gms/internal/zzaai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaai;->zzvz()V

    :cond_0
    return-void
.end method
