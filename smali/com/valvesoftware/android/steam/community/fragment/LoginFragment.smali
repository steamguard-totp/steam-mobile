.class public Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;
.super Landroid/support/v4/app/Fragment;
.source "LoginFragment.java"


# static fields
.field private static final loginUrl:Ljava/lang/String;


# instance fields
.field private hidingTwoFactorCode:Z

.field private loginChangedListener:Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;

.field private steamWebView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

.field private twoFactorCodeHandler:Landroid/os/Handler;

.field private twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobilelogin?oauth_client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$WebAPI;->OAUTH_CLIENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&oauth_scope=read_profile%20write_profile%20read_client%20write_client"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->loginUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->hidingTwoFactorCode:Z

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->twoFactorCodeHandler:Landroid/os/Handler;

    return-void
.end method

.method private HandleLoginDocument(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1, "doc"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "x_steamid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->logOut()V

    .line 123
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginInformation()Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    move-result-object v0

    .line 124
    .local v0, "loginInformation":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
    sget-object v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->LoggedIn:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->loginState:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    .line 125
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->accessToken:Ljava/lang/String;

    .line 126
    const-string v1, "x_steamid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    .line 127
    const-string v1, "wgtoken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtoken:Ljava/lang/String;

    .line 128
    const-string v1, "wgtoken_secure"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtokenSecure:Ljava/lang/String;

    .line 130
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setLoginInformation(Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;)V

    .line 132
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->UpdateCachedLoginInformation()V

    .line 134
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->dispatchOnLoginChangedSuccessfully()V

    .line 136
    const/4 v1, 0x1

    .line 139
    .end local v0    # "loginInformation":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->hidingTwoFactorCode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->hidingTwoFactorCode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->twoFactorCodeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dispatchOnLoginChangedSuccessfully()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->loginChangedListener:Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->loginChangedListener:Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;

    invoke-interface {v0}, Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;->onLoginChangedSuccessfully()V

    .line 146
    :cond_0
    return-void
.end method

.method private loadPage()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->steamWebView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    sget-object v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->loginUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public OnMobileLoginSucceeded(Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;)V
    .locals 7
    .param p1, "result"    # Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v1, "doc":Lorg/json/JSONObject;
    sget-object v5, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->steamid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {p1, v5}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "steamID":Ljava/lang/String;
    const-string v5, "x_steamid"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v5, "access_token"

    sget-object v6, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->oauth_token:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {p1, v6}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v5, "wgtoken"

    sget-object v6, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->wgtoken:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {p1, v6}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v5, "wgtoken_secure"

    sget-object v6, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->wgtoken_secure:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {p1, v6}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    sget-object v5, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->webcookie:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "webCookie":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 91
    const-string v5, "x_webcookie"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_0
    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->HandleLoginDocument(Lorg/json/JSONObject;)Z

    move-result v0

    .line 98
    .local v0, "bSuccess":Z
    if-eqz v0, :cond_1

    .line 99
    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForSteamID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v2

    .line 100
    .local v2, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->startGetTwoFactorStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "doc":Lorg/json/JSONObject;
    .end local v2    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v3    # "steamID":Ljava/lang/String;
    .end local v4    # "webCookie":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 109
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->loadPage()V

    .line 111
    :cond_2
    return-void

    .line 105
    .end local v0    # "bSuccess":Z
    :catch_0
    move-exception v5

    const/4 v0, 0x0

    .restart local v0    # "bSuccess":Z
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 42
    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->twoFactorCodeListView:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    .line 46
    const v1, 0x7f0e00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->steamWebView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .line 47
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->steamWebView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setOwner(Ljava/lang/Object;)V

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->steamWebView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->loadPage()V

    .line 75
    return-object v0
.end method

.method public setLoginChangedListener(Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;)V
    .locals 0
    .param p1, "loginChangedListener"    # Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->loginChangedListener:Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;

    .line 150
    return-void
.end method
