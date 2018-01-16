.class Lcom/valvesoftware/android/steam/community/TimeCorrector$2;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "TimeCorrector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/TimeCorrector;->getServerTime(Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

.field final synthetic val$handler:Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;

.field final synthetic val$requestStartTime:J


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/TimeCorrector;Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/TimeCorrector;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$handler:Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;

    iput-wide p3, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$requestStartTime:J

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 8
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$handler:Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$requestStartTime:J

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-static {v6}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->access$400(Lcom/valvesoftware/android/steam/community/TimeCorrector;)J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;->handleResult(ZJJJ)V

    .line 385
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 364
    const-string v0, "allow_correction"

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$handler:Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$requestStartTime:J

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-static {v6}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->access$400(Lcom/valvesoftware/android/steam/community/TimeCorrector;)J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;->handleResult(ZJJJ)V

    .line 380
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string v0, "server_time"

    const-string v2, "0"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 372
    .local v8, "serverTime":J
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->access$500(Lcom/valvesoftware/android/steam/community/TimeCorrector;Lorg/json/JSONObject;)V

    .line 374
    cmp-long v0, v8, v4

    if-lez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$handler:Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$requestStartTime:J

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->access$400(Lcom/valvesoftware/android/steam/community/TimeCorrector;)J

    move-result-wide v6

    move v1, v10

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;->handleResult(ZJJJ)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$handler:Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->val$requestStartTime:J

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-static {v6}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->access$400(Lcom/valvesoftware/android/steam/community/TimeCorrector;)J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;->handleResult(ZJJJ)V

    goto :goto_0
.end method
