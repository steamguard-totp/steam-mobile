.class public final Lcom/google/android/gms/internal/zzbru;
.super Lcom/google/android/gms/internal/zzbrr;


# instance fields
.field private final zzcmM:Lcom/google/android/gms/internal/zzbsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbrr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrr;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbsp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    return-void
.end method

.method private zzaJ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbrr;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbrt;->zzcmL:Lcom/google/android/gms/internal/zzbrt;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbrx;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbrr;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsp;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbru;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzbru;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbsp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsp;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsp;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbrr;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/zzbrt;->zzcmL:Lcom/google/android/gms/internal/zzbrt;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbsp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzaB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbru;->zzaJ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbru;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbrr;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbru;->zzaJ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbru;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbrr;)V

    return-void
.end method

.method public zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrr;

    return-object v0
.end method

.method public zzjT(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbro;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcmM:Lcom/google/android/gms/internal/zzbsp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbro;

    return-object v0
.end method
