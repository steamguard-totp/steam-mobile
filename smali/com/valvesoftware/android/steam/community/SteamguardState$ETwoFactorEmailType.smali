.class final enum Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;
.super Ljava/lang/Enum;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ETwoFactorEmailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

.field public static final enum k_ETwoFactorEmailType_Added:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

.field public static final enum k_ETwoFactorEmailType_None:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

.field public static final enum k_ETwoFactorEmailType_Removed:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

.field public static final enum k_ETwoFactorEmailType_Signup:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    const-string v1, "k_ETwoFactorEmailType_None"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_None:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    .line 61
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    const-string v1, "k_ETwoFactorEmailType_Signup"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_Signup:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    .line 62
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    const-string v1, "k_ETwoFactorEmailType_Added"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_Added:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    .line 63
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    const-string v1, "k_ETwoFactorEmailType_Removed"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_Removed:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_None:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_Signup:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_Added:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_Removed:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    return-object v0
.end method
