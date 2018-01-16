.class Lcom/google/android/gms/internal/zzbls$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbls;->zzWc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaa:Lcom/google/android/gms/internal/zzbls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbls;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbls$7;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$7;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbls;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$7;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbls;->zzp(Lcom/google/android/gms/internal/zzbls;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$7;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbls;->interrupt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$7;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbls;->zzn(Lcom/google/android/gms/internal/zzbls;)V

    goto :goto_0
.end method
