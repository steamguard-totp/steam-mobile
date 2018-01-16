.class public Lcom/google/android/gms/internal/zzbgi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbgi$zze;,
        Lcom/google/android/gms/internal/zzbgi$zza;
    }
.end annotation


# direct methods
.method public static zzm(Lcom/google/android/gms/internal/zzaj$zza;)Lcom/google/android/gms/internal/zzaj$zza;
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaj$zza;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    iput v0, v1, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlF:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaj$zza;->zzlF:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlG:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzaj$zza;->zzlG:Z

    :cond_0
    return-object v1
.end method
