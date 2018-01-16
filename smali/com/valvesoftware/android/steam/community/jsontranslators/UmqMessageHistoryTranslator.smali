.class public Lcom/valvesoftware/android/steam/community/jsontranslators/UmqMessageHistoryTranslator;
.super Ljava/lang/Object;
.source "UmqMessageHistoryTranslator.java"


# direct methods
.method private static translate(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    .locals 4
    .param p0, "messageJson"    # Lorg/json/JSONObject;
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;-><init>()V

    .line 35
    .local v1, "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    const-string v2, "accountid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/jsontranslators/TranslatorUtilities;->steamIdFromAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "messageSteamId":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isIncoming:Z

    .line 40
    :cond_0
    iput-object p1, v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    .line 41
    const-string v2, "timestamp"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    .line 42
    const-string v2, "message"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    .line 44
    return-object v1
.end method

.method public static translateList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "messagesJson"    # Lorg/json/JSONObject;
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    const-string v5, "messages"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 19
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 29
    :cond_0
    return-object v3

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

    move-result-object v2

    .line 23
    .local v2, "messageJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 24
    invoke-static {v2, p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/UmqMessageHistoryTranslator;->translate(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    move-result-object v4

    .line 25
    .local v4, "singleMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    if-eqz v4, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .end local v4    # "singleMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
