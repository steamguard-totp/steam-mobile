.class public Lcom/valvesoftware/android/steam/community/jsontranslators/TranslatorUtilities;
.super Ljava/lang/Object;
.source "TranslatorUtilities.java"


# direct methods
.method public static steamIdFromAccountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "accountId"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 12
    .local v0, "steamId":J
    sget-object v4, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v5, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Dev:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v4, v5, :cond_0

    .line 13
    const-wide/high16 v2, 0x400000000000000L

    .line 20
    .local v2, "universeId":J
    :goto_0
    add-long/2addr v0, v2

    .line 22
    const-wide v4, 0x100000000L

    add-long/2addr v0, v4

    .line 23
    const-wide/high16 v4, 0x10000000000000L

    add-long/2addr v0, v4

    .line 25
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 14
    .end local v2    # "universeId":J
    :cond_0
    sget-object v4, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v5, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v4, v5, :cond_1

    .line 15
    const-wide/high16 v2, 0x200000000000000L

    .restart local v2    # "universeId":J
    goto :goto_0

    .line 17
    .end local v2    # "universeId":J
    :cond_1
    const-wide/high16 v2, 0x100000000000000L

    .restart local v2    # "universeId":J
    goto :goto_0
.end method
