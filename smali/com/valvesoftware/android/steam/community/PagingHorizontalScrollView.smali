.class public Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "PagingHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;
    }
.end annotation


# instance fields
.field private bNeedsUpdate:Z

.field private mCurrentIndex:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private scrollableItemsWrapper:Landroid/widget/LinearLayout;

.field private tagsToViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->mCurrentIndex:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->tagsToViews:Ljava/util/HashMap;

    .line 32
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollableItemsWrapper:Landroid/widget/LinearLayout;

    .line 33
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollableItemsWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollableItemsWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollableItemsWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->addView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->bNeedsUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    .prologue
    .line 19
    iget v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->mCurrentIndex:I

    return p1
.end method

.method private getScreenWidth()I
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 146
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->tagsToViews:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollableItemsWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 130
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->tagsToViews:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->tagsToViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 132
    .local v1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 133
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 134
    .local v0, "v":Landroid/view/View;
    instance-of v3, v0, Lcom/valvesoftware/android/steam/community/CloseableView;

    if-eqz v3, :cond_0

    .line 135
    check-cast v0, Lcom/valvesoftware/android/steam/community/CloseableView;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0}, Lcom/valvesoftware/android/steam/community/CloseableView;->close()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->tagsToViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 141
    .end local v1    # "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    :cond_2
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollableItemsWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 142
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;-><init>(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)V

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;-><init>(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 111
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 63
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 68
    .local v0, "h":Landroid/os/Handler;
    new-instance v2, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$1;-><init>(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->bNeedsUpdate:Z

    .line 59
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollableItemsWrapper:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollableItemsWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-boolean v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->bNeedsUpdate:Z

    if-eqz v1, :cond_0

    .line 79
    iput-boolean v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->bNeedsUpdate:Z

    .line 80
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->tagsToViews:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->tagsToViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->tagsToViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 82
    .local v0, "anyChildView":Landroid/view/View;
    iget v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->mCurrentIndex:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1, v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->scrollTo(II)V

    .line 85
    .end local v0    # "anyChildView":Landroid/view/View;
    :cond_0
    return-void
.end method
