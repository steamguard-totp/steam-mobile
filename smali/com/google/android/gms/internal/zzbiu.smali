.class public Lcom/google/android/gms/internal/zzbiu;
.super Lcom/google/android/gms/common/api/zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzc",
        "<",
        "Lcom/google/android/gms/internal/zzbjc$zza;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbjc$zza;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbjc;->zzbVY:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/firebase/zza;

    invoke-direct {v1}, Lcom/google/firebase/zza;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzabk;)V

    return-void
.end method
