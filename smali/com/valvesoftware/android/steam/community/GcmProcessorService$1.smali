.class Lcom/valvesoftware/android/steam/community/GcmProcessorService$1;
.super Ljava/lang/Object;
.source "GcmProcessorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/GcmProcessorService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/GcmProcessorService;

.field final synthetic val$strAlert:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/GcmProcessorService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/GcmProcessorService;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/GcmProcessorService$1;->this$0:Lcom/valvesoftware/android/steam/community/GcmProcessorService;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/GcmProcessorService$1;->val$strAlert:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->mMainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshConfirmationsPageIfActive()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 74
    .local v0, "bNotify":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getInstance()Lcom/valvesoftware/android/steam/community/NotificationSender;

    move-result-object v1

    .line 76
    .local v1, "notificationSender":Lcom/valvesoftware/android/steam/community/NotificationSender;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/GcmProcessorService$1;->val$strAlert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendConfirmationNotification(Ljava/lang/String;)V

    .line 78
    .end local v1    # "notificationSender":Lcom/valvesoftware/android/steam/community/NotificationSender;
    :cond_0
    return-void

    .line 72
    .end local v0    # "bNotify":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
