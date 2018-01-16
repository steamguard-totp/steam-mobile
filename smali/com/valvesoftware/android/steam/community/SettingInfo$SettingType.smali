.class public final enum Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;
.super Ljava/lang/Enum;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum CHECK:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum DATE:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum INFO:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum MARKET:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum RADIOSELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum RINGTONESELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum SECTION:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum UNREADMSG:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

.field public static final enum URI:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "SECTION"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->SECTION:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 21
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->INFO:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 22
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "CHECK"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->CHECK:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 23
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "DATE"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->DATE:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 24
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "URI"

    invoke-direct {v0, v1, v7}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->URI:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 25
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "MARKET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->MARKET:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 26
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "UNREADMSG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->UNREADMSG:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 27
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "RADIOSELECTOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RADIOSELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 28
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    const-string v1, "RINGTONESELECTOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RINGTONESELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->SECTION:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->INFO:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->CHECK:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->DATE:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->URI:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->MARKET:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->UNREADMSG:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RADIOSELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RINGTONESELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->$VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->$VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    return-object v0
.end method
