.class Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$3;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "FriendSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->getDetailedPersonaInfo(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->searchComplete()V

    .line 127
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 113
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/PersonaTranslator;->translateList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "currentSearchResults":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)V

    .line 118
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->searchComplete()V

    .line 119
    return-void
.end method
