.class public Lcom/google/android/gms/internal/zzzf$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private zzawA:Z

.field private final zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

.field private zzawC:Z

.field final synthetic zzawD:Lcom/google/android/gms/internal/zzzf;

.field private zzawm:Ljava/lang/String;

.field private zzawn:I

.field private zzawo:Ljava/lang/String;

.field private zzawp:Ljava/lang/String;

.field private zzawr:I

.field private final zzawv:Lcom/google/android/gms/internal/zzzf$zzc;

.field private zzaww:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzawx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzawy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzawz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzzf;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzzf$zza;-><init>(Lcom/google/android/gms/internal/zzzf;[BLcom/google/android/gms/internal/zzzf$zzc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzzf;[BLcom/google/android/gms/internal/zzzf$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzzf$zza;-><init>(Lcom/google/android/gms/internal/zzzf;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzzf;[BLcom/google/android/gms/internal/zzzf$zzc;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzf;->zza(Lcom/google/android/gms/internal/zzzf;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzf;->zzb(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawm:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzf;->zzc(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzf;->zzd(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawp:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzf;->zze(Lcom/google/android/gms/internal/zzzf;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawr:I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzaww:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawx:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawy:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawz:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawA:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbuy$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbuy$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawC:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzf;->zzc(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawo:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzf;->zzd(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawp:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzf;->zzf(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsy:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzf;->zzf(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzf;->zzg(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/internal/zzzf$zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsy:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzzf$zzd;->zzG(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsJ:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsF:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawv:Lcom/google/android/gms/internal/zzzf$zzc;

    return-void
.end method


# virtual methods
.method public zzcn(I)Lcom/google/android/gms/internal/zzzf$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    iput p1, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsB:I

    return-object p0
.end method

.method public zzco(I)Lcom/google/android/gms/internal/zzzf$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    iput p1, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzrn:I

    return-object p0
.end method

.method public zze(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzf$zza;->zzuv()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zzuu()Lcom/google/android/gms/internal/zzzh;
    .locals 13

    const/4 v12, 0x0

    new-instance v11, Lcom/google/android/gms/internal/zzzh;

    new-instance v0, Lcom/google/android/gms/internal/zzawe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzzf;->zzi(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzf;->zzj(Lcom/google/android/gms/internal/zzzf;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawn:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawm:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawo:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawp:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzzf;->zzh(Lcom/google/android/gms/internal/zzzf;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawr:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzawe;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawB:Lcom/google/android/gms/internal/zzbuy$zzc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawv:Lcom/google/android/gms/internal/zzzf$zzc;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzzf;->zze(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-static {v12}, Lcom/google/android/gms/internal/zzzf;->zzf(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/google/android/gms/internal/zzzf;->zze(Ljava/util/ArrayList;)[I

    move-result-object v8

    invoke-static {v12}, Lcom/google/android/gms/internal/zzzf;->zzg(Ljava/util/ArrayList;)[[B

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawA:Z

    move-object v1, v11

    move-object v2, v0

    move-object v5, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzzh;-><init>(Lcom/google/android/gms/internal/zzawe;Lcom/google/android/gms/internal/zzbuy$zzc;Lcom/google/android/gms/internal/zzzf$zzc;Lcom/google/android/gms/internal/zzzf$zzc;[I[Ljava/lang/String;[I[[BZ)V

    return-object v11
.end method

.method public zzuv()Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawC:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawC:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzf$zza;->zzuu()Lcom/google/android/gms/internal/zzzh;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzzh;->zzawE:Lcom/google/android/gms/internal/zzawe;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzf;->zzk(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/internal/zzzf$zzb;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzawe;->zzbzD:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/zzawe;->zzbzz:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/zzzf$zzb;->zzh(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf$zza;->zzawD:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzzf;->zzl(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/internal/zzzg;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzzg;->zza(Lcom/google/android/gms/internal/zzzh;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0
.end method
