.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$6;
.super Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;
.source "BaseActivity.java"


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
    .line 271
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$6;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$6;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->hideKeyboard(Landroid/app/Activity;)V

    .line 275
    const/4 v0, 0x0

    return v0
.end method
