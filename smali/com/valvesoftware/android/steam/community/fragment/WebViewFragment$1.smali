.class Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment$1;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->reload()V

    .line 73
    return-void
.end method
