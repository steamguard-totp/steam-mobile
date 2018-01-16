.class public Lcom/google/android/gms/internal/zzblw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzblw$zza;
    }
.end annotation


# instance fields
.field private final zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbYx:Lcom/google/android/gms/internal/zzbop;

.field private final zzcbh:J

.field private final zzcbi:J

.field private final zzcbj:D

.field private final zzcbk:D

.field private final zzcbl:Ljava/util/Random;

.field private zzcbm:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzcbn:J

.field private zzcbo:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbop;JJDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbl:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbo:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblw;->zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzblw;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzblw;->zzcbh:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzblw;->zzcbi:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzblw;->zzcbk:D

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzblw;->zzcbj:D

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbop;JJDDLcom/google/android/gms/internal/zzblw$1;)V
    .locals 1

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/zzblw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbop;JJDD)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzblw;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblw;->zzcbm:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbm:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblw;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "Cancelling existing retry attempt"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbm:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbm:Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblw;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "No existing retry attempt to cancel"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzUk()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbo:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    return-void
.end method

.method public zzWx()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    return-void
.end method

.method public zzr(Ljava/lang/Runnable;)V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zzblw$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzblw$1;-><init>(Lcom/google/android/gms/internal/zzblw;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblw;->zzcbm:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblw;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v4, "Cancelling previous scheduled retry"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblw;->zzcbm:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/zzblw;->zzcbm:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzblw;->zzcbo:Z

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzblw;->zzcbo:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblw;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v4, "Scheduling retry in %dms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblw;->zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v2, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbm:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    :goto_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzblw;->zzcbj:D

    sub-double/2addr v0, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    long-to-double v4, v4

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzblw;->zzcbj:D

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblw;->zzcbl:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-long v0, v0

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    long-to-double v0, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzblw;->zzcbk:D

    mul-double/2addr v0, v4

    double-to-long v0, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzblw;->zzcbi:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw;->zzcbn:J

    goto :goto_1
.end method
