.class public Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;
.super Ljava/lang/Object;
.source "LoggedInUserAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;,
        Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;,
        Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
    }
.end annotation


# static fields
.field private static dontLoginToChat:Z

.field private static loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

.field private static s_bCookiesAreOutOfDate:Z

.field private static final s_cookiesConfiguration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;",
            ">;>;"
        }
    .end annotation
.end field

.field private static s_lLastWGTokenFailureMS:J

.field private static s_strLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    sput-boolean v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat:Z

    .line 61
    new-instance v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_cookiesConfiguration:Ljava/util/Map;

    .line 63
    sput-boolean v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_bCookiesAreOutOfDate:Z

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_strLanguage:Ljava/lang/String;

    .line 301
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_lLastWGTokenFailureMS:J

    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 22
    sput-wide p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_lLastWGTokenFailureMS:J

    return-wide p0
.end method

.method public static dontLoginToChat()Z
    .locals 1

    .prologue
    .line 292
    sget-boolean v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat:Z

    return v0
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_strLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public static getLoginInformation()Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    return-object v0
.end method

.method public static getLoginSteamID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    return-object v0
.end method

.method public static isLoggedIn()Z
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->loginState:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    sget-object v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->LoggedIn:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logOut()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetDiskCacheIndefinite()Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;

    move-result-object v0

    const-string v1, "login.json"

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;->Delete(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->LogOut()V

    .line 135
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setLoginInformation(Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;)V

    .line 136
    return-void
.end method

.method public static reacquireWGTokenFromServer(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 6
    .param p0, "steamWebView"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 306
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    sget-wide v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_lLastWGTokenFailureMS:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    sget-wide v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_lLastWGTokenFailureMS:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 316
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_lLastWGTokenFailureMS:J

    .line 318
    invoke-static {}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getWGToken()Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 319
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$1;-><init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 344
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0
.end method

.method public static resetAllCookies()V
    .locals 3

    .prologue
    .line 230
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_cookiesConfiguration:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 232
    const-string v0, "mobileClient"

    const-string v1, "android"

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "mobileClientVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_strLanguage:Ljava/lang/String;

    .line 237
    const-string v0, "Steam_Language"

    sget-object v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_strLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public static setCookie2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cookieName"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-static {p0, p1, v0, v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 177
    return-void
.end method

.method public static setCookie2(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .param p0, "cookieName"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;
    .param p2, "secure"    # Z
    .param p3, "httponly"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 181
    sget-object v5, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    .line 183
    .local v5, "url":Ljava/lang/String;
    const-string v7, "://"

    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 184
    .local v2, "iProtocol":I
    const-string v7, "/"

    add-int/lit8 v8, v2, 0x3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 185
    .local v3, "iSubDir":I
    if-gez v3, :cond_2

    move-object v4, v5

    .line 186
    .local v4, "sBaseUrl":Ljava/lang/String;
    :goto_0
    add-int/lit8 v7, v2, 0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 188
    const-string v5, ""

    .line 191
    sget-object v7, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_cookiesConfiguration:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 193
    sget-object v7, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_cookiesConfiguration:Ljava/util/Map;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    new-instance v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;

    invoke-direct {v0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;-><init>(Ljava/lang/String;ZZ)V

    .line 198
    .local v0, "Cookie":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
    sget-object v7, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_cookiesConfiguration:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 199
    .local v6, "urlCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;"
    invoke-interface {v6, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 201
    if-eqz p1, :cond_1

    .line 203
    sput-boolean v9, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_bCookiesAreOutOfDate:Z

    .line 205
    :cond_1
    invoke-interface {v6, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_1
    return-void

    .line 185
    .end local v0    # "Cookie":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
    .end local v4    # "sBaseUrl":Ljava/lang/String;
    .end local v6    # "urlCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;"
    :cond_2
    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 209
    .restart local v0    # "Cookie":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
    .restart local v4    # "sBaseUrl":Ljava/lang/String;
    .restart local v6    # "urlCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;"
    :cond_3
    if-nez p1, :cond_5

    .line 211
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 213
    sput-boolean v9, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_bCookiesAreOutOfDate:Z

    .line 224
    :cond_4
    :goto_2
    invoke-interface {v6, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-interface {v6, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 218
    :cond_5
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;

    .line 219
    .local v1, "OldCookie":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->equals(Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 221
    :cond_6
    sput-boolean v9, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_bCookiesAreOutOfDate:Z

    goto :goto_2
.end method

.method public static setDontLoginToChat(Z)V
    .locals 1
    .param p0, "dontLoginToChat"    # Z

    .prologue
    .line 296
    sget-boolean v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat:Z

    if-eq p0, v0, :cond_0

    .line 297
    sput-boolean p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat:Z

    .line 299
    :cond_0
    return-void
.end method

.method public static setLoginInformation(Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;)V
    .locals 7
    .param p0, "loginInfo"    # Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 143
    sput-object p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    .line 145
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->resetAllCookies()V

    .line 147
    const-string v3, "steamLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtoken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 148
    const-string v3, "steamLoginSecure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtokenSecure:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6, v6}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 150
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v3

    iget-object v2, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingDOB:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 151
    .local v2, "settingInfo":Lcom/valvesoftware/android/steam/community/SettingInfo;
    if-nez v2, :cond_1

    move-object v1, v0

    .line 152
    .local v1, "sDOBvalue":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    .local v0, "sDOBcookie":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v3, "dob"

    invoke-static {v3, v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->syncAllCookies()V

    .line 156
    return-void

    .line 151
    .end local v0    # "sDOBcookie":Ljava/lang/String;
    .end local v1    # "sDOBvalue":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 152
    .restart local v1    # "sDOBvalue":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;->makeUnixTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static syncAllCookies()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 255
    sget-boolean v7, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_bCookiesAreOutOfDate:Z

    if-nez v7, :cond_0

    .line 289
    .local v0, "cm":Landroid/webkit/CookieManager;
    :goto_0
    return-void

    .line 258
    .end local v0    # "cm":Landroid/webkit/CookieManager;
    :cond_0
    sput-boolean v8, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_bCookiesAreOutOfDate:Z

    .line 260
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 262
    .restart local v0    # "cm":Landroid/webkit/CookieManager;
    sget-object v7, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_cookiesConfiguration:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 264
    .local v6, "urlEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 266
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;

    .line 270
    .local v1, "cookie":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
    :try_start_0
    iget-object v7, v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_value:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_value:Ljava/lang/String;

    const-string v11, "ISO-8859-1"

    invoke-static {v7, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 275
    .local v4, "sEncodedValue":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v2, "cookieString":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-boolean v7, v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_secure:Z

    if-eqz v7, :cond_3

    const-string v7, "; secure"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_3
    iget-boolean v7, v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_httponly:Z

    if-eqz v7, :cond_4

    const-string v7, "; HttpOnly"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_4
    sget-object v11, Lcom/valvesoftware/android/steam/community/Config;->WG_AUTH_DOMAINS:[Ljava/lang/String;

    array-length v12, v11

    move v7, v8

    :goto_3
    if-ge v7, v12, :cond_2

    aget-object v5, v11, v7

    .line 284
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 270
    .end local v2    # "cookieString":Ljava/lang/StringBuilder;
    .end local v4    # "sEncodedValue":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v4, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 288
    .end local v1    # "cookie":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;"
    .end local v6    # "urlEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;>;"
    :cond_6
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    goto/16 :goto_0

    .line 272
    .restart local v1    # "cookie":Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;"
    .restart local v6    # "urlEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;>;>;"
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static updateLanguage()V
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "strSelectedLanguage":Ljava/lang/String;
    sget-object v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_strLanguage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_strLanguage:Ljava/lang/String;

    .line 249
    const-string v1, "Steam_Language"

    invoke-static {v1, v0}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->syncAllCookies()V

    .line 252
    :cond_0
    return-void
.end method

.method public static updateWGToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "wgtoken"    # Ljava/lang/String;
    .param p1, "wgtoken_secure"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 160
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iput-object p0, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtoken:Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iput-object p1, v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtokenSecure:Ljava/lang/String;

    .line 163
    const-string v0, "steamLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtoken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 164
    const-string v0, "steamLoginSecure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->steamId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->loginInformation:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginInformation;->wgtokenSecure:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 167
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->UpdateCachedLoginInformation()V

    .line 171
    sput-boolean v3, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->s_bCookiesAreOutOfDate:Z

    .line 172
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->syncAllCookies()V

    .line 173
    return-void
.end method
