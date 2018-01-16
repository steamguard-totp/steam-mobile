.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16$1;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 600
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 591
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setDontLoginToChat(Z)V

    .line 592
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$1000(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16$1;->this$1:Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$1000(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->notifyDataSetChanged()V

    .line 595
    :cond_0
    return-void

    .line 591
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
