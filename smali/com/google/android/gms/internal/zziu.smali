.class Lcom/google/android/gms/internal/zziu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zziu$zza;
    }
.end annotation


# instance fields
.field private final zzIC:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zziu$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzID:Lcom/google/android/gms/internal/zzdy;

.field private final zzIE:I

.field private zzIF:Z

.field private final zztq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdy;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zziu;->zzIC:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zziu;->zzID:Lcom/google/android/gms/internal/zzdy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziu;->zztq:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zziu;->zzIE:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zziu;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziu;->zztq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zziu;)Lcom/google/android/gms/internal/zzdy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziu;->zzID:Lcom/google/android/gms/internal/zzdy;

    return-object v0
.end method


# virtual methods
.method getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziu;->zztq:Ljava/lang/String;

    return-object v0
.end method

.method getNetworkType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zziu;->zzIE:I

    return v0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziu;->zzIC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method zza(Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/internal/zzdy;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zziu$zza;-><init>(Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/internal/zzdy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zziu;->zzIC:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzip;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zziu$zza;-><init>(Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzip;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zziu;->zzIC:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziu$zza;->zzgq()V

    return-void
.end method

.method zzgl()Lcom/google/android/gms/internal/zzdy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziu;->zzID:Lcom/google/android/gms/internal/zzdy;

    return-object v0
.end method

.method zzgm()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziu;->zzIC:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zziu$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zziu$zza;->zzIK:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method zzgn()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zziu;->zzIC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zziu$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziu$zza;->zzgq()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method zzgo()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zziu;->zzIF:Z

    return-void
.end method

.method zzgp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zziu;->zzIF:Z

    return v0
.end method

.method zzp(Lcom/google/android/gms/internal/zzdy;)Lcom/google/android/gms/internal/zziu$zza;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziu;->zzID:Lcom/google/android/gms/internal/zzdy;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziu;->zzIC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zziu$zza;

    return-object v0
.end method
