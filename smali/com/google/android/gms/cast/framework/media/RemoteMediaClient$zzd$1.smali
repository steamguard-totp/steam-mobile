.class Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarL:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field final synthetic zzarM:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;->zzarM:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;->zzarL:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;->zzarM:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzarD:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;->zzarM:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;->zzarM:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzarD:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;->zzarM:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
