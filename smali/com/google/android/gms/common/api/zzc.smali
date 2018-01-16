.class public abstract Lcom/google/android/gms/common/api/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final zzawb:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final zzaxH:Lcom/google/android/gms/internal/zzzs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzs",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzaxI:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzaxJ:Lcom/google/android/gms/internal/zzabk;

.field protected final zzaxK:Lcom/google/android/gms/internal/zzaap;

.field private final zzrx:Landroid/os/Looper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->zzawb:Lcom/google/android/gms/common/api/Api;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->zzrx:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzzs;->zzb(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/internal/zzzs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxH:Lcom/google/android/gms/internal/zzzs;

    new-instance v0, Lcom/google/android/gms/internal/zzaaq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaaq;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxI:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaap;->zzax(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaap;->zzvU()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    new-instance v0, Lcom/google/android/gms/internal/zzzr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzzr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxJ:Lcom/google/android/gms/internal/zzabk;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/internal/zzabk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzabk;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->zzawb:Lcom/google/android/gms/common/api/Api;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzc;->zzrx:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzawb:Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzzs;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/internal/zzzs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxH:Lcom/google/android/gms/internal/zzzs;

    new-instance v0, Lcom/google/android/gms/internal/zzaaq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaaq;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxI:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaap;->zzax(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaap;->zzvU()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    iput-object p5, p0, Lcom/google/android/gms/common/api/zzc;->zzaxJ:Lcom/google/android/gms/internal/zzabk;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaap;->zza(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzabk;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Lcom/google/android/gms/internal/zzabk;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/internal/zzabk;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    goto :goto_0
.end method

.method private zza(ILcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzzv$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzzv$zza;->zzvf()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaap;->zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzzv$zza;)V

    return-object p2
.end method


# virtual methods
.method public asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxI:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public buildApiClient(Landroid/os/Looper;Lcom/google/android/gms/internal/zzaap$zza;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzaap$zza",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/Api$zze;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzawb:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzuG()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zzaA(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    return-object v0
.end method

.method public createSignInCoordinator(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzabj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzabj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzabj;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public doBestEffortWrite(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzzv$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public doWrite(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzzv$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public getApiKey()Lcom/google/android/gms/internal/zzzs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzzs",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxH:Lcom/google/android/gms/internal/zzzs;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzrx:Landroid/os/Looper;

    return-object v0
.end method
