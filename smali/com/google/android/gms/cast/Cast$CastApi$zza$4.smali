.class Lcom/google/android/gms/cast/Cast$CastApi$zza$4;
.super Lcom/google/android/gms/cast/Cast$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzf;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sessionId:Ljava/lang/String;

.field final synthetic zzalW:Ljava/lang/String;

.field final synthetic zzalY:Lcom/google/android/gms/cast/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzf;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$4;->zzalW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$4;->val$sessionId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$4;->zzalY:Lcom/google/android/gms/cast/zzf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/Cast$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzyl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$zza$4;->zza(Lcom/google/android/gms/internal/zzyl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzyl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$4;->zzalW:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$4;->val$sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$4;->zzalY:Lcom/google/android/gms/cast/zzf;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/zzyl;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzf;Lcom/google/android/gms/internal/zzzv$zzb;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$zza$4;->zzch(I)V

    goto :goto_0
.end method
