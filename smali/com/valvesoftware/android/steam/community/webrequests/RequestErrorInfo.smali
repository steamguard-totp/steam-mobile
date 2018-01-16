.class public Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;
.super Ljava/lang/Object;
.source "RequestErrorInfo.java"


# instance fields
.field private final data:[B

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method constructor <init>(ILjava/util/Map;[BLjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p3, "data"    # [B
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->statusCode:I

    .line 13
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->headers:Ljava/util/Map;

    .line 14
    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->data:[B

    .line 15
    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->message:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->statusCode:I

    return v0
.end method
