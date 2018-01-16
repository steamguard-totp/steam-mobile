.class public Lcom/google/android/gms/internal/zzayg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzayg$zza;,
        Lcom/google/android/gms/internal/zzayg$zze;,
        Lcom/google/android/gms/internal/zzayg$zzb;,
        Lcom/google/android/gms/internal/zzayg$zzc;,
        Lcom/google/android/gms/internal/zzayg$zzd;
    }
.end annotation


# instance fields
.field private volatile mState:I

.field private final zzbCS:Ljava/lang/String;

.field private zzbFw:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzbHj:Ljava/lang/String;

.field private final zzbHk:Ljava/lang/String;

.field private final zzbHl:Lcom/google/android/gms/internal/zzazf;

.field private final zzbHm:Lcom/google/android/gms/internal/zzbfe;

.field private final zzbHn:Ljava/util/concurrent/ExecutorService;

.field private final zzbHo:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbHq:Lcom/google/android/gms/internal/zzayi;

.field private zzbHr:Lcom/google/android/gms/internal/zzaze;

.field private zzbHs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaym;",
            ">;"
        }
    .end annotation
.end field

.field private zzbHt:Z

.field private final zzuI:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzazf;Lcom/google/android/gms/internal/zzbfe;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzayi;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzayg;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHs:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbFw:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHt:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbCS:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHl:Lcom/google/android/gms/internal/zzazf;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbfe;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHm:Lcom/google/android/gms/internal/zzbfe;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHn:Ljava/util/concurrent/ExecutorService;

    invoke-static {p7}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHo:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzbb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzuI:Lcom/google/android/gms/common/util/zze;

    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayi;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHq:Lcom/google/android/gms/internal/zzayi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayg;->zzbHj:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayg;->zzbHk:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzaym;

    const-string v1, "gtm.load"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gtm"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzayg;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaym;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzbb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayg;->zzbHs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbCS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is scheduled for loading."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHn:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzayg$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzayg$zzb;-><init>(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzayg$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzayg;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzayg;->mState:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzayg;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzayg;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzaze;)Lcom/google/android/gms/internal/zzaze;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayg;->zzbHr:Lcom/google/android/gms/internal/zzaze;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzayg;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayg;->zzbHs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzayg;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzayg;->zzay(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzayg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzayg;->zzbHt:Z

    return p1
.end method

.method private zzay(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbFw:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbFw:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbCS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Refresh container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHo:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzayg$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzayg$2;-><init>(Lcom/google/android/gms/internal/zzayg;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbFw:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzaze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHr:Lcom/google/android/gms/internal/zzaze;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzayg;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHn:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbCS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzayi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHq:Lcom/google/android/gms/internal/zzayi;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzbfe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHm:Lcom/google/android/gms/internal/zzbfe;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzayg;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/tagmanager/zzbb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzayg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHt:Z

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzazf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHl:Lcom/google/android/gms/internal/zzazf;

    return-object v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzuI:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHn:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzayg$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzayg$1;-><init>(Lcom/google/android/gms/internal/zzayg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaym;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg;->zzbHn:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzayg$zzc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzayg$zzc;-><init>(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzaym;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
