.class final Lcom/google/android/gms/internal/zzazm$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzazm$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)Lcom/google/android/gms/internal/zzazm;
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/zzazm;

    new-instance v4, Lcom/google/android/gms/internal/zzazp;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzazp;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzazo;->zzQR()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzazo;->zzQS()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzazc;->zzQB()Lcom/google/android/gms/internal/zzazc;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/zzazm$zza;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/zzazm$zza;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzazm;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Lcom/google/android/gms/internal/zzazp;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzazc;Lcom/google/android/gms/internal/zzazm$zza;)V

    return-object v0
.end method
