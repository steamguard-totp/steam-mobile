.class public Lcom/google/android/gms/internal/zzbk;
.super Lcom/google/android/gms/internal/zzby;


# static fields
.field private static volatile zzbH:Ljava/lang/Long;

.field private static final zzqW:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbk;->zzbH:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbk;->zzqW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzby;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V

    return-void
.end method


# virtual methods
.method protected zzbe()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzbH:Ljava/lang/Long;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzbk;->zzqW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzbH:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrj:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lcom/google/android/gms/internal/zzbk;->zzbH:Ljava/lang/Long;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzra:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzra:Lcom/google/android/gms/internal/zzaf$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbk;->zzbH:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzbH:Ljava/lang/Long;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
