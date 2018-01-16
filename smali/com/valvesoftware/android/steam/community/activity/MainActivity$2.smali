.class Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/MainActivity;->refreshUserNotificationCounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 175
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 154
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->Clear()V

    .line 156
    const-string v5, "notifications"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 157
    .local v4, "rgJsonNotifications":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 159
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 160
    .local v3, "oJsonNotification":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 161
    const-string v5, "user_notification_type"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 162
    .local v2, "nNotificationType":I
    const-string v5, "count"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "cNotificationCount":I
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-virtual {v5, v2, v0}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->SetNotificationCount(II)V

    .line 158
    .end local v0    # "cNotificationCount":I
    .end local v2    # "nNotificationType":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    .end local v3    # "oJsonNotification":Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$2;->this$0:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->onNotificationCountsChanged()V

    .line 170
    return-void
.end method
