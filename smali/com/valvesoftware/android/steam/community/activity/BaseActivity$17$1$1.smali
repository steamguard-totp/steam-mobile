.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1$1;->this$2:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 634
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->signOutOfAppCompletely()V

    .line 635
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->logOut()V

    .line 636
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1$1;->this$2:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 637
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1$1;->this$2:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshNavDrawer()V

    .line 638
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1$1;->this$2:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->finish()V

    .line 640
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->loginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 641
    .local v0, "loginIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 642
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1$1;->this$2:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 643
    return-void
.end method
