.class Lcom/valvesoftware/android/steam/community/SteamguardState$4;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;->startAddTwoFactor(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

.field final synthetic val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 3
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->failure(ILjava/lang/String;)V

    .line 740
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$400(Lcom/valvesoftware/android/steam/community/SteamguardState;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$500(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 726
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    new-instance v1, Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$400(Lcom/valvesoftware/android/steam/community/SteamguardState;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$602(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/TwoFactorToken;)Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    .line 728
    const-string v0, "shared_secret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendActivationCodeEmail()V

    .line 730
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->success()V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$4;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->failure(ILjava/lang/String;)V

    goto :goto_0
.end method
