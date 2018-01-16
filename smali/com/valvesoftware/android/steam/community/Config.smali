.class public Lcom/valvesoftware/android/steam/community/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/Config$WebAPI;,
        Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;
    }
.end annotation


# static fields
.field public static APP_VERSION:Ljava/lang/String;

.field public static APP_VERSION_ID:I

.field public static final STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

.field public static final STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

.field public static final URL_COMMUNITY_BASE:Ljava/lang/String;

.field public static final URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

.field public static final URL_HELP_BASE:Ljava/lang/String;

.field public static final URL_MOBILE_CRASH_UPLOAD:Ljava/lang/String;

.field public static final URL_STORE_BASE:Ljava/lang/String;

.field public static final URL_STORE_BASE_INSECURE:Ljava/lang/String;

.field public static final URL_WEBAPI_BASE:Ljava/lang/String;

.field public static final URL_WEBAPI_BASE_INSECURE:Ljava/lang/String;

.field public static final WG_AUTH_DOMAINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13
    const-string v0, "2.3.1"

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION:Ljava/lang/String;

    .line 14
    sput v3, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION_ID:I

    .line 20
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    .line 21
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    .line 30
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v1, :cond_0

    const-string v0, "https://api.steampowered.com:443"

    :goto_0
    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v1, :cond_2

    const-string v0, "http://api.steampowered.com:80"

    :goto_1
    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE_INSECURE:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_4

    const-string v0, "steamcommunity.com"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_6

    const-string v0, "steamcommunity.com"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_8

    const-string v0, "store.steampowered.com"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_a

    const-string v0, "store.steampowered.com"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_c

    const-string v0, "help.steampowered.com"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_HELP_BASE:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Dev:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-eq v0, v1, :cond_e

    const-string v0, "http://m.valvesoftware.com/androidsubmit1"

    :goto_7
    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->URL_MOBILE_CRASH_UPLOAD:Ljava/lang/String;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->URL_HELP_BASE:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config;->WG_AUTH_DOMAINS:[Ljava/lang/String;

    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v1, :cond_1

    const-string v0, "https://api-beta.steampowered.com:443"

    goto/16 :goto_0

    :cond_1
    const-string v0, "https://tonyp.valve.org:8283"

    goto/16 :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v1, :cond_3

    const-string v0, "http://api-beta.steampowered.com:80"

    goto/16 :goto_1

    :cond_3
    const-string v0, "http://tonyp.valve.org:8282"

    goto/16 :goto_1

    .line 39
    :cond_4
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_5

    const-string v0, "beta.steamcommunity.com"

    goto/16 :goto_2

    :cond_5
    const-string v0, "tonyp.valve.org/community"

    goto/16 :goto_2

    .line 43
    :cond_6
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_7

    const-string v0, "beta.steamcommunity.com"

    goto/16 :goto_3

    :cond_7
    const-string v0, "tonyp.valve.org/community"

    goto/16 :goto_3

    .line 48
    :cond_8
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_9

    const-string v0, "store-beta.steampowered.com"

    goto/16 :goto_4

    :cond_9
    const-string v0, "tonyp.valve.org/store"

    goto/16 :goto_4

    .line 52
    :cond_a
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_b

    const-string v0, "store-beta.steampowered.com"

    goto/16 :goto_5

    :cond_b
    const-string v0, "tonyp.valve.org/store"

    goto/16 :goto_5

    .line 58
    :cond_c
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBPHP:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v2, :cond_d

    const-string v0, "help.beta.steampowered.com"

    goto/16 :goto_6

    :cond_d
    const-string v0, "tonyp.valve.org/help"

    goto/16 :goto_6

    .line 63
    :cond_e
    const-string v0, "http://tonyp.valve.org/crashupload/androidsubmit1"

    goto :goto_7
.end method
