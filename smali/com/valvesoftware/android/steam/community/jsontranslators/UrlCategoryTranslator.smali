.class public Lcom/valvesoftware/android/steam/community/jsontranslators/UrlCategoryTranslator;
.super Ljava/lang/Object;
.source "UrlCategoryTranslator.java"


# direct methods
.method public static translate(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UrlCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v4, "urlCategories":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UrlCategory;>;"
    if-nez p0, :cond_1

    .line 32
    :cond_0
    return-object v4

    .line 18
    :cond_1
    const-string v5, "categories"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 20
    .local v0, "arrMsgs":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 23
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 24
    .local v3, "jcat":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 22
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_2
    new-instance v1, Lcom/valvesoftware/android/steam/community/model/UrlCategory;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/model/UrlCategory;-><init>()V

    .line 27
    .local v1, "cat":Lcom/valvesoftware/android/steam/community/model/UrlCategory;
    const-string v5, "label"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/valvesoftware/android/steam/community/model/UrlCategory;->title:Ljava/lang/String;

    .line 28
    const-string v5, "url"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/valvesoftware/android/steam/community/model/UrlCategory;->url:Ljava/lang/String;

    .line 29
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
