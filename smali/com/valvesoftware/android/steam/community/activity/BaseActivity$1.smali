.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 125
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notificationCountsChanged(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;)V
    .locals 1
    .param p1, "notificationCounts"    # Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->UpdateNotificationCounts(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;)V

    .line 129
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$1;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onNotificationCountsChanged()V

    .line 130
    return-void
.end method
