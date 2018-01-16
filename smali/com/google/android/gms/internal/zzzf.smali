.class public final Lcom/google/android/gms/internal/zzzf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzf$zza;,
        Lcom/google/android/gms/internal/zzzf$zzd;,
        Lcom/google/android/gms/internal/zzzf$zzb;,
        Lcom/google/android/gms/internal/zzzf$zzc;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzahc:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzzk;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzahd:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzzk;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzQL:Ljava/lang/String;

.field private final zzawl:I

.field private zzawm:Ljava/lang/String;

.field private zzawn:I

.field private zzawo:Ljava/lang/String;

.field private zzawp:Ljava/lang/String;

.field private final zzawq:Z

.field private zzawr:I

.field private final zzaws:Lcom/google/android/gms/internal/zzzg;

.field private zzawt:Lcom/google/android/gms/internal/zzzf$zzd;

.field private final zzawu:Lcom/google/android/gms/internal/zzzf$zzb;

.field private final zzuI:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzzf;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzzf$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzzf$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzzf;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/internal/zzzf;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzzf;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzzf;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzzg;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzzf$zzd;Lcom/google/android/gms/internal/zzzf$zzb;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzzf;->zzawn:I

    iput v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawr:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzQL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzzf;->zzah(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzzf;->zzawl:I

    iput p2, p0, Lcom/google/android/gms/internal/zzzf;->zzawn:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzf;->zzawm:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzf;->zzawo:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzzf;->zzawp:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzzf;->zzawq:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzzf;->zzaws:Lcom/google/android/gms/internal/zzzg;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzzf;->zzuI:Lcom/google/android/gms/common/util/zze;

    if-eqz p9, :cond_2

    :goto_0
    iput-object p9, p0, Lcom/google/android/gms/internal/zzzf;->zzawt:Lcom/google/android/gms/internal/zzzf$zzd;

    iput v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawr:I

    iput-object p10, p0, Lcom/google/android/gms/internal/zzzf;->zzawu:Lcom/google/android/gms/internal/zzzf$zzb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzzf;->zzawq:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzawo:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p9, Lcom/google/android/gms/internal/zzzf$zzd;

    invoke-direct {p9}, Lcom/google/android/gms/internal/zzzf$zzd;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzj;->zzai(Landroid/content/Context;)Lcom/google/android/gms/internal/zzzg;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzyv()Lcom/google/android/gms/common/util/zze;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/internal/zzzo;

    invoke-direct {v10, p1}, Lcom/google/android/gms/internal/zzzo;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzzf;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzzg;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzzf$zzd;Lcom/google/android/gms/internal/zzzf$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzf;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawn:I

    return v0
.end method

.method private zzah(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawm:Ljava/lang/String;

    return-object v0
.end method

.method private static zzb(Ljava/util/ArrayList;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawo:Ljava/lang/String;

    return-object v0
.end method

.method private static zzc(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawp:Ljava/lang/String;

    return-object v0
.end method

.method private static zzd(Ljava/util/ArrayList;)[[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)[[B"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [[B

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    goto :goto_0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzzf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zze(Ljava/util/ArrayList;)[I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzf;->zzb(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzuI:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zzf(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzf;->zzc(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/internal/zzzf$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawt:Lcom/google/android/gms/internal/zzzf$zzd;

    return-object v0
.end method

.method static synthetic zzg(Ljava/util/ArrayList;)[[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzf;->zzd(Ljava/util/ArrayList;)[[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzzf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawq:Z

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzzf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzQL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzzf;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawl:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/internal/zzzf$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzawu:Lcom/google/android/gms/internal/zzzf$zzb;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/internal/zzzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaws:Lcom/google/android/gms/internal/zzzg;

    return-object v0
.end method


# virtual methods
.method public zzm([B)Lcom/google/android/gms/internal/zzzf$zza;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzzf$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzzf$zza;-><init>(Lcom/google/android/gms/internal/zzzf;[BLcom/google/android/gms/internal/zzzf$1;)V

    return-object v0
.end method
