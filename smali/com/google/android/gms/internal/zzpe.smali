.class public final Lcom/google/android/gms/internal/zzpe;
.super Lcom/google/android/gms/internal/zzpy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# direct methods
.method public static v(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/zzpe;->zzkh()Z

    return-void
.end method

.method public static zzkg()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfx;->zzCL:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static zzkh()Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzai(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzpe;->zzkg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
