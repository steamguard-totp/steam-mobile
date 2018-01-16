.class public Lcom/valvesoftware/android/steam/community/jsontranslators/UmqPollResultTranslator;
.super Ljava/lang/Object;
.source "UmqPollResultTranslator.java"


# direct methods
.method private static getUmqMessageTypeFromString(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/UmqMessageType;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const-string v1, "typing"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->TYPING:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "emote"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->EMOTE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    goto :goto_0

    .line 89
    :cond_3
    const-string v1, "saytext"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->MESSAGE_TEXT:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    goto :goto_0

    .line 91
    :cond_4
    const-string v1, "personastate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->PERSONA_STATE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    goto :goto_0

    .line 93
    :cond_5
    const-string v1, "personarelationship"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->PERSONA_RELATIONSHIP:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    goto :goto_0

    .line 95
    :cond_6
    const-string v1, "notificationcountupdate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->NOTIFICATION_COUNTS:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    goto :goto_0
.end method

.method public static translate(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/UmqPollResult;
    .locals 10
    .param p0, "messagesJson"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v8, -0x1

    .line 17
    new-instance v4, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;

    invoke-direct {v4}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;-><init>()V

    .line 19
    .local v4, "umqPollResult":Lcom/valvesoftware/android/steam/community/model/UmqPollResult;
    const-string v5, "error"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/model/PollStatus;->getValueFromString(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/PollStatus;

    move-result-object v5

    iput-object v5, v4, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->statusCode:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    .line 20
    const-string v5, "messagelast"

    invoke-virtual {p0, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->lastMessageNumber:J

    .line 21
    const-string v5, "messagebase"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->messagebase:J

    .line 22
    const-string v5, "sectimeout"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->nextSuggestedTimeoutDuration:I

    .line 23
    const-string v5, "timestamp"

    invoke-virtual {p0, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->timeStamp:J

    .line 24
    const-string v5, "utc_timestamp"

    invoke-virtual {p0, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->utcTimeStamp:J

    .line 25
    const-string v5, "pollid"

    invoke-virtual {p0, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->pollId:J

    .line 27
    const-string v5, "messages"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 28
    .local v2, "messagesArray":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 42
    :cond_0
    return-object v4

    .line 32
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 33
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 34
    .local v1, "m":Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 32
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_3
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/jsontranslators/UmqPollResultTranslator;->translateMessage(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;

    move-result-object v3

    .line 37
    .local v3, "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {v4, v3}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->addMessage(Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;)V

    goto :goto_1
.end method

.method private static translateMessage(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    .locals 10
    .param p0, "m"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 46
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v5

    .line 48
    :cond_1
    const-string v6, "type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/valvesoftware/android/steam/community/jsontranslators/UmqPollResultTranslator;->getUmqMessageTypeFromString(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    move-result-object v4

    .line 50
    .local v4, "type":Lcom/valvesoftware/android/steam/community/model/UmqMessageType;
    if-eqz v4, :cond_0

    .line 54
    sget-object v6, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->NOTIFICATION_COUNTS:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    if-ne v4, v6, :cond_4

    .line 56
    new-instance v3, Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

    invoke-direct {v3}, Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;-><init>()V

    .line 57
    .local v3, "notificationMsg":Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget v6, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->MAX_NOTIFICATION_TYPES:I

    if-ge v2, v6, :cond_3

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 61
    iget-object v6, v3, Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;->notificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-virtual {v6, v2, v0}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->SetNotificationCount(II)V

    .line 57
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "count":I
    :cond_3
    move-object v5, v3

    .line 74
    .end local v2    # "i":I
    .end local v3    # "notificationMsg":Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;
    .local v5, "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    :goto_2
    iput-object v4, v5, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 75
    const-string v6, "utc_timestamp"

    const-wide/16 v8, -0x1

    invoke-virtual {p0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->utcTimeStamp:J

    .line 76
    const-string v6, "secure_message_id"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->secureMessageId:Ljava/lang/String;

    .line 77
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->isIncoming:Z

    goto :goto_0

    .line 67
    .end local v5    # "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    :cond_4
    new-instance v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;-><init>()V

    .line 68
    .local v1, "friendMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    const-string v6, "steamid_from"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    .line 69
    const-string v6, "text"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    .line 70
    const-string v6, "persona_state"

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/valvesoftware/android/steam/community/model/PersonaState;->FromInteger(I)Lcom/valvesoftware/android/steam/community/model/PersonaState;

    move-result-object v6

    iput-object v6, v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 71
    move-object v5, v1

    .restart local v5    # "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    goto :goto_2
.end method
