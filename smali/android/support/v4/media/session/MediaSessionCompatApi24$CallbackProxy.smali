.class Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
.super Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;",
        ">",
        "Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 70
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 75
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 80
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    return-void
.end method
