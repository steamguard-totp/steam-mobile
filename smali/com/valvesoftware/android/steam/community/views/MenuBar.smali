.class public Lcom/valvesoftware/android/steam/community/views/MenuBar;
.super Landroid/widget/LinearLayout;
.source "MenuBar.java"


# instance fields
.field private extraMenuButton:Landroid/widget/ImageButton;

.field private hamburgerButton:Landroid/widget/Button;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshButton:Landroid/widget/Button;

.field private refreshClickedListener:Landroid/view/View$OnClickListener;

.field private searchButton:Landroid/widget/Button;

.field private searchClickedListener:Landroid/view/View$OnClickListener;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string v1, "layout_inflater"

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03002b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    const v1, 0x7f0e00f3

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->hamburgerButton:Landroid/widget/Button;

    .line 36
    const v1, 0x7f0e00f4

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->titleTextView:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0e00f5

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->searchButton:Landroid/widget/Button;

    .line 38
    const v1, 0x7f0e00f6

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshButton:Landroid/widget/Button;

    .line 39
    const v1, 0x7f0e00f7

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->progressBar:Landroid/widget/ProgressBar;

    .line 40
    const v1, 0x7f0e00f8

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->extraMenuButton:Landroid/widget/ImageButton;

    .line 41
    return-void
.end method


# virtual methods
.method public hideProgressIndicator()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshClickedListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public setExtraMenuItem(Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;)V
    .locals 2
    .param p1, "extraMenuItem"    # Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->extraMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->extraMenuButton:Landroid/widget/ImageButton;

    iget v1, p1, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;->iconResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->extraMenuButton:Landroid/widget/ImageButton;

    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->extraMenuButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->extraMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setHamburgerClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "hamburgerClickedListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->hamburgerButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public setRefreshClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "refreshClickedListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshClickedListener:Landroid/view/View$OnClickListener;

    .line 56
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshClickedListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "searchClickedListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->searchClickedListener:Landroid/view/View$OnClickListener;

    .line 45
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->searchClickedListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->searchButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->searchButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->searchButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public showProgressIndicator()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->refreshButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/MenuBar;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    return-void
.end method
