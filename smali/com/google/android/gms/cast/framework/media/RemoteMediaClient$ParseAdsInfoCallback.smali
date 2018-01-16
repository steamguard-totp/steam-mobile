.class public interface abstract Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParseAdsInfoCallback"
.end annotation


# virtual methods
.method public abstract parseAdBreaksFromMediaStatus(Lcom/google/android/gms/cast/MediaStatus;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parseIsPlayingAdFromMediaStatus(Lcom/google/android/gms/cast/MediaStatus;)Z
.end method
