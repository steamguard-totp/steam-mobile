.class public abstract Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "BaseSearchListFragment.java"


# instance fields
.field protected adapter:Landroid/widget/BaseAdapter;

.field protected footerBtnNext:Landroid/widget/TextView;

.field protected footerBtnPrev:Landroid/widget/TextView;

.field protected footerButtons:Landroid/view/View;

.field protected numCurrentResults:I

.field protected numTotalResults:I

.field protected progressLabel:Landroid/widget/TextView;

.field protected queryOffset:I

.field protected queryString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    return-void
.end method

.method private hasNextPage()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    iget v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numTotalResults:I

    add-int/lit8 v1, v1, -0x32

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPrevPage()Z
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected displayInProgress()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->progressLabel:Landroid/widget/TextView;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->progressLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    return-void
.end method

.method protected displayPagingElementsIfNeeded()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 122
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerButtons:Landroid/view/View;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->hasPrevPage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerBtnNext:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerBtnPrev:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->hasPrevPage()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    return-void

    .line 122
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v0, v2

    .line 123
    goto :goto_1

    :cond_3
    move v1, v2

    .line 124
    goto :goto_2
.end method

.method protected displayResultsSummary()V
    .locals 7

    .prologue
    .line 103
    const v0, 0x7f0800ac

    .line 104
    .local v0, "resid":I
    iget v2, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numTotalResults:I

    if-gtz v2, :cond_1

    .line 105
    const v0, 0x7f0800ae

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    iget v2, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numCurrentResults:I

    iget v5, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numTotalResults:I

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numTotalResults:I

    .line 110
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    :goto_1
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    iget v4, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numTotalResults:I

    .line 111
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "resultsText":Ljava/lang/String;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->progressLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->progressLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    return-void

    .line 106
    .end local v1    # "resultsText":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numCurrentResults:I

    iget v3, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numTotalResults:I

    if-ne v2, v3, :cond_0

    .line 107
    const v0, 0x7f0800ad

    goto :goto_0

    .line 110
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    iget v6, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numCurrentResults:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected getBaseActivity()Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 72
    .local v0, "parentActivity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 74
    .end local v0    # "parentActivity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0    # "parentActivity":Landroid/app/Activity;
    :cond_0
    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    goto :goto_0
.end method

.method protected hideInProgress()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->progressLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->progressLabel:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerButtons:Landroid/view/View;

    .line 40
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerButtons:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerBtnPrev:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0e013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerBtnNext:Landroid/widget/TextView;

    .line 45
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerBtnNext:Landroid/widget/TextView;

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->footerBtnPrev:Landroid/widget/TextView;

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$2;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 67
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->startSearch()V

    .line 68
    return-void
.end method

.method protected abstract query(Ljava/lang/String;)V
.end method

.method protected searchComplete()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->hideInProgress()V

    .line 90
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->displayResultsSummary()V

    .line 91
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->displayPagingElementsIfNeeded()V

    goto :goto_0
.end method

.method protected sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V
    .locals 1
    .param p1, "requestBuilder"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .prologue
    .line 78
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 79
    return-void
.end method

.method protected setNumCurrentResults(I)V
    .locals 0
    .param p1, "numCurrentResults"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numCurrentResults:I

    .line 100
    return-void
.end method

.method protected setNumTotalResults(I)V
    .locals 0
    .param p1, "numTotalResults"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->numTotalResults:I

    .line 96
    return-void
.end method

.method protected abstract setTitleBarText(Ljava/lang/String;)V
.end method

.method protected abstract startSearch()V
.end method
