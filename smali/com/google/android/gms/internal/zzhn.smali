.class public Lcom/google/android/gms/internal/zzhn;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzhc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zzL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhc;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhc$zza;->zzD(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzhn;->zzL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhc;

    move-result-object v0

    return-object v0
.end method
