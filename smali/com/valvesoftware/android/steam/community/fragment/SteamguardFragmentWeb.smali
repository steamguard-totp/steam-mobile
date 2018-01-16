.class public Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;
.super Landroid/support/v4/app/Fragment;
.source "SteamguardFragmentWeb.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/fragment/IBackButtonSupport;


# instance fields
.field private m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

.field private twoFactorContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    return-object v0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->goBack()V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 35
    const v4, 0x7f030052

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0e0143

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorContainer:Landroid/widget/FrameLayout;

    .line 37
    const v4, 0x7f0e014a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    iput-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    .line 39
    const v4, 0x7f0e014b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 40
    .local v3, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .line 41
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v4, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setOwner(Ljava/lang/Object;)V

    .line 42
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "strDefaultUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 47
    const-string v4, "defaultUrl"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_0
    if-eqz v1, :cond_1

    .line 51
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v4, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-object v2

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    sget-object v5, Lcom/valvesoftware/android/steam/community/SteamAppUri;->STEAMGUARD_PRECHANGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 78
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->stop()V

    .line 79
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->unregister()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 62
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->receiver:Landroid/content/BroadcastReceiver;

    .line 68
    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->hintSync()V

    .line 69
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080136

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->syncFragments()V

    .line 73
    return-void
.end method

.method public setTwoFactorVisible(Z)V
    .locals 3
    .param p1, "bVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->setInvisibleIfNoCodes(Z)V

    .line 95
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->syncFragments()V

    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->hintSync()V

    .line 100
    :cond_1
    return-void

    .line 93
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
