.class public Lcom/valvesoftware/android/steam/community/jsontranslators/GroupTranslator;
.super Ljava/lang/Object;
.source "GroupTranslator.java"


# direct methods
.method public static translateList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 10
    .param p0, "groupsJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Group;>;"
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
    .local v3, "groupsArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

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
    .local v1, "group":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 41
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/jsontranslators/GroupTranslator;->translateObject(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/Group;

    move-result-object v0

    .line 42
    .local v0, "g":Lcom/valvesoftware/android/steam/community/model/Group;
    if-eqz v0, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v0    # "g":Lcom/valvesoftware/android/steam/community/model/Group;
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

.method public static translateObject(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/Group;
    .locals 5
    .param p0, "groupJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 53
    const-string v2, "json_parsing"

    const-string v3, "attempted to parse null object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    const-string v2, "steamid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "steamIdString":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 60
    const-string v2, "json_parsing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no steamid while parsing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/Group;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/Group;-><init>()V

    .line 65
    .local v0, "group":Lcom/valvesoftware/android/steam/community/model/Group;
    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    .line 66
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    .line 67
    const-string v2, "users"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->numUsersTotal:I

    .line 68
    const-string v2, "usersonline"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->numUsersOnline:I

    .line 69
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/model/GroupType;->FromInteger(I)Lcom/valvesoftware/android/steam/community/model/GroupType;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->type:Lcom/valvesoftware/android/steam/community/model/GroupType;

    .line 70
    const-string v2, "avatar"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->smallAvatarUrl:Ljava/lang/String;

    .line 71
    const-string v2, "avatarmedium"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->mediumAvatarUrl:Ljava/lang/String;

    .line 72
    const-string v2, "avatarfull"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->fullAvatarUrl:Ljava/lang/String;

    .line 73
    const-string v2, "favoriteappid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->favoriteAppId:I

    .line 74
    const-string v2, "profileurl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    .line 76
    :try_start_0
    const-string v2, "relationship"

    const-string v3, "None"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/Group;->hasProfileUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->type:Lcom/valvesoftware/android/steam/community/model/GroupType;

    sget-object v3, Lcom/valvesoftware/android/steam/community/model/GroupType;->OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupType;

    if-ne v2, v3, :cond_3

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/games/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v2

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->None:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    goto :goto_1

    .line 86
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method
