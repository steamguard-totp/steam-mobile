.class public final Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpClientStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/HttpClientStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpPatch"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 185
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->setURI(Ljava/net/URI;)V

    .line 186
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "PATCH"

    return-object v0
.end method
