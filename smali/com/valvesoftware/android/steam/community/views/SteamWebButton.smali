.class public Lcom/valvesoftware/android/steam/community/views/SteamWebButton;
.super Landroid/widget/LinearLayout;
.source "SteamWebButton.java"


# instance fields
.field private detailTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v9, Lcom/valvesoftware/android/steam/community/R$styleable;->SteamWebButton:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 25
    .local v7, "titleTextId":I
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 26
    .local v2, "detailTextId":I
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 27
    .local v5, "showTopBorder":Z
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 29
    .local v4, "showBottomBorder":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->setOrientation(I)V

    .line 32
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    const-string v9, "layout_inflater"

    .line 35
    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 36
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f030050

    const/4 v10, 0x1

    invoke-virtual {v3, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v9, 0x7f0e00d7

    invoke-virtual {p0, v9}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 39
    .local v6, "textView":Landroid/widget/TextView;
    const v9, 0x7f0e00d8

    invoke-virtual {p0, v9}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->detailTextView:Landroid/widget/TextView;

    .line 40
    const v9, 0x7f0e0141

    invoke-virtual {p0, v9}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 41
    .local v8, "topBorder":Landroid/view/View;
    const v9, 0x7f0e0142

    invoke-virtual {p0, v9}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "bottomBorder":Landroid/view/View;
    if-eqz v5, :cond_2

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 44
    if-eqz v4, :cond_3

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 46
    if-lez v7, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    if-lez v2, :cond_1

    .line 51
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->detailTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    return-void

    .line 43
    :cond_2
    const/4 v9, 0x4

    goto :goto_0

    .line 44
    :cond_3
    const/4 v9, 0x4

    goto :goto_1
.end method


# virtual methods
.method public setDetailText(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailText"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->detailTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->detailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebButton;->setClickable(Z)V

    .line 61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
