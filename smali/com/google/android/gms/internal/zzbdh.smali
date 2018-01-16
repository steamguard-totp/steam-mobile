.class public Lcom/google/android/gms/internal/zzbdh;
.super Lcom/google/android/gms/internal/zzazv;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbJB:Lcom/google/android/gms/internal/zzaze$zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaze$zzc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazv;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdh;->zzbJB:Lcom/google/android/gms/internal/zzaze$zzc;

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

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-eqz v0, :cond_0

    aget-object v0, p2, v2

    sget-object v4, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-ne v0, v4, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzbJB:Lcom/google/android/gms/internal/zzaze$zzc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaze$zzc;->zzQK()Lcom/google/android/gms/internal/zzaym;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaym;->zzPd()Ljava/util/Map;

    move-result-object v0

    const-string v4, "_ldl"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgf;->zzZ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbge;

    if-nez v4, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "conv"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzayw;->zzag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzazu;->zzd(Lcom/google/android/gms/internal/zzbfw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    array-length v2, p2

    if-le v2, v1, :cond_8

    aget-object v2, p2, v1

    sget-object v4, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-ne v2, v4, :cond_6

    move-object v1, v3

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzayw;->zzag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazu;->zzd(Lcom/google/android/gms/internal/zzbfw;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v1, v3

    goto :goto_2
.end method
