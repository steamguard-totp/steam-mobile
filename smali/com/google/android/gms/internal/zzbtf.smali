.class final Lcom/google/android/gms/internal/zzbtf;
.super Lcom/google/android/gms/internal/zzbsd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbsd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzcmC:Lcom/google/android/gms/internal/zzbsd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcoy:Lcom/google/android/gms/internal/zzbrl;

.field private final zzcoz:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbsd;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrl;",
            "Lcom/google/android/gms/internal/zzbsd",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtf;->zzcoy:Lcom/google/android/gms/internal/zzbrl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbtf;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbtf;->zzcoz:Ljava/lang/reflect/Type;

    return-void
.end method

.method private zzb(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbtk;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtf;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtf;->zzcoz:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/zzbtf;->zzb(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtf;->zzcoz:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtf;->zzcoy:Lcom/google/android/gms/internal/zzbrl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbth;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrl;->zza(Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbtc$zza;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbsd;->zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtf;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbtc$zza;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtf;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbti;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtf;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsd;->zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
