.class public Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;
.super Ljava/lang/Object;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SteamguardJavascriptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method public constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$500(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultStatus()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultValue()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 282
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultBusy()V

    .line 284
    return-object v0
.end method

.method public setJavascriptResultBusy()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$402(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, "busy"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$302(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setJavascriptResultError(Ljava/lang/String;I)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string p1, ""

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$402(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$302(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$502(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setJavascriptResultOkay(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const-string p1, ""

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$402(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const-string v1, "ok"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$302(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    return-void
.end method
