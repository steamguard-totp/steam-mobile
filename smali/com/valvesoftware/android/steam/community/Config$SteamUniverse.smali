.class public final enum Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SteamUniverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

.field public static final enum Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

.field public static final enum Dev:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

.field public static final enum Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    const-string v1, "Public"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    new-instance v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    const-string v1, "Beta"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    new-instance v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    const-string v1, "Dev"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Dev:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Public:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Beta:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->Dev:Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    aput-object v1, v0, v4

    sput-object v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->$VALUES:[Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->$VALUES:[Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/Config$SteamUniverse;

    return-object v0
.end method
