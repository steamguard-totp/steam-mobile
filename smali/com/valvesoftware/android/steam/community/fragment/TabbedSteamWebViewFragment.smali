.class public Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;
.super Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
.source "TabbedSteamWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;
    }
.end annotation


# static fields
.field private static final m_categoryButtons:[I


# instance fields
.field private btnLayout:Landroid/widget/LinearLayout;

.field private m_selectedTab:I

.field private final m_toggleListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_categoryButtons:[I

    return-void

    :array_0
    .array-data 4
        0x7f0e015c
        0x7f0e015d
        0x7f0e015e
        0x7f0e015f
        0x7f0e0160
        0x7f0e0161
        0x7f0e0162
        0x7f0e0163
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_selectedTab:I

    .line 154
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_toggleListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method private UpdateToggleButtonStyles()V
    .locals 6

    .prologue
    .line 114
    sget-object v3, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_categoryButtons:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    .line 115
    .local v1, "m_categoryButton":I
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 116
    .local v0, "catButton":Landroid/widget/ToggleButton;
    if-nez v0, :cond_0

    .line 114
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->UpdateToggleButtonStyles(Landroid/widget/ToggleButton;)V

    goto :goto_1

    .line 120
    .end local v0    # "catButton":Landroid/widget/ToggleButton;
    .end local v1    # "m_categoryButton":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->UpdateToggleButtonStyles()V

    return-void
.end method

.method static synthetic access$102(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_selectedTab:I

    return p1
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->setCategoriesFailed()V

    return-void
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->setCategories(Ljava/util/List;)V

    return-void
.end method

.method private getCategoryUrlInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getGenericJsonGetRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 171
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$2;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 195
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 196
    return-void
.end method

.method private setCategories(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UrlCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UrlCategory;>;"
    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 58
    iget v3, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_selectedTab:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v3, v7, :cond_2

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_selectedTab:I

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->btnLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 65
    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->btnLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 70
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v7, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_categoryButtons:[I

    aget v7, v7, v1

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 71
    .local v0, "catButton":Landroid/widget/ToggleButton;
    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;

    iget-object v3, v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;

    iget-object v3, v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;

    iget-object v3, v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v7, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;

    iget-object v3, v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;->url:Ljava/lang/String;

    invoke-direct {v7, p0, v3}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;-><init>(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget v3, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_selectedTab:I

    if-ne v1, v3, :cond_4

    move v3, v6

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "catButton":Landroid/widget/ToggleButton;
    .end local v1    # "i":I
    :cond_3
    move v3, v5

    .line 65
    goto :goto_1

    .restart local v0    # "catButton":Landroid/widget/ToggleButton;
    .restart local v1    # "i":I
    :cond_4
    move v3, v4

    .line 78
    goto :goto_3

    .line 80
    .end local v0    # "catButton":Landroid/widget/ToggleButton;
    :cond_5
    :goto_4
    sget-object v3, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_categoryButtons:[I

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 81
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_categoryButtons:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 82
    .restart local v0    # "catButton":Landroid/widget/ToggleButton;
    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 84
    .end local v0    # "catButton":Landroid/widget/ToggleButton;
    :cond_6
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->UpdateToggleButtonStyles()V

    .line 87
    iget v3, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_selectedTab:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;

    iget-object v2, v3, Lcom/valvesoftware/android/steam/community/model/UrlCategory;->url:Ljava/lang/String;

    .line 91
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v3, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setCategoriesFailed()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->catalog()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    const v3, 0x7f0800c7

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setViewContentsShowFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_toggleListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 104
    const v1, 0x7f0e015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->btnLayout:Landroid/widget/LinearLayout;

    .line 105
    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->onResume()V

    .line 39
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 41
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 43
    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->getCategoryUrlInfo(Ljava/lang/String;)V

    .line 50
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v2, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MOBILE_STOREFRONT_ACCOUNTDETAILS_CATEGORIES_URL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->getCategoryUrlInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
