.class public Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchBarFragment.java"


# instance fields
.field private searchTextBox:Landroid/widget/EditText;

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private getCloseButton(Landroid/view/View;)Landroid/widget/Button;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    const v0, 0x7f0e0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private getSearchTextBox(Landroid/view/View;)Landroid/widget/EditText;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    const v0, 0x7f0e0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0137

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "frameLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public closeSearch()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->searchTextBox:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->setVisibility(I)V

    .line 47
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->hideKeyboard(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    const v2, 0x7f030049

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 23
    .local v1, "fragmentView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->getCloseButton(Landroid/view/View;)Landroid/widget/Button;

    move-result-object v0

    .line 24
    .local v0, "closeButton":Landroid/widget/Button;
    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->getSearchTextBox(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->searchTextBox:Landroid/widget/EditText;

    .line 25
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 26
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->searchTextBox:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 28
    :cond_0
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-object v1
.end method

.method public openSearch()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->searchTextBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 41
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->showKeyboard(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method public setSearchTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->textWatcher:Landroid/text/TextWatcher;

    .line 63
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->searchTextBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->searchTextBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method
