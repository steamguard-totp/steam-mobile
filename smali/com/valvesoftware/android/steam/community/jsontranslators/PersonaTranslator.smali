.class public Lcom/valvesoftware/android/steam/community/jsontranslators/PersonaTranslator;
.super Ljava/lang/Object;
.source "PersonaTranslator.java"


# direct methods
.method public static translateList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 10
    .param p0, "friendsJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v2, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    if-nez p0, :cond_1

    .line 22
    const-string v7, "json_parsing"

    const-string v8, "Unexpected null JSONObject"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-object v2

    .line 26
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 27
    .local v6, "topLevelDocNames":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 29
    .local v3, "friendsArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 30
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    .line 31
    .local v5, "name":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 32
    check-cast v5, Ljava/lang/String;

    .end local v5    # "name":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 36
    :cond_2
    if-eqz v3, :cond_0

    .line 38
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 39
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    .local v1, "friend":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 41
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/jsontranslators/PersonaTranslator;->translateObject(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/Persona;

    move-result-object v0

    .line 42
    .local v0, "f":Lcom/valvesoftware/android/steam/community/model/Persona;
    if-eqz v0, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v0    # "f":Lcom/valvesoftware/android/steam/community/model/Persona;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected friends array to contain object at index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static translateObject(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/Persona;
    .locals 9
    .param p0, "friendJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 53
    const-string v5, "json_parsing"

    const-string v6, "attempted to parse null object"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    const-string v5, "steamid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "steamIdString":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 60
    const-string v5, "json_parsing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no steamid while parsing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/Persona;-><init>()V

    .line 65
    .local v0, "friend":Lcom/valvesoftware/android/steam/community/model/Persona;
    iput-object v4, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    .line 66
    const-string v5, "personaname"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    .line 67
    const-string v5, "realname"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->realName:Ljava/lang/String;

    .line 68
    const-string v5, "avatar"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->smallAvatarUrl:Ljava/lang/String;

    .line 69
    const-string v5, "avatarmedium"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    .line 70
    const-string v5, "avatarfull"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->fullAvatarUrl:Ljava/lang/String;

    .line 71
    const-string v5, "personastate"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/model/PersonaState;->FromInteger(I)Lcom/valvesoftware/android/steam/community/model/PersonaState;

    move-result-object v5

    iput-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 72
    const-string v5, "personastateflags"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "personaStateFlags":I
    and-int/lit16 v5, v1, 0x100

    const/16 v8, 0x100

    if-ne v5, v8, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnWeb:Z

    .line 74
    and-int/lit16 v5, v1, 0x200

    const/16 v8, 0x200

    if-ne v5, v8, :cond_4

    move v5, v6

    :goto_2
    iput-boolean v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnMobile:Z

    .line 75
    and-int/lit16 v5, v1, 0x400

    const/16 v8, 0x400

    if-ne v5, v8, :cond_5

    :goto_3
    iput-boolean v6, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnTenFoot:Z

    .line 76
    const-string v5, "gameid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameID:I

    .line 77
    const-string v5, "gameextrainfo"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    .line 78
    const-string v5, "lastlogoff"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastOnlineTime:J

    .line 79
    const-string v5, "relationship"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "relationshipJsonValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 81
    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->getEnumValue(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    move-result-object v2

    .line 82
    .local v2, "relationship":Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;
    if-eqz v2, :cond_6

    .line 83
    :goto_4
    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    goto/16 :goto_0

    .end local v2    # "relationship":Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;
    .end local v3    # "relationshipJsonValue":Ljava/lang/String;
    :cond_3
    move v5, v7

    .line 73
    goto :goto_1

    :cond_4
    move v5, v7

    .line 74
    goto :goto_2

    :cond_5
    move v6, v7

    .line 75
    goto :goto_3

    .line 82
    .restart local v2    # "relationship":Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;
    .restart local v3    # "relationshipJsonValue":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->none:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    goto :goto_4
.end method
