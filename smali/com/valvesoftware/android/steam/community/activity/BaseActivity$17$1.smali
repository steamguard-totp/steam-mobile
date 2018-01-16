.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 629
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;-><init>()V

    .line 630
    .local v0, "gcmRegistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->unregister()V

    .line 631
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$1100(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1$1;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    return-void
.end method
