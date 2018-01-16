.class public Lcom/google/android/gms/internal/zzbbx;
.super Lcom/google/android/gms/internal/zzazv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazv;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzazg;[Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;
    .locals 9
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

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    move v0, v4

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v4

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbgb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbgb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v8, p2, v5

    aget-object v0, p2, v4

    check-cast v0, Lcom/google/android/gms/internal/zzbgb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbgb;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    aget-object v1, p2, v2

    check-cast v1, Lcom/google/android/gms/internal/zzbgb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbgb;->zzRF()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_4

    move v2, v4

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    move v6, v5

    move v7, v5

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_7

    if-nez v7, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbfw;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbgf;->zza(Lcom/google/android/gms/internal/zzazg;Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/zzazu;->zzd(Lcom/google/android/gms/internal/zzbfw;Lcom/google/android/gms/internal/zzbfw;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbfw;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbgf;->zza(Lcom/google/android/gms/internal/zzazg;Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v3

    instance-of v2, v3, Lcom/google/android/gms/internal/zzbga;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/android/gms/internal/zzbga;->zzbKT:Lcom/google/android/gms/internal/zzbga;

    if-eq v3, v2, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/zzbga;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbga;->zzRM()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    :goto_4
    return-object v3

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/zzbga;->zzbKS:Lcom/google/android/gms/internal/zzbga;

    if-ne v3, v2, :cond_b

    sget-object v3, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v3

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    :goto_6
    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbfw;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgf;->zza(Lcom/google/android/gms/internal/zzazg;Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v1

    instance-of v0, v1, Lcom/google/android/gms/internal/zzbga;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKT:Lcom/google/android/gms/internal/zzbga;

    if-eq v1, v0, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzbga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbga;->zzRM()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    move-object v3, v1

    goto :goto_4

    :cond_9
    move v4, v5

    goto :goto_6

    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    goto :goto_4

    :cond_b
    move v3, v7

    goto :goto_5
.end method
