.class Lcom/google/android/gms/cast/Cast$CastApi$zza$7;
.super Lcom/google/android/gms/internal/zzyq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$zza;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$7;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzyq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$zza$7;->zza(Lcom/google/android/gms/internal/zzyl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzyl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v1, 0x7d1

    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$7;->val$sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IllegalArgument: sessionId cannot be null or empty"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi$zza$7;->zze(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$7;->val$sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/zzyl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzzv$zzb;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/Cast$CastApi$zza$7;->zzch(I)V

    goto :goto_0
.end method
