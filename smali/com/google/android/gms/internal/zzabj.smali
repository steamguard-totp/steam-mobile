.class public Lcom/google/android/gms/internal/zzabj;
.super Lcom/google/android/gms/internal/zzaxr;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzabj$zza;
    }
.end annotation


# static fields
.field private static zzaBH:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzaxn;",
            "Lcom/google/android/gms/internal/zzaxo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzaBI:Z

.field private zzaBJ:Lcom/google/android/gms/internal/zzabj$zza;

.field private zzajm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxu:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzaxn;",
            "Lcom/google/android/gms/internal/zzaxo;",
            ">;"
        }
    .end annotation
.end field

.field private zzazS:Lcom/google/android/gms/internal/zzaxn;

.field private zzazs:Lcom/google/android/gms/common/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaxm;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzabj;->zzaBH:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaxr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabj;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzrd()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzajm:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabj;->zzajm:Ljava/util/Set;

    const/4 v4, 0x0

    sget-object v8, Lcom/google/android/gms/internal/zzaxo;->zzbCg:Lcom/google/android/gms/internal/zzaxo;

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzg;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaxo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    sget-object v0, Lcom/google/android/gms/internal/zzabj;->zzaBH:Lcom/google/android/gms/common/api/Api$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzaxu:Lcom/google/android/gms/common/api/Api$zza;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzabj;->zzaBI:Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqJ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzaxn;",
            "Lcom/google/android/gms/internal/zzaxo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaxr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabj;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabj;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->zzxe()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzajm:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabj;->zzaxu:Lcom/google/android/gms/common/api/Api$zza;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzabj;->zzaBI:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzabj;Lcom/google/android/gms/internal/zzayb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzabj;->zzc(Lcom/google/android/gms/internal/zzayb;)V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/internal/zzayb;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzayb;->zzxA()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzayb;->zzOp()Lcom/google/android/gms/common/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->zzxA()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "SignInCoordinator"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzaBJ:Lcom/google/android/gms/internal/zzabj$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzabj$zza;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaxn;->disconnect()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabj;->zzaBJ:Lcom/google/android/gms/internal/zzabj$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->zzxz()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabj;->zzajm:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzabj$zza;->zzb(Lcom/google/android/gms/common/internal/zzr;Ljava/util/Set;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaxn;->disconnect()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabj;->zzaBJ:Lcom/google/android/gms/internal/zzabj$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzabj$zza;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzaxn;->zza(Lcom/google/android/gms/internal/zzaxu;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzaBJ:Lcom/google/android/gms/internal/zzabj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzabj$zza;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaxn;->disconnect()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzabj$zza;)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaxn;->disconnect()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzabj;->zzaBI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzrd()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzajm:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabj;->zzajm:Ljava/util/Set;

    const/4 v4, 0x0

    sget-object v8, Lcom/google/android/gms/internal/zzaxo;->zzbCg:Lcom/google/android/gms/internal/zzaxo;

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzg;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaxo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzaxu:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabj;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabj;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabj;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzabj;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzg;->zzxk()Lcom/google/android/gms/internal/zzaxo;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabj;->zzaBJ:Lcom/google/android/gms/internal/zzabj$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaxn;->connect()V

    return-void

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqJ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzayb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzabj$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzabj$1;-><init>(Lcom/google/android/gms/internal/zzabj;Lcom/google/android/gms/internal/zzayb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzwr()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazS:Lcom/google/android/gms/internal/zzaxn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaxn;->disconnect()V

    return-void
.end method
