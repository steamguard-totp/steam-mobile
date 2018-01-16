.class Lcom/google/android/gms/internal/zzazj;
.super Lcom/google/android/gms/internal/zzazi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzazj$zzb;,
        Lcom/google/android/gms/internal/zzazj$zza;
    }
.end annotation


# static fields
.field private static final zzbFZ:Ljava/lang/Object;

.field private static zzbIB:Lcom/google/android/gms/internal/zzazj;


# instance fields
.field private connected:Z

.field private zzbGa:Landroid/content/Context;

.field private zzbGd:I

.field private zzbGe:Z

.field private zzbGf:Z

.field private zzbGg:Z

.field private zzbGk:Z

.field private zzbIA:Lcom/google/android/gms/internal/zzayz;

.field private zzbIv:Lcom/google/android/gms/internal/zzays;

.field private volatile zzbIw:Lcom/google/android/gms/internal/zzayq;

.field private zzbIx:Z

.field private zzbIy:Lcom/google/android/gms/internal/zzayt;

.field private zzbIz:Lcom/google/android/gms/internal/zzazj$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazj;->zzbFZ:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazi;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGd:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzazj;->zzbGe:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzazj;->zzbGf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzazj;->zzbIx:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzazj;->connected:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzazj;->zzbGg:Z

    new-instance v0, Lcom/google/android/gms/internal/zzazj$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzazj$1;-><init>(Lcom/google/android/gms/internal/zzazj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIy:Lcom/google/android/gms/internal/zzayt;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzazj;->zzbGk:Z

    return-void
.end method

.method private isPowerSaveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGk:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGd:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzPU()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzayz;-><init>(Lcom/google/android/gms/internal/zzazi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIA:Lcom/google/android/gms/internal/zzayz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIA:Lcom/google/android/gms/internal/zzayz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazj;->zzbGa:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzayz;->zzbJ(Landroid/content/Context;)V

    return-void
.end method

.method private zzPV()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzazj$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzazj$zzb;-><init>(Lcom/google/android/gms/internal/zzazj;Lcom/google/android/gms/internal/zzazj$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIz:Lcom/google/android/gms/internal/zzazj$zza;

    iget v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGd:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIz:Lcom/google/android/gms/internal/zzazj$zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzazj;->zzbGd:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzazj$zza;->zzx(J)V

    :cond_0
    return-void
.end method

.method static synthetic zzPX()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzazj;->zzbFZ:Ljava/lang/Object;

    return-object v0
.end method

.method public static zzQM()Lcom/google/android/gms/internal/zzazj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzazj;->zzbIB:Lcom/google/android/gms/internal/zzazj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzazj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzazj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazj;->zzbIB:Lcom/google/android/gms/internal/zzazj;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzazj;->zzbIB:Lcom/google/android/gms/internal/zzazj;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzazj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGa:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzazj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzazj;->zzbIx:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzazj;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazj;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzazj;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGd:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzazj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->connected:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzazj;)Lcom/google/android/gms/internal/zzays;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIv:Lcom/google/android/gms/internal/zzays;

    return-object v0
.end method

.method private zzog()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazj;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIz:Lcom/google/android/gms/internal/zzazj$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazj$zza;->cancel()V

    const-string v0, "PowerSaveMode initiated."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIz:Lcom/google/android/gms/internal/zzazj$zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzazj;->zzbGd:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzazj$zza;->zzx(J)V

    const-string v0, "PowerSaveMode terminated."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGf:Z

    if-nez v0, :cond_1

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGe:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIx:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIw:Lcom/google/android/gms/internal/zzayq;

    new-instance v1, Lcom/google/android/gms/internal/zzazj$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzazj$2;-><init>(Lcom/google/android/gms/internal/zzazj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzayq;->zzp(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzQN()Lcom/google/android/gms/internal/zzays;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIv:Lcom/google/android/gms/internal/zzays;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGa:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzaza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazj;->zzbIy:Lcom/google/android/gms/internal/zzayt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazj;->zzbGa:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaza;-><init>(Lcom/google/android/gms/internal/zzayt;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIv:Lcom/google/android/gms/internal/zzays;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIz:Lcom/google/android/gms/internal/zzazj$zza;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazj;->zzPV()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGf:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGe:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazj;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGe:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIA:Lcom/google/android/gms/internal/zzayz;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGg:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazj;->zzPU()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIv:Lcom/google/android/gms/internal/zzays;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzayq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGa:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGa:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIw:Lcom/google/android/gms/internal/zzayq;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazj;->zzbIw:Lcom/google/android/gms/internal/zzayq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzaN(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbGk:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzazj;->zze(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zze(ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazj;->isPowerSaveMode()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzazj;->zzbGk:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzazj;->connected:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazj;->isPowerSaveMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazj;->zzog()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zznn()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazj;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj;->zzbIz:Lcom/google/android/gms/internal/zzazj$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazj$zza;->zzPY()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
