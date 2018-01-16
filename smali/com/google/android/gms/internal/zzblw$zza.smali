.class public Lcom/google/android/gms/internal/zzblw$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzbYx:Lcom/google/android/gms/internal/zzbop;

.field private zzcbh:J

.field private zzcbj:D

.field private zzcbk:D

.field private final zzcbq:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzcbr:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbh:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbj:D

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbr:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbk:D

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbq:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/zzbop;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbop;-><init>(Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    return-void
.end method


# virtual methods
.method public zzWy()Lcom/google/android/gms/internal/zzblw;
    .locals 13

    new-instance v1, Lcom/google/android/gms/internal/zzblw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbq:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbh:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbr:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbk:D

    iget-wide v10, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbj:D

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzblw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbop;JJDDLcom/google/android/gms/internal/zzblw$1;)V

    return-object v1
.end method

.method public zzaI(J)Lcom/google/android/gms/internal/zzblw$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbh:J

    return-object p0
.end method

.method public zzaJ(J)Lcom/google/android/gms/internal/zzblw$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbr:J

    return-object p0
.end method

.method public zzj(D)Lcom/google/android/gms/internal/zzblw$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbk:D

    return-object p0
.end method

.method public zzk(D)Lcom/google/android/gms/internal/zzblw$zza;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Argument out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzblw$zza;->zzcbj:D

    return-object p0
.end method
