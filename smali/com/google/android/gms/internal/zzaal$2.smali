.class Lcom/google/android/gms/internal/zzaal$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaal;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaAA:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzaAB:Lcom/google/android/gms/internal/zzabl;

.field final synthetic zzaAz:Lcom/google/android/gms/internal/zzaal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaal;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzabl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaal$2;->zzaAz:Lcom/google/android/gms/internal/zzaal;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaal$2;->zzaAA:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaal$2;->zzaAB:Lcom/google/android/gms/internal/zzabl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaal$2;->zzaAz:Lcom/google/android/gms/internal/zzaal;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaal$2;->zzaAA:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaal$2;->zzaAB:Lcom/google/android/gms/internal/zzabl;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaal;->zza(Lcom/google/android/gms/internal/zzaal;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzabl;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
