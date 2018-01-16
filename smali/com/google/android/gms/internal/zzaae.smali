.class public Lcom/google/android/gms/internal/zzaae;
.super Lcom/google/android/gms/internal/zzzw;


# instance fields
.field private zzaxK:Lcom/google/android/gms/internal/zzaap;

.field private final zzazH:Lcom/google/android/gms/common/util/zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzzw;->onStart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazH:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/zza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaap;->zza(Lcom/google/android/gms/internal/zzaae;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzzw;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaap;->zzb(Lcom/google/android/gms/internal/zzaae;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaap;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected zzuW()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaap;->zzuW()V

    return-void
.end method

.method zzvx()Lcom/google/android/gms/common/util/zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazH:Lcom/google/android/gms/common/util/zza;

    return-object v0
.end method
