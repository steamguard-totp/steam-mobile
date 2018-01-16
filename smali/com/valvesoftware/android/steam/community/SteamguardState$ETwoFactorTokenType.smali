.class final enum Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;
.super Ljava/lang/Enum;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ETwoFactorTokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

.field public static final enum k_ETwoFactorTokenType_None:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

.field public static final enum k_ETwoFactorTokenType_ThirdParty:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

.field public static final enum k_ETwoFactorTokenType_ValveMobileApp:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    const-string v1, "k_ETwoFactorTokenType_None"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->k_ETwoFactorTokenType_None:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    .line 55
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    const-string v1, "k_ETwoFactorTokenType_ValveMobileApp"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->k_ETwoFactorTokenType_ValveMobileApp:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    .line 56
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    const-string v1, "k_ETwoFactorTokenType_ThirdParty"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->k_ETwoFactorTokenType_ThirdParty:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->k_ETwoFactorTokenType_None:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->k_ETwoFactorTokenType_ValveMobileApp:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->k_ETwoFactorTokenType_ThirdParty:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    return-object v0
.end method
