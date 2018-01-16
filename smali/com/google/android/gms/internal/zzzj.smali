.class public Lcom/google/android/gms/internal/zzzj;
.super Lcom/google/android/gms/common/api/zzc;

# interfaces
.implements Lcom/google/android/gms/internal/zzzg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzj$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzc",
        "<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;",
        "Lcom/google/android/gms/internal/zzzg;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzzf;->API:Lcom/google/android/gms/common/api/Api;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zzzr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzzr;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzabk;)V

    return-void
.end method

.method public static zzai(Landroid/content/Context;)Lcom/google/android/gms/internal/zzzg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzzj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzj;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static zzb(Lcom/google/android/gms/internal/zzzh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzh;->zzawM:Lcom/google/android/gms/internal/zzzf$zzc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzh;->zzawL:Lcom/google/android/gms/internal/zzbuy$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsF:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzh;->zzawL:Lcom/google/android/gms/internal/zzbuy$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzh;->zzawM:Lcom/google/android/gms/internal/zzzf$zzc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzzf$zzc;->zzuw()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsF:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzh;->zzawN:Lcom/google/android/gms/internal/zzzf$zzc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzh;->zzawL:Lcom/google/android/gms/internal/zzbuy$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsL:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzh;->zzawL:Lcom/google/android/gms/internal/zzbuy$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzh;->zzawN:Lcom/google/android/gms/internal/zzzf$zzc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzzf$zzc;->zzuw()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbuy$zzc;->zzcsL:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzh;->zzawL:Lcom/google/android/gms/internal/zzbuy$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbut;->zzf(Lcom/google/android/gms/internal/zzbut;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzh;->zzawF:[B

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzzh;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzh;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzzj$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzj;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzzj$zza;-><init>(Lcom/google/android/gms/internal/zzzh;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzj;->doBestEffortWrite(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method
