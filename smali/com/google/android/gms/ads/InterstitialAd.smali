.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final zzrL:Lcom/google/android/gms/internal/zzfa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzfa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    return-void
.end method


# virtual methods
.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzbq()Lcom/google/android/gms/internal/zzey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfa;->zza(Lcom/google/android/gms/internal/zzey;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    check-cast p1, Lcom/google/android/gms/internal/zzdt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->zza(Lcom/google/android/gms/internal/zzdt;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfa;->zza(Lcom/google/android/gms/internal/zzdt;)V

    goto :goto_0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfa;->show()V

    return-void
.end method

.method public zzd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->zzd(Z)V

    return-void
.end method
