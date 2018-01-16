.class public final Lcom/google/android/gms/internal/zzbsp;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbsp$zzb;,
        Lcom/google/android/gms/internal/zzbsp$zza;,
        Lcom/google/android/gms/internal/zzbsp$zzc;,
        Lcom/google/android/gms/internal/zzbsp$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzcnz:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field modCount:I

.field size:I

.field zzbYG:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field zzcnA:Lcom/google/android/gms/internal/zzbsp$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final zzcnB:Lcom/google/android/gms/internal/zzbsp$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private zzcnC:Lcom/google/android/gms/internal/zzbsp$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsp$zza;"
        }
    .end annotation
.end field

.field private zzcnD:Lcom/google/android/gms/internal/zzbsp$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsp$zzb;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbsp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbsp;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbsp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsp$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbsp;->zzcnz:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbsp;->zzcnz:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsp;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/zzbsp;->size:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    new-instance v0, Lcom/google/android/gms/internal/zzbsp$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsp$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnB:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsp;->zzbYG:Ljava/util/Comparator;

    return-void

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzbsp;->zzcnz:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private zza(Lcom/google/android/gms/internal/zzbsp$zzd;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v4, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v4, :cond_0

    iput-object p1, v4, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V

    iput-object p1, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v3, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    iget v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    if-eqz v5, :cond_1

    iget v1, v5, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/google/android/gms/internal/zzbsp;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iput-object p2, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnA:Lcom/google/android/gms/internal/zzbsp$zzd;

    goto :goto_0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbsp$zzd;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v5, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v5, :cond_0

    iput-object p1, v5, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V

    iput-object p1, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v3, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    move v2, v0

    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    iget v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    if-eqz v4, :cond_1

    iget v1, v4, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbsp$zzd;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v3, :cond_2

    iget v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    move v2, v0

    :goto_1
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    :goto_2
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    iget-object v3, v4, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v0, v4, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    move v2, v0

    :goto_3
    if-eqz v3, :cond_5

    iget v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    :goto_4
    sub-int/2addr v0, v2

    if-eq v0, v7, :cond_0

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;)V

    :goto_5
    if-eqz p2, :cond_a

    :cond_1
    :goto_6
    return-void

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    sget-boolean v2, Lcom/google/android/gms/internal/zzbsp;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    if-eq v0, v8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzbsp;->zzb(Lcom/google/android/gms/internal/zzbsp$zzd;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;)V

    goto :goto_5

    :cond_8
    const/4 v4, 0x2

    if-ne v5, v4, :cond_f

    iget-object v4, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v0, :cond_b

    iget v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    move v2, v0

    :goto_7
    if-eqz v4, :cond_c

    iget v0, v4, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    :goto_8
    sub-int/2addr v0, v2

    if-eq v0, v8, :cond_9

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbsp;->zzb(Lcom/google/android/gms/internal/zzbsp$zzd;)V

    :goto_9
    if-nez p2, :cond_1

    :cond_a
    iget-object p1, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    goto :goto_0

    :cond_b
    move v2, v1

    goto :goto_7

    :cond_c
    move v0, v1

    goto :goto_8

    :cond_d
    sget-boolean v2, Lcom/google/android/gms/internal/zzbsp;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    if-eq v0, v7, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbsp;->zzb(Lcom/google/android/gms/internal/zzbsp$zzd;)V

    goto :goto_9

    :cond_f
    if-nez v5, :cond_10

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_10
    sget-boolean v3, Lcom/google/android/gms/internal/zzbsp;->$assertionsDisabled:Z

    if-nez v3, :cond_11

    if-eq v5, v7, :cond_11

    if-eq v5, v8, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    if-nez p2, :cond_a

    goto :goto_6
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnA:Lcom/google/android/gms/internal/zzbsp$zzd;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbsp;->size:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnB:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnN:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbsp;->zzaO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnC:Lcom/google/android/gms/internal/zzbsp$zza;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbsp$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbsp$zza;-><init>(Lcom/google/android/gms/internal/zzbsp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnC:Lcom/google/android/gms/internal/zzbsp$zza;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbsp;->zzaO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnD:Lcom/google/android/gms/internal/zzbsp$zzb;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbsp$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbsp$zzb;-><init>(Lcom/google/android/gms/internal/zzbsp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnD:Lcom/google/android/gms/internal/zzbsp$zzb;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbsp;->zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->value:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbsp;->zzaP(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbsp;->size:I

    return v0
.end method

.method zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/zzbsp$zzd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsp;->zzbYG:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnA:Lcom/google/android/gms/internal/zzbsp$zzd;

    const/4 v0, 0x0

    if-eqz v2, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzbsp;->zzcnz:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/internal/zzbsp$zzd;->zzbYU:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    :goto_1
    if-nez v3, :cond_3

    move-object v1, v2

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/internal/zzbsp$zzd;->zzbYU:Ljava/lang/Object;

    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    :cond_3
    if-gez v3, :cond_4

    iget-object v4, v2, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    :goto_3
    if-nez v4, :cond_5

    move v6, v3

    move-object v3, v2

    move v2, v6

    :goto_4
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnB:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-nez v3, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzbsp;->zzcnz:Ljava/util/Comparator;

    if-ne v5, v0, :cond_6

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v4, v2, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    goto :goto_3

    :cond_5
    move-object v2, v4

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnN:Lcom/google/android/gms/internal/zzbsp$zzd;

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/google/android/gms/internal/zzbsp$zzd;-><init>(Lcom/google/android/gms/internal/zzbsp$zzd;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp;->zzcnA:Lcom/google/android/gms/internal/zzbsp$zzd;

    :goto_5
    iget v1, p0, Lcom/google/android/gms/internal/zzbsp;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzbsp;->size:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    move-object v1, v0

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnN:Lcom/google/android/gms/internal/zzbsp$zzd;

    invoke-direct {v0, v3, p1, v1, v4}, Lcom/google/android/gms/internal/zzbsp$zzd;-><init>(Lcom/google/android/gms/internal/zzbsp$zzd;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V

    if-gez v2, :cond_8

    iput-object v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    :goto_6
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/zzbsp;->zzb(Lcom/google/android/gms/internal/zzbsp$zzd;Z)V

    goto :goto_5

    :cond_8
    iput-object v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    goto :goto_6

    :cond_9
    move-object v3, v2

    move v2, v0

    goto :goto_4
.end method

.method zza(Lcom/google/android/gms/internal/zzbsp$zzd;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnN:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnN:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnN:Lcom/google/android/gms/internal/zzbsp$zzd;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget v3, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    iget v4, v1, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsp$zzd;->zzabN()Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Z)V

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v3, :cond_6

    iget v1, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    iput-object v3, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v5, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eqz v3, :cond_1

    iget v2, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    iput-object v3, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnK:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v5, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->height:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsp$zzd;->zzabM()Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V

    iput-object v5, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnL:Lcom/google/android/gms/internal/zzbsp$zzd;

    :goto_3
    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/zzbsp;->zzb(Lcom/google/android/gms/internal/zzbsp$zzd;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzbsp;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbsp;->size:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V

    iput-object v5, p1, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnM:Lcom/google/android/gms/internal/zzbsp$zzd;

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Lcom/google/android/gms/internal/zzbsp$zzd;)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method zzaO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsp$zzd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzbsp;->zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/zzbsp$zzd;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method zzaP(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsp$zzd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbsp;->zzaO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Z)V

    :cond_0
    return-object v0
.end method

.method zzc(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/zzbsp$zzd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbsp;->zzaO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzbsp;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
