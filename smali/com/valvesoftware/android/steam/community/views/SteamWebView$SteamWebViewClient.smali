.class Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SteamWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SteamWebViewClient"
.end annotation


# instance fields
.field private m_backgroundHandler:Landroid/os/Handler;

.field private m_loginContext:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

.field private m_urlWebView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method private constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 1

    .prologue
    .line 352
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 355
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->m_backgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;
    .param p2, "x1"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    return-void
.end method

.method private HandleGetConfirmationTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 733
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v0

    .line 734
    .local v0, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-nez v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-object v1

    .line 737
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTaggedConfirmationUrlParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private launchPayPalAuth(Ljava/lang/String;)V
    .locals 5
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v0

    .line 360
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->setInMiddleOfProcessing(Z)V

    .line 365
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching PayPal auth intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->readyForPaypalComplete(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    .line 368
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 369
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    .line 370
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .line 371
    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 372
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 374
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const v9, 0xffff

    const/4 v8, 0x0

    .line 880
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->m_backgroundHandler:Landroid/os/Handler;

    new-instance v4, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$4;

    invoke-direct {v4, p0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$4;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 888
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->hideProgressIndicator()V

    .line 891
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Console messages ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 893
    .local v1, "error":Ljava/lang/String;
    sget-object v3, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 895
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 896
    goto :goto_0

    .line 898
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_1

    .line 900
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 904
    :cond_1
    :try_start_0
    new-instance v3, Lcom/valvesoftware/android/steam/community/views/SteamWebView$ReportErrorTask;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$ReportErrorTask;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$ReportErrorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page finished with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " console messages."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 911
    .end local v1    # "error":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 912
    return-void

    .line 905
    .restart local v1    # "error":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report console messages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 869
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setBlackBackground()V

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mobileconf/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 874
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 876
    .end local v0    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v0, p4, p3}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setViewContentsShowFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 17
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedSslError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 762
    sget-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 763
    sget-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_0
    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Dev:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v1, v2, :cond_1

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 864
    :goto_0
    return-void

    .line 773
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Symantec Corporation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 777
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v14

    .line 778
    .local v14, "cf":Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 779
    .local v9, "caInput":Ljava/io/InputStream;
    invoke-virtual {v14, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    .line 780
    .local v12, "certificateExpected":Ljava/security/cert/Certificate;
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v9    # "caInput":Ljava/io/InputStream;
    .end local v14    # "cf":Ljava/security/cert/CertificateFactory;
    :goto_1
    :try_start_1
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v14

    .line 787
    .restart local v14    # "cf":Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 788
    .restart local v9    # "caInput":Ljava/io/InputStream;
    invoke-virtual {v14, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v13

    .line 789
    .local v13, "certificateSymantec":Ljava/security/cert/Certificate;
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 795
    .end local v9    # "caInput":Ljava/io/InputStream;
    .end local v14    # "cf":Ljava/security/cert/CertificateFactory;
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v7

    .line 796
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v1, "x509-certificate"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 797
    .local v8, "bytes":[B
    if-eqz v8, :cond_5

    .line 799
    :try_start_2
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v11

    .line 800
    .local v11, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v11, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 805
    .end local v11    # "certFactory":Ljava/security/cert/CertificateFactory;
    .local v10, "cert":Ljava/security/cert/Certificate;
    :goto_3
    if-eqz v10, :cond_5

    .line 806
    if-eqz v12, :cond_2

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 808
    sget-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    const-string v2, "Matched public key exactly, proceeding."

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 782
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "bytes":[B
    .end local v10    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "certificateExpected":Ljava/security/cert/Certificate;
    .end local v13    # "certificateSymantec":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    const/4 v12, 0x0

    .restart local v12    # "certificateExpected":Ljava/security/cert/Certificate;
    goto :goto_1

    .line 791
    :catch_1
    move-exception v1

    const/4 v13, 0x0

    .restart local v13    # "certificateSymantec":Ljava/security/cert/Certificate;
    goto :goto_2

    .line 802
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bytes":[B
    :catch_2
    move-exception v1

    const/4 v10, 0x0

    .restart local v10    # "cert":Ljava/security/cert/Certificate;
    goto :goto_3

    .line 813
    :cond_2
    if-eqz v13, :cond_5

    .line 815
    :try_start_3
    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 817
    sget-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    const-string v2, "Signed by Symantec, proceeding."

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 820
    :catch_3
    move-exception v16

    .line 821
    .local v16, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    .line 822
    sget-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_3
    invoke-super/range {p0 .. p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 832
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "bytes":[B
    .end local v10    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "certificateExpected":Ljava/security/cert/Certificate;
    .end local v13    # "certificateSymantec":Ljava/security/cert/Certificate;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_5

    .line 833
    sget-object v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->m_arrayConsoleLog:Ljava/util/ArrayList;

    const-string v2, "Not Symantec. Not proceeding."

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_5
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v1

    iget-object v4, v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingSslUntrustedPrompt:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 838
    .local v4, "settingInfo":Lcom/valvesoftware/android/steam/community/SettingInfo;
    iget-object v1, v4, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->NONE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    if-eq v1, v2, :cond_7

    .line 840
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 841
    .local v15, "ctxApp":Landroid/content/Context;
    invoke-virtual {v4, v15}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getRadioSelectorItemValue(Landroid/content/Context;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-result-object v1

    iget v1, v1, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto/16 :goto_0

    .line 844
    :cond_6
    move-object/from16 v6, p2

    .line 845
    .local v6, "hdlrDelayed":Landroid/webkit/SslErrorHandler;
    new-instance v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;Landroid/app/Activity;Lcom/valvesoftware/android/steam/community/SettingInfo;Landroid/widget/TextView;Landroid/webkit/SslErrorHandler;)V

    const/4 v2, 0x0

    .line 856
    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$3;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 863
    .end local v6    # "hdlrDelayed":Landroid/webkit/SslErrorHandler;
    .end local v15    # "ctxApp":Landroid/content/Context;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto/16 :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 28
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 378
    const-string v24, "steammobile://"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v24

    if-nez v24, :cond_0

    .line 379
    const/16 v24, 0x1

    .line 729
    :goto_0
    return v24

    .line 381
    :cond_0
    const-string v24, "otpauth://"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 390
    const/16 v24, 0x0

    goto :goto_0

    .line 394
    :cond_1
    const-string v24, "steammobile://"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 395
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 397
    .local v22, "uri":Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Lcom/valvesoftware/android/steam/community/SteamUriHandler;->HandleSteamURI(Landroid/net/Uri;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    move-result-object v10

    .line 398
    .local v10, "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    iget-boolean v0, v10, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->handled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 401
    sget-object v24, Lcom/valvesoftware/android/steam/community/views/SteamWebView$2;->$SwitchMap$com$valvesoftware$android$steam$community$SteamUriHandler$Command:[I

    iget-object v0, v10, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 695
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v24, 0x1

    goto :goto_0

    .line 406
    :pswitch_1
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v17

    .line 407
    .local v17, "targetUriStr":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "decodedTargetUriStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$800(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 409
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->launchPayPalAuth(Ljava/lang/String;)V

    goto :goto_1

    .line 411
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewWebPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 418
    .end local v4    # "decodedTargetUriStr":Ljava/lang/String;
    .end local v17    # "targetUriStr":Ljava/lang/String;
    :pswitch_2
    :try_start_0
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v17

    .line 419
    .restart local v17    # "targetUriStr":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v24, "android.intent.action.VIEW"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 420
    .local v8, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 427
    .end local v8    # "i":Landroid/content/Intent;
    .end local v17    # "targetUriStr":Ljava/lang/String;
    :catch_0
    move-exception v24

    goto :goto_1

    .line 430
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->OnMobileLoginSucceeded(Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;)V

    goto/16 :goto_1

    .line 437
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->reload()V

    goto/16 :goto_1

    .line 441
    :pswitch_5
    new-instance v24, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->m_urlWebView:Ljava/lang/ref/WeakReference;

    .line 442
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->m_loginContext:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->loginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 445
    .restart local v8    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 449
    .end local v8    # "i":Landroid/content/Intent;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 450
    .local v11, "resultIntent":Landroid/content/Intent;
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v24, "com.valvesoftware.android.steam.community.intent.action.WEBVIEW_RESULT"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 458
    .end local v11    # "resultIntent":Landroid/content/Intent;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "steammobile://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->reloadpage:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    invoke-virtual/range {v26 .. v26}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 459
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v26

    const v27, 0x7f0800c7

    invoke-virtual/range {v26 .. v27}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 458
    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setViewContentsShowFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 463
    :pswitch_8
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->title:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v18

    .line 465
    .local v18, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/support/v4/app/Fragment;

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 466
    :cond_4
    if-eqz v18, :cond_2

    .line 468
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 469
    .local v19, "titleDecoded":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 474
    .end local v19    # "titleDecoded":Ljava/lang/String;
    :catch_1
    move-exception v24

    goto/16 :goto_1

    .line 480
    .end local v18    # "title":Ljava/lang/String;
    :pswitch_9
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->steamid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v16

    .line 482
    .local v16, "steamid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 483
    .local v3, "chatIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 490
    .end local v3    # "chatIntent":Landroid/content/Intent;
    .end local v16    # "steamid":Ljava/lang/String;
    :pswitch_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Page wants two-factor code for GID "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-nez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1000(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-nez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1100(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 492
    :cond_5
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "gid":Ljava/lang/String;
    invoke-static {v6}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForGID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 494
    .local v14, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v14, :cond_7

    .line 495
    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v21

    .line 496
    .local v21, "twoFactorToken":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    if-eqz v21, :cond_6

    .line 497
    invoke-virtual/range {v21 .. v21}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->generateSteamGuardCode()Ljava/lang/String;

    move-result-object v20

    .line 498
    .local v20, "twoFactorCode":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Returning two-factor code "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 501
    .end local v20    # "twoFactorCode":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 505
    .end local v21    # "twoFactorToken":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 514
    .end local v6    # "gid":Ljava/lang/String;
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 515
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->scheme:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v13

    .line 516
    .local v13, "schemeString":Ljava/lang/String;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 517
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamguardState;->stringToScheme(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v12

    .line 518
    .local v12, "scheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->ph:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v15

    .line 520
    .local v15, "smsPhoneId":Ljava/lang/String;
    if-nez v12, :cond_8

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, "Internal error, bad Steamguard token type"

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 524
    :cond_8
    new-instance v24, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$1;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v12, v15, v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->startSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    goto/16 :goto_1

    .line 542
    .end local v12    # "scheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .end local v13    # "schemeString":Ljava/lang/String;
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v15    # "smsPhoneId":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 543
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->code:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v23

    .line 544
    .local v23, "validationCode":Ljava/lang/String;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 546
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    new-instance v24, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient$2;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeAddTwoFactor(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    goto/16 :goto_1

    .line 563
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v23    # "validationCode":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 564
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 565
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendActivationCodeEmail()V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 578
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-nez v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 579
    :cond_9
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 580
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v14, :cond_a

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 583
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 592
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 594
    :cond_b
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v6

    .line 596
    .restart local v6    # "gid":Ljava/lang/String;
    const-string v24, "hide"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string v24, "show"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 597
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$700(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    const-string v25, "show"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->setTwoFactorVisible(Z)V

    .line 607
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 615
    .end local v6    # "gid":Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1300(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 616
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v14

    .line 617
    .restart local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    invoke-virtual {v14}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getRevocationCode()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 622
    .end local v14    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 629
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, "0"

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 636
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, "0"

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 651
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v25

    .line 653
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->hasLiveSteamguardStates()Z

    move-result v24

    if-eqz v24, :cond_e

    const-string v24, "1"

    .line 652
    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 653
    :cond_e
    const-string v24, "0"

    goto :goto_2

    .line 658
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$900(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-nez v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1400(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 660
    :cond_f
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->op:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v9

    .line 662
    .local v9, "op":Ljava/lang/String;
    if-eqz v9, :cond_12

    const-string v24, "setsecret"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_12

    .line 663
    const/4 v5, -0x1

    .line 664
    .local v5, "errorCode":I
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->arg1:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "base64String":Ljava/lang/String;
    if-eqz v2, :cond_10

    .line 666
    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->installSecret(Ljava/lang/String;)I

    move-result v5

    .line 669
    :cond_10
    if-nez v5, :cond_11

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 672
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 675
    .end local v2    # "base64String":Ljava/lang/String;
    .end local v5    # "errorCode":I
    :cond_12
    if-eqz v9, :cond_14

    const-string v24, "conftag"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->isMobileConfirmationPage()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 676
    sget-object v24, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->arg1:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->HandleGetConfirmationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 678
    .local v7, "hash":Ljava/lang/String;
    if-eqz v7, :cond_13

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultOkay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 681
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, ""

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 684
    .end local v7    # "hash":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$1200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;

    move-result-object v24

    const-string v25, ""

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamguardJavascriptHandler;->setJavascriptResultError(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 690
    .end local v9    # "op":Ljava/lang/String;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->reacquireWGTokenFromServer(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    goto/16 :goto_1

    .line 696
    .end local v10    # "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_15
    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_16

    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_16

    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    .line 697
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_16

    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_16

    sget-object v24, Lcom/valvesoftware/android/steam/community/Config;->URL_HELP_BASE:Ljava/lang/String;

    .line 698
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    .line 699
    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;

    move/from16 v24, v0

    if-eqz v24, :cond_18

    .line 701
    :cond_16
    invoke-static/range {p2 .. p2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$800(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 702
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Launching PayPal auth "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->launchPayPalAuth(Ljava/lang/String;)V

    .line 711
    :goto_3
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 707
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    .line 708
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->showProgressIndicator()V

    goto :goto_3

    .line 717
    :cond_18
    :try_start_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Opening URL "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in external browser."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    new-instance v8, Landroid/content/Intent;

    const-string v24, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 719
    .restart local v8    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$SteamWebViewClient;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$600(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 729
    .end local v8    # "i":Landroid/content/Intent;
    :goto_4
    const/16 v24, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v24

    goto :goto_4

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
