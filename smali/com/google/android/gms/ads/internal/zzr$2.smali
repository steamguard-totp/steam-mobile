.class Lcom/google/android/gms/ads/internal/zzr$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/internal/zzgp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzub:Lcom/google/android/gms/ads/internal/zzr;

.field final synthetic zzuc:Lcom/google/android/gms/internal/zzgp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzr;Lcom/google/android/gms/internal/zzgp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzr$2;->zzub:Lcom/google/android/gms/ads/internal/zzr;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzr$2;->zzuc:Lcom/google/android/gms/internal/zzgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr$2;->zzub:Lcom/google/android/gms/ads/internal/zzr;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzr;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvt:Lcom/google/android/gms/internal/zzhj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr$2;->zzub:Lcom/google/android/gms/ads/internal/zzr;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzr;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvt:Lcom/google/android/gms/internal/zzhj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr$2;->zzuc:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhj;->zza(Lcom/google/android/gms/internal/zzhd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
