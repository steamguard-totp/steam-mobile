.class Lcom/google/android/gms/internal/zziq$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zziq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziq$1;->onAdFailedToLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIm:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziq$1;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zziq$1$2;->zzIm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzir;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzti:Lcom/google/android/gms/internal/zzel;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzti:Lcom/google/android/gms/internal/zzel;

    iget v1, p0, Lcom/google/android/gms/internal/zziq$1$2;->zzIm:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzel;->onAdFailedToLoad(I)V

    :cond_0
    return-void
.end method
