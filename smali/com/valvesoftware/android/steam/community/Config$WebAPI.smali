.class public Lcom/valvesoftware/android/steam/community/Config$WebAPI;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebAPI"
.end annotation


# static fields
.field public static final OAUTH_CLIENT_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v1, :cond_0

    const-string v0, "DE45CD61"

    :goto_0
    sput-object v0, Lcom/valvesoftware/android/steam/community/Config$WebAPI;->OAUTH_CLIENT_ID:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config;->STEAM_UNIVERSE_WEBAPI:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    if-ne v0, v1, :cond_1

    const-string v0, "7DC60112"

    goto :goto_0

    :cond_1
    const-string v0, "7DC60112"

    goto :goto_0
.end method
