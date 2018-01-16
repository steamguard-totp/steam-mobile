.class Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$4;
.super Ljava/lang/Object;
.source "SteamWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$4;->this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$4;->this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBackgroundColor(I)V

    .line 884
    return-void
.end method
