.class public Lcom/google/android/gms/internal/zzbbd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzazt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs zzb(Lcom/google/android/gms/internal/zzazg;[Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzazg;",
            "[",
            "Lcom/google/android/gms/internal/zzbfw",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzbfw",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgf;->zza(Lcom/google/android/gms/internal/zzazg;Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazu;->zza(Lcom/google/android/gms/internal/zzbfw;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, p2, v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgf;->zza(Lcom/google/android/gms/internal/zzazg;Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    :goto_2
    instance-of v1, v0, Lcom/google/android/gms/internal/zzbga;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/zzbga;->zzbKU:Lcom/google/android/gms/internal/zzbga;

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal InternalType passed to Ternary."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgf;->zza(Lcom/google/android/gms/internal/zzazg;Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    goto :goto_2

    :cond_3
    return-object v0
.end method
