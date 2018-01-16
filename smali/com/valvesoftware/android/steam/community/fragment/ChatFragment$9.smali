.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$9;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->markMessagesRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 368
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 364
    return-void
.end method
