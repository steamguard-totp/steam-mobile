.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->hideProgressIndicator(I)V
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
    .line 367
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$800(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$900(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/views/MenuBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$900(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/views/MenuBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->hideProgressIndicator()V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$600(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$600(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method
