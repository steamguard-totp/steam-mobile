.class public final Lcom/google/android/gms/internal/zzazn;
.super Lcom/google/android/gms/internal/zzayv$zza;


# instance fields
.field private final zzbHn:Ljava/util/concurrent/ExecutorService;

.field private final zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbJg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzayg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbJh:Lcom/google/android/gms/internal/zzayh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayh;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzayh;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzazo;->zzQR()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/gms/internal/zzazn;-><init>(Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/internal/zzayh;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/internal/zzayh;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayv$zza;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazn;->zzbJg:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazn;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazn;->zzbJh:Lcom/google/android/gms/internal/zzayh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazn;->zzbHn:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzazn;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazn;->zzbJg:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzazn;)Lcom/google/android/gms/internal/zzayh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazn;->zzbJh:Lcom/google/android/gms/internal/zzayh;

    return-object v0
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazn;->zzbHn:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzazn$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzazn$3;-><init>(Lcom/google/android/gms/internal/zzazn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzQw()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazn;->zzbJg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaym;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p4, p5}, Ljava/util/Date;-><init>(J)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzazn;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaym;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzbb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazn;->zzbHn:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzazn$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzazn$2;-><init>(Lcom/google/android/gms/internal/zzazn;Lcom/google/android/gms/internal/zzaym;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzayu;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v6, p0, Lcom/google/android/gms/internal/zzazn;->zzbHn:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/zzazn$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzazn$1;-><init>(Lcom/google/android/gms/internal/zzazn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzayu;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzazn;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzayu;)V

    return-void
.end method
