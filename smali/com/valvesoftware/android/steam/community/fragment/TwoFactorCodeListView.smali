.class public Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;
.super Landroid/widget/FrameLayout;
.source "TwoFactorCodeListView.java"


# instance fields
.field private invisibleIfNoCodes:Z

.field private pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private stopUpdatingTime:Z

.field private timeCorrectorTask:Ljava/lang/Runnable;

.field private twoFactorPlaceholder:Landroid/view/View;

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v6, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->stopUpdatingTime:Z

    .line 34
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->updateHandler:Landroid/os/Handler;

    .line 35
    new-instance v4, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$1;

    invoke-direct {v4, p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;)V

    iput-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->timeCorrectorTask:Ljava/lang/Runnable;

    .line 52
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 53
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030057

    const/4 v5, 0x1

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e0155

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iput-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    .line 55
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->init()V

    .line 56
    const v4, 0x7f0e0156

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->twoFactorPlaceholder:Landroid/view/View;

    .line 58
    sget-object v4, Lcom/valvesoftware/android/steam/community/R$styleable;->TwoFactorCodeListFragment:[I

    invoke-virtual {p1, p2, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->invisibleIfNoCodes:Z

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    new-instance v4, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$2;

    invoke-direct {v4, p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;)V

    iput-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 69
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v7}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    .local v2, "twoFactorCodeView":Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;
    invoke-virtual {v2, v7}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->setSteamguardState(Lcom/valvesoftware/android/steam/community/SteamguardState;)V

    .line 74
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    const-string v5, "test"

    invoke-virtual {v4, v2, v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 80
    .end local v2    # "twoFactorCodeView":Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0, p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->gatherFragments(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->stopUpdatingTime:Z

    return v0
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private gatherFragments(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 118
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSortedTwoFactorSteamGuardStates()Ljava/util/ArrayList;

    move-result-object v2

    .line 120
    .local v2, "sgStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/SteamguardState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/SteamguardState;

    .line 125
    .local v1, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    .local v3, "twoFactorCodeView":Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;
    invoke-virtual {v3, v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->setSteamguardState(Lcom/valvesoftware/android/steam/community/SteamguardState;)V

    .line 128
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 129
    invoke-virtual {v3, v6}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->enableForwardArrow(Z)V

    .line 132
    :cond_0
    if-lez v0, :cond_1

    .line 133
    invoke-virtual {v3, v6}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->enableBackArrow(Z)V

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    .end local v1    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v3    # "twoFactorCodeView":Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;
    :cond_2
    iget-boolean v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->invisibleIfNoCodes:Z

    if-nez v4, :cond_4

    .line 140
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->showPlaceholder()V

    .line 145
    :cond_3
    :goto_1
    return-void

    .line 143
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private removePlaceholder()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->twoFactorPlaceholder:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void
.end method

.method private showPlaceholder()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->clear()V

    .line 149
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->twoFactorPlaceholder:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void
.end method

.method private startTimeCorrectorChecking()V
    .locals 4

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->stopUpdatingTime:Z

    .line 179
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->timeCorrectorTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void
.end method

.method private stopTimeCorrectorChecking()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->stopUpdatingTime:Z

    .line 184
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->timeCorrectorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "TWOFACTORCODES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->startTimeCorrectorChecking()V

    .line 164
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 169
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->stopTimeCorrectorChecking()V

    .line 171
    return-void
.end method

.method public setInvisibleIfNoCodes(Z)V
    .locals 0
    .param p1, "invisibleIfNoCodes"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->invisibleIfNoCodes:Z

    .line 48
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->stopTimeCorrectorChecking()V

    .line 175
    return-void
.end method

.method public syncFragments()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "numTwoFactorCodeViews":I
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSortedTwoFactorSteamGuardStates()Ljava/util/ArrayList;

    move-result-object v3

    .line 85
    .local v3, "sgStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/SteamguardState;>;"
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->clear()V

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sgStates size: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 90
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/SteamguardState;

    .line 92
    .local v2, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    new-instance v4, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    .local v4, "tf":Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->pagingHorizontalScrollView:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v4, v2}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->setSteamguardState(Lcom/valvesoftware/android/steam/community/SteamguardState;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 98
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->enableForwardArrow(Z)V

    .line 99
    if-lez v0, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->enableBackArrow(Z)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 98
    goto :goto_1

    :cond_1
    move v5, v7

    .line 99
    goto :goto_2

    .line 102
    .end local v2    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v4    # "tf":Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number of code views: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    if-nez v1, :cond_4

    .line 105
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->showPlaceholder()V

    .line 106
    iget-boolean v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->invisibleIfNoCodes:Z

    if-eqz v5, :cond_3

    .line 107
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->setVisibility(I)V

    .line 115
    :goto_3
    return-void

    .line 109
    :cond_3
    invoke-virtual {p0, v7}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->setVisibility(I)V

    goto :goto_3

    .line 112
    :cond_4
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->removePlaceholder()V

    .line 113
    invoke-virtual {p0, v7}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->setVisibility(I)V

    goto :goto_3
.end method
