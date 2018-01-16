.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setupSearchBarForLimitedMenuBar(Landroid/text/TextWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

.field final synthetic val$searchBar:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

.field final synthetic val$searchTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;->val$searchBar:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;->val$searchTextWatcher:Landroid/text/TextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "item"    # Landroid/view/View;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;->val$searchBar:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;->val$searchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->setSearchTextChangedListener(Landroid/text/TextWatcher;)V

    .line 411
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;->val$searchBar:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->openSearch()V

    .line 412
    return-void
.end method
