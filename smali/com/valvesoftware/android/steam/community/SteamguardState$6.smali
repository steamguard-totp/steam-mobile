.class Lcom/valvesoftware/android/steam/community/SteamguardState$6;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;->internalStartSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

.field final synthetic val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

.field final synthetic val$newScheme:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

.field final synthetic val$oldScheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/SteamguardState;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->val$oldScheme:Ljava/lang/String;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->val$newScheme:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 3
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 903
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->failure(ILjava/lang/String;)V

    .line 905
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 879
    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->val$oldScheme:Ljava/lang/String;

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$700(Lcom/valvesoftware/android/steam/community/SteamguardState;)V

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "gid":Ljava/lang/String;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sanitize()V

    .line 888
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->val$newScheme:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$800(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    .line 889
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->saveToFile()Z

    .line 891
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->broadcastSteamguardStateRemoved(Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->success()V

    .line 898
    .end local v0    # "gid":Ljava/lang/String;
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$6;->val$completion:Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;->failure(ILjava/lang/String;)V

    goto :goto_0
.end method
