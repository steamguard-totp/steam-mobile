.class public Lcom/google/android/gms/internal/zzbeb;
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

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
