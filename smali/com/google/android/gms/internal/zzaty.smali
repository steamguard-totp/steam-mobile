.class public Lcom/google/android/gms/internal/zzaty;
.super Lcom/google/android/gms/internal/zzats;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected zzbuT:J

.field private final zzbuU:Lcom/google/android/gms/internal/zzasv;

.field private final zzbuV:Lcom/google/android/gms/internal/zzasv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatp;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzats;-><init>(Lcom/google/android/gms/internal/zzatp;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaty$1;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaty;->zzbpw:Lcom/google/android/gms/internal/zzatp;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzaty$1;-><init>(Lcom/google/android/gms/internal/zzaty;Lcom/google/android/gms/internal/zzatp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuU:Lcom/google/android/gms/internal/zzasv;

    new-instance v0, Lcom/google/android/gms/internal/zzaty$2;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaty;->zzbpw:Lcom/google/android/gms/internal/zzatp;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzaty$2;-><init>(Lcom/google/android/gms/internal/zzaty;Lcom/google/android/gms/internal/zzatp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuV:Lcom/google/android/gms/internal/zzasv;

    return-void
.end method

.method private zzMd()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaty;->mHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzMg()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzmq()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaty;->zzaJ(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJg()Lcom/google/android/gms/internal/zzaso;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaso;->zzV(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaty;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaty;->zzMg()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaty;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaty;->zzap(J)V

    return-void
.end method

.method private zzap(J)V
    .locals 9

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzmq()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaty;->zzMd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuU:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasv;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuV:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasv;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaty;->zzbuT:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatl;->zzbsq:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl$zzb;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatl;->zzbss:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl$zzb;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatl;->zzbsr:Lcom/google/android/gms/internal/zzatl$zza;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatl$zza;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatl;->zzbst:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/zzatl$zzb;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatl;->zzbsr:Lcom/google/android/gms/internal/zzatl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatl$zza;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuU:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatl;->zzbsp:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatl$zzb;->get()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatl;->zzbst:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatl$zzb;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzasv;->zzx(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuV:Lcom/google/android/gms/internal/zzasv;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatl;->zzbst:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatl$zzb;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzasv;->zzx(J)V

    goto :goto_0
.end method

.method private zzaq(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzmq()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaty;->zzMd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuU:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasv;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuV:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasv;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatl;->zzbst:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatl;->zzbst:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatl$zzb;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaty;->zzbuT:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatl$zzb;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatl;->zzbss:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatl$zzb;->set(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaty;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaty;->zzaq(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJd()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJd()V

    return-void
.end method

.method public bridge synthetic zzJe()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJe()V

    return-void
.end method

.method public bridge synthetic zzJf()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJf()V

    return-void
.end method

.method public bridge synthetic zzJg()Lcom/google/android/gms/internal/zzaso;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJg()Lcom/google/android/gms/internal/zzaso;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJh()Lcom/google/android/gms/internal/zzass;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJh()Lcom/google/android/gms/internal/zzass;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJi()Lcom/google/android/gms/internal/zzatu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJi()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJj()Lcom/google/android/gms/internal/zzatf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJj()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJk()Lcom/google/android/gms/internal/zzasw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJk()Lcom/google/android/gms/internal/zzasw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJl()Lcom/google/android/gms/internal/zzatw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJl()Lcom/google/android/gms/internal/zzatw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJm()Lcom/google/android/gms/internal/zzatv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJm()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJn()Lcom/google/android/gms/internal/zzatg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJn()Lcom/google/android/gms/internal/zzatg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJo()Lcom/google/android/gms/internal/zzasu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJo()Lcom/google/android/gms/internal/zzasu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJp()Lcom/google/android/gms/internal/zzaue;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJp()Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJq()Lcom/google/android/gms/internal/zzatn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJq()Lcom/google/android/gms/internal/zzatn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJr()Lcom/google/android/gms/internal/zzaty;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJr()Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJs()Lcom/google/android/gms/internal/zzato;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJs()Lcom/google/android/gms/internal/zzato;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJt()Lcom/google/android/gms/internal/zzati;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJu()Lcom/google/android/gms/internal/zzatl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJv()Lcom/google/android/gms/internal/zzast;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v0

    return-object v0
.end method

.method protected zzMc()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJs()Lcom/google/android/gms/internal/zzato;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzaty$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/zzaty$3;-><init>(Lcom/google/android/gms/internal/zzaty;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzato;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzMe()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJs()Lcom/google/android/gms/internal/zzato;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzaty$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/zzaty$4;-><init>(Lcom/google/android/gms/internal/zzaty;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzato;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzMf()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLg()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v2

    const-string v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatl;->zzbsr:Lcom/google/android/gms/internal/zzatl$zza;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatl$zza;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJi()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_s"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatu;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public zzaJ(Z)Z
    .locals 12

    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaty;->zzbuT:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    sub-long v2, v0, v10

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaty;->zzbuT:J

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaty;->zzbuT:J

    sub-long v2, v0, v2

    if-nez p1, :cond_1

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatl;->zzbst:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzatl$zzb;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzLg()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "_et"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJm()Lcom/google/android/gms/internal/zzatv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatv;->zzLU()Lcom/google/android/gms/internal/zzatv$zza;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/zzatv;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJi()Lcom/google/android/gms/internal/zzatu;

    move-result-object v2

    const-string v3, "auto"

    const-string v5, "_e"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/internal/zzatu;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuT:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuV:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasv;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzbuV:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaty;->zzJu()Lcom/google/android/gms/internal/zzatl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatl;->zzbst:Lcom/google/android/gms/internal/zzatl$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatl$zzb;->get()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzasv;->zzx(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic zzmq()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzmq()V

    return-void
.end method

.method protected zzmr()V
    .locals 0

    return-void
.end method

.method public bridge synthetic zznq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method
