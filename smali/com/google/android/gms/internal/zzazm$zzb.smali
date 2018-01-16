.class Lcom/google/android/gms/internal/zzazm$zzb;
.super Lcom/google/android/gms/internal/zzayu$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzbIR:Lcom/google/android/gms/internal/zzazm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzazm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazm$zzb;->zzbIR:Lcom/google/android/gms/internal/zzazm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayu$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzazm;Lcom/google/android/gms/internal/zzazm$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzazm$zzb;-><init>(Lcom/google/android/gms/internal/zzazm;)V

    return-void
.end method


# virtual methods
.method public zza(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm$zzb;->zzbIR:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazm;->zze(Lcom/google/android/gms/internal/zzazm;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzazm$zzb$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzazm$zzb$1;-><init>(Lcom/google/android/gms/internal/zzazm$zzb;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
