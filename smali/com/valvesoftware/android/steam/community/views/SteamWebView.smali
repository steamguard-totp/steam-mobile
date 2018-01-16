.class public Lcom/valvesoftware/android/steam/community/views/SteamWebView;
.super Landroid/webkit/WebView;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;,
        Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;,
        Lcom/valvesoftware/android/steam/community/views/SteamWebView$ReportErrorTask;,
        Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    }
.end annotation


# static fields
.field public static m_FilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static m_MultiFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static m_arrayConsoleLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJavascriptAsyncReturnCode:Ljava/lang/String;

.field private mJavascriptAsyncReturnStatus:Ljava/lang/String;

.field private mJavascriptAsyncReturnValue:Ljava/lang/String;

.field private m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

.field private owner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    .line 77
    sput-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_FilePathCallback:Landroid/webkit/ValueCallback;

    .line 78
    sput-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_MultiFilePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setupView()V

    .line 91
    return-void
.end method

.method static synthetic access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isManagePhonePage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isManageTwofactorPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isSteamguardPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isCommunityPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocusWrapper()V

    return-void
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->mJavascriptAsyncReturnCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isStoreLaunchAuthPage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isLoginPage()Z

    move-result v0

    return v0
.end method

.method public static extractUrlFromOpenUrlUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1075
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, "uriString":Ljava/lang/String;
    const-string v0, "openurl?url="

    .line 1077
    .local v0, "keyPattern":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1078
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1082
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private isCommunityPage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLoginPage()Z
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 108
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mobilelogin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isManagePhonePage()Z
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 139
    :goto_0
    return v1

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "startsWith "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/phone/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/phone/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isManageTwofactorPage()Z
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 128
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/twofactor/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isSteamguardPage()Z
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 118
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/steamguard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isStoreLaunchAuthPage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "/paypal/launchauth"

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/paypal/launchauth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestFocusWrapper()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideProgressIndicator()V
    .locals 1

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->hideProgressIndicator()V

    .line 1095
    :cond_0
    return-void
.end method

.method public isMobileConfirmationPage()Z
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mobileconf/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 1031
    if-nez p1, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    :cond_3
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocusWrapper()V

    .line 1047
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;

    if-eqz v0, :cond_4

    .line 1049
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;

    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->SetBrowserBarLocation(Ljava/lang/String;)V

    .line 1052
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->showProgressIndicator()V

    goto :goto_0
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->showProgressIndicator()V

    .line 253
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 254
    return-void
.end method

.method public setBlackBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBackgroundColor(I)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->owner:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 174
    return-void
.end method

.method public setViewContentsShowFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hrefRetry"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1059
    invoke-static {p2}, Lcom/valvesoftware/android/steam/community/NetErrorTranslator;->translateError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "friendlyError":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><head><META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body bgcolor=\"#181818\" text=\"#D6D6D6\" link=\"#FFFFFF\" alink=\"#FFFFFF\" vlink=\"#FFFFFF\"><br/><h2 align=\"center\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1064
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    const v3, 0x7f0800c9

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</h2><p align=\"left\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</p><p align=\"left\"><small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</small></p><p align=\"center\"><a href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1069
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    const v3, 0x7f0800c8

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a></p></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html; charset=UTF-8"

    const-string v3, "utf-8"

    .line 1061
    invoke-virtual {p0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-void
.end method

.method protected setupView()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBlackBackground()V

    .line 193
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;

    invoke-direct {v0, p0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 194
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;

    invoke-direct {v0, p0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebChromeClient;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 196
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 210
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 214
    :cond_2
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-eq v0, v1, :cond_3

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 216
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 220
    :cond_3
    invoke-virtual {p0, v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setScrollBarStyle(I)V

    .line 221
    invoke-virtual {p0, v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 222
    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setFocusable(Z)V

    .line 223
    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setFocusableInTouchMode(Z)V

    .line 224
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    .line 246
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_steamguardJavascriptHandler:Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    const-string v1, "SGHandler"

    invoke-virtual {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->requestFocusWrapper()V

    goto :goto_0
.end method

.method protected showProgressIndicator()V
    .locals 1

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 1087
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->showProgressIndicator()V

    .line 1089
    :cond_0
    return-void
.end method
