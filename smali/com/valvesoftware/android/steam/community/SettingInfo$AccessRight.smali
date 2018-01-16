.class public final enum Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;
.super Ljava/lang/Enum;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessRight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

.field public static final enum CODE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

.field public static final enum NONE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

.field public static final enum USER:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

.field public static final enum VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->NONE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 34
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    const-string v1, "VALID_ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 35
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->USER:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 36
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    const-string v1, "CODE"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->CODE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->NONE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->USER:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->CODE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    aput-object v1, v0, v5

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->$VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->$VALUES:[Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    return-object v0
.end method
