.class public Lcom/google/android/gms/internal/zzayh;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzFe:Ljava/util/concurrent/ExecutorService;

.field private final zzbHm:Lcom/google/android/gms/internal/zzbfe;

.field private final zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbHx:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbHy:Lcom/google/android/gms/tagmanager/zzay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V
    .locals 7

    new-instance v4, Lcom/google/android/gms/internal/zzbfe;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzbfe;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzazo;->zzQR()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzazo;->zzQS()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzayh;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Lcom/google/android/gms/internal/zzbfe;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Lcom/google/android/gms/internal/zzbfe;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayh;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzbb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayh;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzay;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayh;->zzbHy:Lcom/google/android/gms/tagmanager/zzay;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbfe;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayh;->zzbHm:Lcom/google/android/gms/internal/zzbfe;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayh;->zzFe:Ljava/util/concurrent/ExecutorService;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayh;->zzbHx:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzayg;
    .locals 11

    new-instance v4, Lcom/google/android/gms/internal/zzazf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayh;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayh;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayh;->zzbHy:Lcom/google/android/gms/tagmanager/zzay;

    invoke-direct {v4, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzazf;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/zzayi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayh;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0, p1}, Lcom/google/android/gms/internal/zzayi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzayg;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzayh;->zzbHm:Lcom/google/android/gms/internal/zzbfe;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzayh;->zzFe:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzayh;->zzbHx:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzayh;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzyv()Lcom/google/android/gms/common/util/zze;

    move-result-object v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzayg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzazf;Lcom/google/android/gms/internal/zzbfe;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzayi;)V

    return-object v0
.end method
