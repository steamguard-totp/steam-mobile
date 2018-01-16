.class abstract Landroid/support/v7/media/RemoteControlClientCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;,
        Landroid/support/v7/media/RemoteControlClientCompat$LegacyImpl;,
        Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;,
        Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mRcc:Ljava/lang/Object;

.field protected mVolumeCallback:Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rcc"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Landroid/support/v7/media/RemoteControlClientCompat;->mRcc:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static obtain(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v7/media/RemoteControlClientCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rcc"    # Ljava/lang/Object;

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 42
    new-instance v0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/media/RemoteControlClientCompat$LegacyImpl;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/RemoteControlClientCompat$LegacyImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat;->mRcc:Ljava/lang/Object;

    return-object v0
.end method

.method public setPlaybackInfo(Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    .prologue
    .line 58
    return-void
.end method

.method public setVolumeCallback(Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat;->mVolumeCallback:Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;

    .line 67
    return-void
.end method
