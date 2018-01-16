.class public final enum Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
.super Ljava/lang/Enum;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

.field public static final enum Email:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

.field public static final enum None:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

.field public static final enum TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->None:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    .line 49
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    const-string v1, "Email"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->Email:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    .line 50
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    const-string v1, "TwoFactor"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->None:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->Email:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    aput-object v1, v0, v4

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    return-object v0
.end method
