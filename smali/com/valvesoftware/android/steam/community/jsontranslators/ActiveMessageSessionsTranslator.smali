.class public Lcom/valvesoftware/android/steam/community/jsontranslators/ActiveMessageSessionsTranslator;
.super Ljava/lang/Object;
.source "ActiveMessageSessionsTranslator.java"


# direct methods
.method public static translateList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/MessageSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v2, "messageSessions":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/MessageSession;>;"
    const-string v5, "message_sessions"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 19
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 29
    :cond_0
    return-object v2

    .line 21
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 23
    .local v4, "sessionJson":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 24
    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/jsontranslators/ActiveMessageSessionsTranslator;->translateObject(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/MessageSession;

    move-result-object v3

    .line 25
    .local v3, "session":Lcom/valvesoftware/android/steam/community/model/MessageSession;
    if-eqz v3, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .end local v3    # "session":Lcom/valvesoftware/android/steam/community/model/MessageSession;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static translateObject(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/MessageSession;
    .locals 2
    .param p0, "sessionJson"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/MessageSession;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/MessageSession;-><init>()V

    .line 34
    .local v0, "session":Lcom/valvesoftware/android/steam/community/model/MessageSession;
    const-string v1, "accountid_friend"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/jsontranslators/TranslatorUtilities;->steamIdFromAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/MessageSession;->steamId:Ljava/lang/String;

    .line 35
    const-string v1, "last_message"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/MessageSession;->lastMessage:Ljava/lang/String;

    .line 36
    const-string v1, "last_view"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/MessageSession;->lastView:Ljava/lang/String;

    .line 37
    const-string v1, "unread_message_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/valvesoftware/android/steam/community/model/MessageSession;->unreadMessageCount:I

    .line 39
    return-object v0
.end method
