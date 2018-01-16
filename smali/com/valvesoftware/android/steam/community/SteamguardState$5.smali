.class Lcom/valvesoftware/android/steam/community/SteamguardState$5;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;->sendEmailOfType(Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/SteamguardState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$5;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 813
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 814
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 815
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 806
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 807
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 808
    return-void
.end method
