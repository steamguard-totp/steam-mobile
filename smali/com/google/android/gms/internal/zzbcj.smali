.class public Lcom/google/android/gms/internal/zzbcj;
.super Lcom/google/android/gms/internal/zzazv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazv;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzazg;[Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;
    .locals 7
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

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-eq v0, v6, :cond_0

    array-length v0, p2

    if-ne v0, v5, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbge;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazu;->zzd(Lcom/google/android/gms/internal/zzbfw;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    array-length v4, p2

    if-ne v4, v5, :cond_1

    aget-object v4, p2, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/zzazu;->zzb(Lcom/google/android/gms/internal/zzbfw;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v2, p2, v6

    invoke-static {v2}, Lcom/google/android/gms/internal/zzazu;->zzc(Lcom/google/android/gms/internal/zzbfw;)D

    move-result-wide v2

    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/zzbfy;

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzbfy;-><init>(Ljava/lang/Double;)V

    return-object v4

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
