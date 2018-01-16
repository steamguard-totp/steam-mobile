.class public Lcom/google/android/gms/internal/zzbdc;
.super Lcom/google/android/gms/internal/zzazv;


# instance fields
.field private final zzanR:I

.field private final zzbIl:Lcom/google/android/gms/internal/zzazg;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzazg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazv;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbdc;->zzanR:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdc;->zzbIl:Lcom/google/android/gms/internal/zzazg;

    return-void
.end method


# virtual methods
.method public varargs zza(Lcom/google/android/gms/internal/zzazg;[Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;
    .locals 3
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

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbge;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbfc;->zzX(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzazs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdc;->zzbIl:Lcom/google/android/gms/internal/zzazg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzazs;->zza(Lcom/google/android/gms/internal/zzazg;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbfw;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzazs;->zzb(Lcom/google/android/gms/internal/zzazg;[Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbdc;->zzanR:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to convert Custom Pixie to instruction"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzayx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    goto :goto_2
.end method
