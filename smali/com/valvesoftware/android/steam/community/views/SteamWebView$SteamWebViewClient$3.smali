.class Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;
.super Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_hdlrDelayed:Landroid/webkit/SslErrorHandler;

.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

.field final synthetic val$hdlrDelayed:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;Landroid/app/Activity;Lcom/valvesoftware/android/steam/community/SettingInfo;Landroid/widget/TextView;Landroid/webkit/SslErrorHandler;)V
    .locals 1
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;
    .param p2, "act"    # Landroid/app/Activity;
    .param p3, "si"    # Lcom/valvesoftware/android/steam/community/SettingInfo;
    .param p4, "value"    # Landroid/widget/TextView;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;->this$1:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    iput-object p5, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;->val$hdlrDelayed:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0, p2, p3, p4}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;-><init>(Landroid/app/Activity;Lcom/valvesoftware/android/steam/community/SettingInfo;Landroid/widget/TextView;)V

    .line 855
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;->val$hdlrDelayed:Landroid/webkit/SslErrorHandler;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;->m_hdlrDelayed:Landroid/webkit/SslErrorHandler;

    return-void
.end method


# virtual methods
.method public onSettingChanged(Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;)V
    .locals 2
    .param p1, "sel"    # Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .prologue
    .line 848
    iget v0, p1, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 849
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;->m_hdlrDelayed:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;->m_hdlrDelayed:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method
