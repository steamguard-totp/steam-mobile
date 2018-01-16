.class public abstract Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbql;


# static fields
.field private static zzbVC:Lcom/google/firebase/auth/FirebaseAuth;

.field private static zzbha:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzbVA:Lcom/google/android/gms/internal/zzbkl;

.field private zzbVB:Lcom/google/android/gms/internal/zzbkm;

.field private zzbVx:Lcom/google/firebase/FirebaseApp;

.field private zzbVy:Lcom/google/android/gms/internal/zzbiu;

.field private zzbVz:Lcom/google/firebase/auth/FirebaseUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/FirebaseAuth;->zzbha:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 5

    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzbiu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbkl;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->zzTu()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzbiz;->zzUg()Lcom/google/android/gms/internal/zzbrl;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbkl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbrl;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzbiu;Lcom/google/android/gms/internal/zzbkl;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzbiu;Lcom/google/android/gms/internal/zzbkl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVx:Lcom/google/firebase/FirebaseApp;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbiu;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVy:Lcom/google/android/gms/internal/zzbiu;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkl;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVA:Lcom/google/android/gms/internal/zzbkl;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->mListeners:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/zzbkm;->zzUK()Lcom/google/android/gms/internal/zzbkm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVB:Lcom/google/android/gms/internal/zzbkm;

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzTT()V

    return-void
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVx:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method static zzb(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzbiu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbjc$zza$zza;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjc$zza$zza;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbjc$zza$zza;->zzUj()Lcom/google/android/gms/internal/zzbjc$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbjc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbjc$zza;)Lcom/google/android/gms/internal/zzbiu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private static zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized zzd(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 4

    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/auth/FirebaseAuth;->zzbha:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->zzTu()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbkg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbkg;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/android/gms/internal/zzbql;)V

    sget-object v2, Lcom/google/firebase/auth/FirebaseAuth;->zzbVC:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v2, :cond_0

    sput-object v0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVC:Lcom/google/firebase/auth/FirebaseAuth;

    :cond_0
    sget-object v2, Lcom/google/firebase/auth/FirebaseAuth;->zzbha:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->zzTu()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected zzTT()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVA:Lcom/google/android/gms/internal/zzbkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbkl;->zzUI()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVA:Lcom/google/android/gms/internal/zzbkl;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbkl;->zzg(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzbjp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/zzbjp;Z)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying listeners about user ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzTY()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzbqm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbqm;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVB:Lcom/google/android/gms/internal/zzbkm;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$2;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/auth/FirebaseAuth$2;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/gms/internal/zzbqm;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbkm;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/zzbjp;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0, p2}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/zzbjp;)V

    :cond_1
    invoke-virtual {p0, p1, p3, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;ZZ)V

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVA:Lcom/google/android/gms/internal/zzbkl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbkl;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/zzbjp;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->zzTW()Lcom/google/android/gms/internal/zzbjp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbjp;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbjp;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public zza(Lcom/google/firebase/auth/FirebaseUser;ZZ)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    :goto_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVA:Lcom/google/android/gms/internal/zzbkl;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbkl;->zzf(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->zzaT(Z)Lcom/google/firebase/auth/FirebaseUser;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbVz:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->zzR(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    goto :goto_0
.end method
