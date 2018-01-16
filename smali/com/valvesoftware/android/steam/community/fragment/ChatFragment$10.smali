.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->loadChatParticipantInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

.field final synthetic val$steamId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;->val$steamId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 435
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 414
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/PersonaTranslator;->translateList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 415
    .local v1, "chatParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 421
    .local v0, "chatParticipant":Lcom/valvesoftware/android/steam/community/model/Persona;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;->val$steamId:Ljava/lang/String;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 422
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$1202(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$400(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->setChatPartnerAvatarUrl(Ljava/lang/String;)V

    .line 426
    :cond_2
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$1302(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    :cond_3
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$1400(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    goto :goto_0
.end method
