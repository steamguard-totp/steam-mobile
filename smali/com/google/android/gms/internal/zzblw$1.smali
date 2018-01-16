.class Lcom/google/android/gms/internal/zzblw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzblw;->zzr(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaqm:Ljava/lang/Runnable;

.field final synthetic zzcbp:Lcom/google/android/gms/internal/zzblw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblw;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblw$1;->zzcbp:Lcom/google/android/gms/internal/zzblw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzblw$1;->zzaqm:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblw$1;->zzcbp:Lcom/google/android/gms/internal/zzblw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzblw;->zza(Lcom/google/android/gms/internal/zzblw;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblw$1;->zzaqm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
