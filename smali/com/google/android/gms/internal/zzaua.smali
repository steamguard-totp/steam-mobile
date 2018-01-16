.class public Lcom/google/android/gms/internal/zzaua;
.super Lcom/google/android/gms/internal/zzats;


# instance fields
.field private zzaeg:Z

.field private final zzaeh:Landroid/app/AlarmManager;

.field private final zzbuX:Lcom/google/android/gms/internal/zzasv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzatp;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzats;-><init>(Lcom/google/android/gms/internal/zzatp;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzaeh:Landroid/app/AlarmManager;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaua$1;-><init>(Lcom/google/android/gms/internal/zzaua;Lcom/google/android/gms/internal/zzatp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbuX:Lcom/google/android/gms/internal/zzasv;

    return-void
.end method

.method private zzMh()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzast;->zzKk()Z

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaua;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMh()V

    return-void
.end method

.method private zzpe()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzast;->zzKk()Z

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zznA()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaua;->zzaeg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzaeh:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzpe()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbuX:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasv;->cancel()V

    return-void
.end method

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

.method public bridge synthetic zzmq()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zzmq()V

    return-void
.end method

.method protected zzmr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzaeh:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzpe()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public bridge synthetic zznq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzats;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

.method public zzx(J)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzast;->zzKk()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzatm;->zzi(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLf()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Receiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzast;->zzKk()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzatx;->zzj(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLf()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaua;->zzaeg:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzast;->zzKA()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbuX:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasv;->zzcv()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbuX:Lcom/google/android/gms/internal/zzasv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzasv;->zzx(J)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzaeh:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzast;->zzKB()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzpe()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
