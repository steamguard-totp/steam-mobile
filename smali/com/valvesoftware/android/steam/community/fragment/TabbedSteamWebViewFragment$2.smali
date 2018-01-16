.class Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$2;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "TabbedSteamWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->getCategoryUrlInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V

    .line 192
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 174
    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/UrlCategoryTranslator;->translate(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UrlCategory;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-static {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->access$300(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;Ljava/util/List;)V

    goto :goto_0
.end method
