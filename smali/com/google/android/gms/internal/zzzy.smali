.class public Lcom/google/android/gms/internal/zzzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final zzawb:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzazb:I

.field private zzazc:Lcom/google/android/gms/internal/zzzz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->zzawb:Lcom/google/android/gms/common/api/Api;

    iput p2, p0, Lcom/google/android/gms/internal/zzzy;->zzazb:I

    return-void
.end method

.method private zzvi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzazc:Lcom/google/android/gms/internal/zzzz;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzzy;->zzvi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzazc:Lcom/google/android/gms/internal/zzzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzzz;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzzy;->zzvi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzazc:Lcom/google/android/gms/internal/zzzz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzawb:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzzy;->zzazb:I

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzzz;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzzy;->zzvi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzazc:Lcom/google/android/gms/internal/zzzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzzz;->onConnectionSuspended(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzzz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->zzazc:Lcom/google/android/gms/internal/zzzz;

    return-void
.end method
