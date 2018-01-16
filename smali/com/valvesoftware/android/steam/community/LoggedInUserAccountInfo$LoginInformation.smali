.class public Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
.super Ljava/lang/Object;
.source "LoggedInUserAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginInformation"
.end annotation


# instance fields
.field public accessToken:Ljava/lang/String;

.field public loginState:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

.field public steamId:Ljava/lang/String;

.field public wgtoken:Ljava/lang/String;

.field public wgtokenSecure:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->LogOut()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonDoc"    # Lorg/json/JSONObject;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->DeserializeFromJSONDoc(Lorg/json/JSONObject;)V

    .line 85
    return-void
.end method


# virtual methods
.method DeserializeFromJSONDoc(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonDoc"    # Lorg/json/JSONObject;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->LogOut()V

    .line 109
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->accessToken:Ljava/lang/String;

    .line 110
    const-string v0, "x_steamid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    .line 111
    const-string v0, "wgtoken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtoken:Ljava/lang/String;

    .line 112
    const-string v0, "wgtoken_secure"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtokenSecure:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->LoggedIn:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->loginState:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    .line 116
    :cond_0
    return-void
.end method

.method LogOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->RequireUsernameAndPassword:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->loginState:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    .line 89
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->accessToken:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtoken:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtokenSecure:Ljava/lang/String;

    .line 93
    return-void
.end method

.method SerializeToJSONDoc(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonDoc"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->loginState:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    sget-object v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->LoggedIn:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    if-ne v0, v1, :cond_0

    .line 99
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v0, "x_steamid"

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v0, "wgtoken"

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtoken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v0, "wgtoken_secure"

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtokenSecure:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_0
    return-void
.end method
