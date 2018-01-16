.class public Lcom/google/android/gms/internal/zzbex;
.super Lcom/google/android/gms/internal/zzazv;


# instance fields
.field private final zzbIr:Lcom/google/android/gms/internal/zzaze$zzc;

.field private final zzbJM:Lcom/google/android/gms/tagmanager/zzbb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/internal/zzaze$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbex;->zzbJM:Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbex;->zzbIr:Lcom/google/android/gms/internal/zzaze$zzc;

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzazg;[Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;
    .locals 6
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

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_0
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbge;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-le v0, v2, :cond_5

    aget-object v1, p2, v2

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-eq v1, v0, :cond_1

    instance-of v0, v1, Lcom/google/android/gms/internal/zzbgc;

    if-eqz v0, :cond_6

    :cond_1
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbex;->zzbIr:Lcom/google/android/gms/internal/zzaze$zzc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaze$zzc;->zzQK()Lcom/google/android/gms/internal/zzaym;

    move-result-object v4

    aget-object v0, p2, v3

    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-eq v1, v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzbgc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbgc;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgf;->zzar(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbex;->zzbJM:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaym;->zzQr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaym;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzbb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    sget-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    return-object v0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Error calling measurement proxy:"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method
