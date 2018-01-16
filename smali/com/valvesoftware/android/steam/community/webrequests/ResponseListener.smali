.class public abstract Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.super Ljava/lang/Object;
.source "ResponseListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
.end method

.method public abstract onSuccess(Lorg/json/JSONObject;)V
.end method
