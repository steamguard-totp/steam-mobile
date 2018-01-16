.class public final Lcom/google/android/gms/internal/zzazm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzazm$zza;,
        Lcom/google/android/gms/internal/zzazm$zzb;,
        Lcom/google/android/gms/internal/zzazm$zzc;
    }
.end annotation


# static fields
.field private static final zzbIG:Ljava/util/regex/Pattern;

.field private static volatile zzbIH:Lcom/google/android/gms/internal/zzazm;

.field private static zzbIQ:Lcom/google/android/gms/internal/zzazm$zzc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbCS:Ljava/lang/String;

.field private final zzbHn:Ljava/util/concurrent/ExecutorService;

.field private final zzbHo:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbHy:Lcom/google/android/gms/tagmanager/zzay;

.field private final zzbII:Lcom/google/android/gms/internal/zzazp;

.field private final zzbIJ:Lcom/google/android/gms/internal/zzazc;

.field private final zzbIK:Lcom/google/android/gms/internal/zzazm$zza;

.field private final zzbIL:Ljava/lang/Object;

.field private zzbIM:Ljava/lang/String;

.field private zzbIN:I

.field private final zzbIO:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbIP:Z

.field private volatile zztW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(gtm-[a-z0-9]{1,10})\\.json"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->zzbIG:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/gms/internal/zzazm$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzazm$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->zzbIQ:Lcom/google/android/gms/internal/zzazm$zzc;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Lcom/google/android/gms/internal/zzazp;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzazc;Lcom/google/android/gms/internal/zzazm$zza;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIL:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIN:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIO:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzazm;->zztW:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzazm;->zzbIP:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazm;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazm;->zzbHy:Lcom/google/android/gms/tagmanager/zzay;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzazm;->zzbII:Lcom/google/android/gms/internal/zzazp;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzazm;->zzbHn:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzazm;->zzbHo:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzazm;->zzbIJ:Lcom/google/android/gms/internal/zzazc;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzazm;->zzbIK:Lcom/google/android/gms/internal/zzazm$zza;

    return-void
.end method

.method private zzPZ()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzazm$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzazm$6;-><init>(Lcom/google/android/gms/internal/zzazm;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method private zzQO()Lcom/google/android/gms/internal/zzazm$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIK:Lcom/google/android/gms/internal/zzazm$zza;

    return-object v0
.end method

.method private zzQP()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    new-instance v1, Lcom/google/android/gms/internal/zzazm$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzazm$2;-><init>(Lcom/google/android/gms/internal/zzazm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbb;->zza(Lcom/google/android/gms/tagmanager/zzba;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    new-instance v1, Lcom/google/android/gms/internal/zzazm$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzazm$3;-><init>(Lcom/google/android/gms/internal/zzazm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbb;->zza(Lcom/google/android/gms/tagmanager/zzaz;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error communicating with measurement proxy:"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Error communicating with measurement proxy:"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzazm;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIN:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzazm;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzazm;->zzbIN:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzazm;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzazm;->zzj([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)Lcom/google/android/gms/internal/zzazm;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazm;->zzbIH:Lcom/google/android/gms/internal/zzazm;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzazm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzazm;->zzbIH:Lcom/google/android/gms/internal/zzazm;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzazm;->zzbIQ:Lcom/google/android/gms/internal/zzazm$zzc;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzazm$zzc;->zzb(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)Lcom/google/android/gms/internal/zzazm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->zzbIH:Lcom/google/android/gms/internal/zzazm;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzazm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzazm;->zztW:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbII:Lcom/google/android/gms/internal/zzazp;

    return-object v0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/tagmanager/zzbb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzazm;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIO:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzazm;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbHn:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzazm;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIL:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIJ:Lcom/google/android/gms/internal/zzazc;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzazm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazm;->zztW:Z

    return v0
.end method

.method private zzj([Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string v0, "Looking up container asset."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbCS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIM:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbCS:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazm;->zzbIM:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    move v0, v1

    move v2, v1

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_6

    sget-object v3, Lcom/google/android/gms/internal/zzazm;->zzbIG:Ljava/util/regex/Pattern;

    aget-object v5, p1, v0

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v2, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzazm;->zzbCS:Ljava/lang/String;

    const-string v2, "containers"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzazm;->zzbIM:Ljava/lang/String;

    const-string v3, "Asset found for container "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazm;->zzbCS:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    move v2, v4

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazm;->zzQO()Lcom/google/android/gms/internal/zzazm$zza;

    move-result-object v0

    const-string v2, "containers"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzazm$zza;->zzhQ(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Failed to enumerate assets in folder %s"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "containers"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzayx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v9, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v5, "Extra container asset found, will not be loaded: "

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-static {v3}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v3, "Ignoring container asset %s (does not match %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, p1, v0

    aput-object v6, v5, v1

    sget-object v6, Lcom/google/android/gms/internal/zzazm;->zzbIG:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-nez v2, :cond_b

    const-string v0, "No container asset found in /assets/containers. Checking top level /assets directory for container assets."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazm;->zzQO()Lcom/google/android/gms/internal/zzazm$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzazm$zza;->zzQQ()[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_6
    array-length v0, v3

    if-ge v1, v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzazm;->zzbIG:Ljava/util/regex/Pattern;

    aget-object v5, v3, v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v2, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbCS:Ljava/lang/String;

    aget-object v0, v3, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIM:Ljava/lang/String;

    const-string v2, "Asset found for container "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbCS:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    const-string v0, "Loading container assets from top level /assets directory. Please move the container asset to /assets/containers"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V

    move v2, v4

    :cond_7
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v1, "Failed to enumerate assets."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzayx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v9, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    const-string v5, "Extra container asset found, will not be loaded: "

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbCS:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazm;->zzbIM:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzazm;->zzi([Ljava/lang/String;)V

    return-void
.end method

.method public zzai(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzazm;->zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzi([Ljava/lang/String;)V
    .locals 8

    const-string v0, "Initializing Tag Manager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzazm;->zzbIL:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazm;->zztW:Z

    if-eqz v0, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->mContext:Landroid/content/Context;

    const-class v1, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzazm;->zzb(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazm;->zztW:Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzazm;->zzj([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string v6, "Loading container "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/zzayx;->zzbd(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzazm;->zzai(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIP:Z

    if-nez v0, :cond_2

    const-string v0, "Installing Tag Manager event handler."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbd(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbIP:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazm;->zzQP()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazm;->zzPZ()V

    const-string v0, "Tag Manager event handler installed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazm;->zztW:Z

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Tag Manager initilization took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzazm;->zztW:Z

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :try_start_7
    const-string v0, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method

.method public zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbHn:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzazm$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzazm$4;-><init>(Lcom/google/android/gms/internal/zzazm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbHo:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzazm$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzazm$5;-><init>(Lcom/google/android/gms/internal/zzazm;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method zzx(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzbHn:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzazm$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzazm$7;-><init>(Lcom/google/android/gms/internal/zzazm;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
