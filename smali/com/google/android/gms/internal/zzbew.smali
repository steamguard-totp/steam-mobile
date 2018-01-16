.class public Lcom/google/android/gms/internal/zzbew;
.super Lcom/google/android/gms/internal/zzazv;


# static fields
.field private static final zzbJL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbJK:Lcom/google/android/gms/internal/zzayp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GET"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "HEAD"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "POST"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "PUT"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbew;->zzbJL:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzayp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzbJK:Lcom/google/android/gms/internal/zzayp;

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzazg;[Lcom/google/android/gms/internal/zzbfw;)Lcom/google/android/gms/internal/zzbfw;
    .locals 12
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

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_7

    move v0, v6

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    array-length v0, p2

    if-ne v0, v6, :cond_8

    move v0, v6

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v7

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbgc;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v7

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbfw;->zzig(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbge;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v0, p2, v7

    const-string v2, "method"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbfw;->zzig(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbge;

    const-string v2, "GET"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzbge;-><init>(Ljava/lang/String;)V

    :cond_0
    instance-of v2, v0, Lcom/google/android/gms/internal/zzbge;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbew;->zzbJL:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    aget-object v0, p2, v7

    const-string v3, "uniqueId"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzbfw;->zzig(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/zzbga;->zzbKU:Lcom/google/android/gms/internal/zzbga;

    if-eq v0, v3, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbge;

    if-eqz v3, :cond_9

    :cond_1
    move v3, v6

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    sget-object v3, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/google/android/gms/internal/zzbga;->zzbKU:Lcom/google/android/gms/internal/zzbga;

    if-ne v0, v3, :cond_a

    :cond_2
    move-object v3, v5

    :goto_3
    aget-object v0, p2, v7

    const-string v4, "headers"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzbfw;->zzig(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-eq v0, v4, :cond_3

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbgc;

    if-eqz v4, :cond_b

    :cond_3
    move v4, v6

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-ne v0, v4, :cond_c

    move-object v4, v5

    :goto_5
    aget-object v0, p2, v7

    const-string v8, "body"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzbfw;->zzig(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-eq v0, v8, :cond_4

    instance-of v8, v0, Lcom/google/android/gms/internal/zzbge;

    if-eqz v8, :cond_e

    :cond_4
    move v8, v6

    :goto_6
    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    sget-object v8, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    if-ne v0, v8, :cond_f

    :goto_7
    const-string v0, "GET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HEAD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    if-eqz v5, :cond_6

    const-string v0, "Body of %s hit will be ignored: %s."

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v7

    aput-object v5, v8, v6

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzbJK:Lcom/google/android/gms/internal/zzayp;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    const-string v0, "QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v7

    aput-object v2, v8, v6

    aput-object v3, v8, v11

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v5, v8, v1

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    return-object v0

    :cond_7
    move v0, v7

    goto/16 :goto_0

    :cond_8
    move v0, v7

    goto/16 :goto_1

    :cond_9
    move v3, v7

    goto/16 :goto_2

    :cond_a
    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto/16 :goto_3

    :cond_b
    move v4, v7

    goto :goto_4

    :cond_c
    check-cast v0, Lcom/google/android/gms/internal/zzbgc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbgc;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbfw;

    instance-of v10, v0, Lcom/google/android/gms/internal/zzbge;

    if-nez v10, :cond_d

    const-string v0, "Ignore the non-string value of header key %s."

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v8, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    move v8, v7

    goto/16 :goto_6

    :cond_f
    check-cast v0, Lcom/google/android/gms/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbge;->zzRF()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto/16 :goto_7

    :cond_10
    move-object v4, v8

    goto/16 :goto_5
.end method
