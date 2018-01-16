.class public Lcom/valvesoftware/android/steam/community/jsontranslators/SearchResultsTranslator;
.super Ljava/lang/Object;
.source "SearchResultsTranslator.java"


# direct methods
.method public static translate(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/SearchResults;
    .locals 7
    .param p0, "rawResults"    # Lorg/json/JSONObject;

    .prologue
    .line 10
    new-instance v2, Lcom/valvesoftware/android/steam/community/model/SearchResults;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/model/SearchResults;-><init>()V

    .line 11
    .local v2, "results":Lcom/valvesoftware/android/steam/community/model/SearchResults;
    const-string v5, "total"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/valvesoftware/android/steam/community/model/SearchResults;->total:I

    .line 13
    const-string v5, "results"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 14
    .local v1, "idsArray":Lorg/json/JSONArray;
    if-nez v1, :cond_1

    .line 26
    :cond_0
    return-object v2

    .line 16
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 17
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 18
    .local v3, "singleResult":Lorg/json/JSONObject;
    if-nez v3, :cond_3

    .line 16
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_3
    const-string v5, "steamid"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21
    .local v4, "steamId":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v2, v4}, Lcom/valvesoftware/android/steam/community/model/SearchResults;->addSteamId(Ljava/lang/String;)V

    goto :goto_1
.end method
