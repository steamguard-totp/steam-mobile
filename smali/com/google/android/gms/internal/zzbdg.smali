.class public Lcom/google/android/gms/internal/zzbdg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzazt;


# instance fields
.field private final zzbJA:Lcom/google/android/gms/internal/zzaye;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaye;->zzbL(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaye;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbdg;-><init>(Lcom/google/android/gms/internal/zzaye;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzaye;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdg;->zzbJA:Lcom/google/android/gms/internal/zzaye;

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

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbfx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbdg;->zzbJA:Lcom/google/android/gms/internal/zzaye;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaye;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbfx;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
