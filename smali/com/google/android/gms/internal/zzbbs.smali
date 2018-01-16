.class public Lcom/google/android/gms/internal/zzbbs;
.super Lcom/google/android/gms/internal/zzazv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazv;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzazg;[Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;
    .locals 5
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

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-eq v0, v3, :cond_0

    array-length v0, p2

    if-ne v0, v4, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbgb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-ne v0, v4, :cond_1

    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbgb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzazu;->zza(Lcom/google/android/gms/internal/zzbfw;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v0, p2, v1

    check-cast v0, Lcom/google/android/gms/internal/zzbgb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbgb;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_2
    :goto_2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgf;->zza(Lcom/google/android/gms/internal/zzazg;Ljava/util/List;)Lcom/google/android/gms/internal/zzbga;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbga;

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgf;->zzo(Lcom/google/android/gms/internal/zzbfw;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    array-length v1, p2

    if-le v1, v3, :cond_2

    aget-object v0, p2, v3

    check-cast v0, Lcom/google/android/gms/internal/zzbgb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbgb;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    goto :goto_3
.end method
