.class public final Lcom/google/android/gms/internal/zzbrm;
.super Ljava/lang/Object;


# instance fields
.field private zzcmD:Lcom/google/android/gms/internal/zzbsm;

.field private zzcmE:Lcom/google/android/gms/internal/zzbsb;

.field private zzcmF:Lcom/google/android/gms/internal/zzbrk;

.field private final zzcmG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzbrn",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzcmH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbse;",
            ">;"
        }
    .end annotation
.end field

.field private zzcmI:I

.field private zzcmJ:I

.field private zzcmK:Z

.field private final zzcmt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzbsm;->zzcnn:Lcom/google/android/gms/internal/zzbsm;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmD:Lcom/google/android/gms/internal/zzbsm;

    sget-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcmO:Lcom/google/android/gms/internal/zzbsb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmE:Lcom/google/android/gms/internal/zzbsb;

    sget-object v0, Lcom/google/android/gms/internal/zzbrj;->zzcml:Lcom/google/android/gms/internal/zzbrj;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmF:Lcom/google/android/gms/internal/zzbrk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmG:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmt:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmH:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmI:I

    iput v1, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmJ:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmK:Z

    return-void
.end method

.method private zza(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbse;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbrg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbrg;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbth;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbsc;->zza(Lcom/google/android/gms/internal/zzbth;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbse;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbth;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbsc;->zza(Lcom/google/android/gms/internal/zzbth;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbse;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbth;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbsc;->zza(Lcom/google/android/gms/internal/zzbth;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbse;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbrg;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbrg;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbrm;
    .locals 2

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbrz;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbrq;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbrn;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbsd;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsj;->zzas(Z)V

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbrn;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmG:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zzbrn;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/internal/zzbrz;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbth;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmt:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzbsc;->zzb(Lcom/google/android/gms/internal/zzbth;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbse;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/google/android/gms/internal/zzbsd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmt:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbth;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v1

    check-cast p2, Lcom/google/android/gms/internal/zzbsd;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzbtg;->zza(Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbsd;)Lcom/google/android/gms/internal/zzbse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs zza([Lcom/google/android/gms/internal/zzbrh;)Lcom/google/android/gms/internal/zzbrm;
    .locals 5

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmD:Lcom/google/android/gms/internal/zzbsm;

    invoke-virtual {v3, v2, v4, v4}, Lcom/google/android/gms/internal/zzbsm;->zza(Lcom/google/android/gms/internal/zzbrh;ZZ)Lcom/google/android/gms/internal/zzbsm;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmD:Lcom/google/android/gms/internal/zzbsm;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public zzabr()Lcom/google/android/gms/internal/zzbrm;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmK:Z

    return-object p0
.end method

.method public zzabs()Lcom/google/android/gms/internal/zzbrl;
    .locals 12

    const/4 v4, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmt:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmH:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmI:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmJ:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/google/android/gms/internal/zzbrm;->zza(Ljava/lang/String;IILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbrl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmD:Lcom/google/android/gms/internal/zzbsm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmF:Lcom/google/android/gms/internal/zzbrk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmG:Ljava/util/Map;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmK:Z

    iget-object v10, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmE:Lcom/google/android/gms/internal/zzbsb;

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzbrl;-><init>(Lcom/google/android/gms/internal/zzbsm;Lcom/google/android/gms/internal/zzbrk;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzbsb;Ljava/util/List;)V

    return-object v0
.end method

.method public varargs zzf([I)Lcom/google/android/gms/internal/zzbrm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmD:Lcom/google/android/gms/internal/zzbsm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsm;->zzg([I)Lcom/google/android/gms/internal/zzbsm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzcmD:Lcom/google/android/gms/internal/zzbsm;

    return-object p0
.end method
