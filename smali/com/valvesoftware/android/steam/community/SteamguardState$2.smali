.class Lcom/valvesoftware/android/steam/community/SteamguardState$2;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;->startGetTwoFactorStatus()V
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
    .line 493
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$2;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 503
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$2;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->access$000(Lcom/valvesoftware/android/steam/community/SteamguardState;Lorg/json/JSONObject;)V

    .line 498
    return-void
.end method
