.class public Lcom/google/android/gms/internal/zzath;
.super Lcom/google/android/gms/common/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;)V
    .locals 7

    const/16 v3, 0x5d

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzf;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzes(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzate;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzate$zza;->zzer(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzate;

    move-result-object v0

    return-object v0
.end method

.method protected zzeu()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method

.method protected zzev()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method

.method public synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzath;->zzes(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzate;

    move-result-object v0

    return-object v0
.end method
