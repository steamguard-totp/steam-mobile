.class Lcom/google/android/gms/internal/zzez$1;
.super Lcom/google/android/gms/internal/zzej;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAg:Lcom/google/android/gms/internal/zzez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzez;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzez$1;->zzAg:Lcom/google/android/gms/internal/zzez;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzej;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzez$1;->zzAg:Lcom/google/android/gms/internal/zzez;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzez;->zza(Lcom/google/android/gms/internal/zzez;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzez$1;->zzAg:Lcom/google/android/gms/internal/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzez;->zzbt()Lcom/google/android/gms/internal/zzew;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzew;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzej;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzez$1;->zzAg:Lcom/google/android/gms/internal/zzez;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzez;->zza(Lcom/google/android/gms/internal/zzez;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzez$1;->zzAg:Lcom/google/android/gms/internal/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzez;->zzbt()Lcom/google/android/gms/internal/zzew;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzew;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzej;->onAdLoaded()V

    return-void
.end method
