.class Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/activity/LoginChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/MainActivity;->loadLoginFragment(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

.field final synthetic val$intentAfterLoginCompletes:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/MainActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->val$intentAfterLoginCompletes:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginChangedSuccessfully()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;-><init>()V

    .line 121
    .local v0, "gcmRegistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->registerWithGcm()V

    .line 124
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->Clear()V

    .line 126
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->access$000(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V

    .line 128
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshNavDrawer()V

    .line 129
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 130
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->showMenuAndActionBar()V

    .line 131
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->start()V

    .line 132
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->val$intentAfterLoginCompletes:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->access$100(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$1;->val$intentAfterLoginCompletes:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
