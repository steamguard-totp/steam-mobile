.class public Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/fragment/IBackButtonSupport;


# instance fields
.field private inMiddleOfProcessing:Z

.field private m_bWebViewPaused:Z

.field protected m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->inMiddleOfProcessing:Z

    .line 22
    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_bWebViewPaused:Z

    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->canGoBack()Z

    move-result v0

    .line 80
    .local v0, "bRet":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canGoBack is returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->goBack()V

    .line 86
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 27
    .local v0, "view":Landroid/widget/LinearLayout;
    const v1, 0x7f0e0164

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .line 28
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setOwner(Ljava/lang/Object;)V

    .line 29
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->onPause()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_bWebViewPaused:Z

    .line 40
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 46
    iget-boolean v3, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_bWebViewPaused:Z

    if-eqz v3, :cond_1

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 48
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->onResume()V

    .line 51
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_bWebViewPaused:Z

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 57
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->inMiddleOfProcessing:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getURL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 63
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v3, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v3, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 69
    .local v1, "mainActivity":Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment$1;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;)V

    invoke-virtual {v1, v3}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setRefreshButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .end local v1    # "mainActivity":Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    :cond_4
    return-void
.end method

.method public refreshConfirmationsPageIfActive()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isMobileConfirmationPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->reload()V

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInMiddleOfProcessing(Z)V
    .locals 0
    .param p1, "inMiddleOfProcessing"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->inMiddleOfProcessing:Z

    .line 96
    return-void
.end method
