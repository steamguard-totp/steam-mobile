.class public Lcom/google/android/gms/internal/zzbth;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final zzcoz:Ljava/lang/reflect/Type;

.field final zzcpD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final zzcpE:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbth;->zzp(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsk;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcpD:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcpE:I

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsj;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsk;->zze(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsk;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcpD:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcpE:I

    return-void
.end method

.method public static zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/android/gms/internal/zzbth",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbth;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbth;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static zzp(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing type parameter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsk;->zze(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzbth",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbth;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbth;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/google/android/gms/internal/zzbth;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbsk;->zza(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcpE:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsk;->zzg(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzacb()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcpD:Ljava/lang/Class;

    return-object v0
.end method

.method public final zzacc()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbth;->zzcoz:Ljava/lang/reflect/Type;

    return-object v0
.end method
