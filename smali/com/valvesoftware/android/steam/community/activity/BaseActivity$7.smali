.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$7;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

.field final synthetic val$searchBar:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$7;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$7;->val$searchBar:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$7;->val$searchBar:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$7;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$300(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->setSearchTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$7;->val$searchBar:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->openSearch()V

    .line 288
    const/4 v0, 0x1

    return v0
.end method
