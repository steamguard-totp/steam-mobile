.class public final Lcom/google/android/gms/common/internal/zzf$zzk;
.super Lcom/google/android/gms/common/internal/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzf$zza;"
    }
.end annotation


# instance fields
.field final synthetic zzaDV:Lcom/google/android/gms/common/internal/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzf;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf$zzk;->zzaDV:Lcom/google/android/gms/common/internal/zzf;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzf$zza;-><init>(Lcom/google/android/gms/common/internal/zzf;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected zzn(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzk;->zzaDV:Lcom/google/android/gms/common/internal/zzf;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzf;->zzaDJ:Lcom/google/android/gms/common/internal/zzf$zzf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/zzf$zzf;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzk;->zzaDV:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzf;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected zzwZ()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzk;->zzaDV:Lcom/google/android/gms/common/internal/zzf;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzf;->zzaDJ:Lcom/google/android/gms/common/internal/zzf$zzf;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->zzawX:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zzf$zzf;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
