.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$10;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->showProgressIndicator()V
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
    .line 350
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$10;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$10;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$600(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$10;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$700(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 354
    return-void
.end method
