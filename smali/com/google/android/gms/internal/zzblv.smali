.class Lcom/google/android/gms/internal/zzblv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzblv$zzc;,
        Lcom/google/android/gms/internal/zzblv$zzb;,
        Lcom/google/android/gms/internal/zzblv$zza;
    }
.end annotation


# static fields
.field private static zzcaB:J


# instance fields
.field private final zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbYx:Lcom/google/android/gms/internal/zzbop;

.field private zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

.field private zzcaD:Z

.field private zzcaE:Z

.field private zzcaF:J

.field private zzcaG:Lcom/google/android/gms/internal/zzblx;

.field private zzcaH:Lcom/google/android/gms/internal/zzblv$zza;

.field private zzcaI:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzcaJ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzcaK:Lcom/google/android/gms/internal/zzbln;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzblv;->zzcaB:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbln;Lcom/google/android/gms/internal/zzblp;Ljava/lang/String;Lcom/google/android/gms/internal/zzblv$zza;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaE:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaF:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblv;->zzcaK:Lcom/google/android/gms/internal/zzbln;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbln;->zzVJ()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzblv;->zzcaH:Lcom/google/android/gms/internal/zzblv$zza;

    sget-wide v0, Lcom/google/android/gms/internal/zzblv;->zzcaB:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzblv;->zzcaB:J

    new-instance v2, Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbln;->zzVH()Lcom/google/android/gms/internal/zzboq;

    move-result-object v3

    const-string v4, "WebSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "ws_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzbop;-><init>(Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-direct {p0, p2, p3, p5}, Lcom/google/android/gms/internal/zzblv;->zza(Lcom/google/android/gms/internal/zzblp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzblv$zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

    return-void
.end method

.method private isBuffering()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaG:Lcom/google/android/gms/internal/zzblx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shutdown()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaE:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaH:Lcom/google/android/gms/internal/zzblv$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzblv;->zzcaD:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzblv$zza;->zzaV(Z)V

    return-void
.end method

.method private static zzF(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int v2, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, p1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private zzWp()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaE:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaI:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaI:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbop;->zzYT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblv;->zzcaI:Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Reset keepAlive. Remaining: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->zzWq()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaI:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbop;->zzYT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "Reset keepAlive"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private zzWq()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzblv$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzblv$2;-><init>(Lcom/google/android/gms/internal/zzblv;)V

    return-object v0
.end method

.method private zzWr()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaE:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbop;->zzYT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "closing itself"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->shutdown()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaI:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaI:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method private zzWs()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaD:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaE:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbop;->zzYT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "timed out on connect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzblv$zzb;->close()V

    :cond_1
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzblp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzblv$zzb;
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzblp;->isSecure()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzblp;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, p3}, Lcom/google/android/gms/internal/zzblp;->zza(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblv;->zzcaK:Lcom/google/android/gms/internal/zzbln;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbln;->zzjQ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/zzbpo;

    invoke-direct {v2, v0, v4, v1}, Lcom/google/android/gms/internal/zzbpo;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/google/android/gms/internal/zzblv$zzc;

    invoke-direct {v0, p0, v2, v4}, Lcom/google/android/gms/internal/zzblv$zzc;-><init>(Lcom/google/android/gms/internal/zzblv;Lcom/google/android/gms/internal/zzbpo;Lcom/google/android/gms/internal/zzblv$1;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzblp;->getHost()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzblv;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaJ:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzblv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzblv;->zziS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzblv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzblv;->zzcaD:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzblv;)Lcom/google/android/gms/internal/zzbop;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzblv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->zzWp()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzblv;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzblv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->zzWr()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzblv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->zzWs()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzblv;)Lcom/google/android/gms/internal/zzblv$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

    return-object v0
.end method

.method private zziQ(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaG:Lcom/google/android/gms/internal/zzblx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzblx;->zziU(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaF:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaF:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaF:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaG:Lcom/google/android/gms/internal/zzblx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzblx;->zzWz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaG:Lcom/google/android/gms/internal/zzblx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzblx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpx;->zzjf(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzblv;->zzcaG:Lcom/google/android/gms/internal/zzblx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbop;->zzYT()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "handleIncomingFrame complete frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzblv;->zzcaH:Lcom/google/android/gms/internal/zzblv$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzblv$zza;->zzas(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v3, "Error parsing frame: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaG:Lcom/google/android/gms/internal/zzblx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzblx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbop;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzblv;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->shutdown()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v3, "Error parsing frame (cast error): "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaG:Lcom/google/android/gms/internal/zzblx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzblx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbop;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzblv;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->shutdown()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private zziR(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzblv;->zzpJ(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzblv;->zzpJ(I)V

    goto :goto_0
.end method

.method private zziS(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaE:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->zzWp()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzblv;->zziQ(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzblv;->zziR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzblv;->zziQ(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzpJ(I)V
    .locals 5

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaF:J

    new-instance v0, Lcom/google/android/gms/internal/zzblx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaG:Lcom/google/android/gms/internal/zzblx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbop;->zzYT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzblv;->zzcaF:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "HandleNewFrameCount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbop;->zzYT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "websocket is being closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzblv;->zzcaE:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzblv$zzb;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaJ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaJ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaI:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaI:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public open()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzblv$zzb;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzblv$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzblv$1;-><init>(Lcom/google/android/gms/internal/zzblv;)V

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaJ:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->zzWp()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbpx;->zzaE(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzblv;->zzF(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

    array-length v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzblv$zzb;->zziT(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblv;->zzcaC:Lcom/google/android/gms/internal/zzblv$zzb;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzblv$zzb;->zziT(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblv;->zzbYx:Lcom/google/android/gms/internal/zzbop;

    const-string v3, "Failed to serialize message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbop;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblv;->shutdown()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
