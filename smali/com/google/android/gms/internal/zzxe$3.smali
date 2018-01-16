.class Lcom/google/android/gms/internal/zzxe$3;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxe;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzasl:Lcom/google/android/gms/internal/zzxe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxe$3;->zzasl:Lcom/google/android/gms/internal/zzxe;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxe$3;->zzasl:Lcom/google/android/gms/internal/zzxe;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxe;->zza(Lcom/google/android/gms/internal/zzxe;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxe$3;->zzasl:Lcom/google/android/gms/internal/zzxe;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxe;->zza(Lcom/google/android/gms/internal/zzxe;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxe$3;->zzasl:Lcom/google/android/gms/internal/zzxe;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxe;->zza(Lcom/google/android/gms/internal/zzxe;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    return-void
.end method
