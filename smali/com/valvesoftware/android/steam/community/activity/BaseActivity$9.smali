.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$9;
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


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$9;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$9;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$500(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    move-result-object v0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$9;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$500(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    move-result-object v0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 323
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
