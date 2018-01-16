.class public Lcom/valvesoftware/android/steam/community/SteamUriHandler;
.super Ljava/lang/Object;
.source "SteamUriHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;,
        Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;,
        Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    }
.end annotation


# direct methods
.method public static HandleSteamURI(Landroid/net/Uri;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    .locals 19
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 25
    .local v12, "uriString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v10

    .line 28
    .local v10, "params":Ljava/lang/String;
    new-instance v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    invoke-direct {v11}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;-><init>()V

    .line 30
    .local v11, "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    const-string v15, "steammobile://"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 34
    :try_start_0
    const-string v15, "steammobile://"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 35
    const-string v15, "?"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 36
    .local v8, "nPosQ":I
    if-lez v8, :cond_0

    .line 38
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 40
    :cond_0
    invoke-static {v12}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    move-result-object v15

    iput-object v15, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 41
    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->handled:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 52
    .end local v8    # "nPosQ":I
    :cond_1
    :goto_0
    iget-boolean v15, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->handled:Z

    if-eqz v15, :cond_5

    .line 56
    :try_start_1
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    iput-object v15, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    .line 58
    if-eqz v10, :cond_5

    .line 60
    iget-object v15, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    sget-object v16, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->mobileloginsucceeded:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 63
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v6, "jsonDoc":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 66
    .local v4, "arrChildren":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "jj":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v15

    if-ge v5, v15, :cond_5

    .line 68
    :try_start_3
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 69
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, "val":Ljava/lang/String;
    iget-object v15, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    invoke-virtual {v15, v7, v13}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 66
    .end local v7    # "key":Ljava/lang/String;
    .end local v13    # "val":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    .end local v4    # "arrChildren":Lorg/json/JSONArray;
    .end local v5    # "jj":I
    .end local v6    # "jsonDoc":Lorg/json/JSONObject;
    :cond_2
    :try_start_4
    iget-object v15, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    iget-boolean v15, v15, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->bHasArgs:Z

    if-eqz v15, :cond_4

    .line 91
    const-string v15, "&"

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "args":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    aget-object v2, v3, v15

    .line 94
    .local v2, "arg":Ljava/lang/String;
    const-string v17, "="

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "pair":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 97
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .restart local v7    # "key":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v9, v17

    const-string v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, "value":Ljava/lang/String;
    iget-object v0, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v7    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 107
    .end local v2    # "arg":Ljava/lang/String;
    .end local v3    # "args":[Ljava/lang/String;
    .end local v9    # "pair":[Ljava/lang/String;
    :cond_4
    iget-object v15, v11, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    new-instance v16, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 120
    :cond_5
    :goto_4
    return-object v11

    :catch_0
    move-exception v15

    goto :goto_4

    .line 82
    :catch_1
    move-exception v15

    goto :goto_4

    .restart local v4    # "arrChildren":Lorg/json/JSONArray;
    .restart local v5    # "jj":I
    .restart local v6    # "jsonDoc":Lorg/json/JSONObject;
    :catch_2
    move-exception v15

    goto :goto_2

    .end local v4    # "arrChildren":Lorg/json/JSONArray;
    .end local v5    # "jj":I
    .end local v6    # "jsonDoc":Lorg/json/JSONObject;
    :catch_3
    move-exception v15

    goto/16 :goto_0
.end method
