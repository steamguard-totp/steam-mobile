.class public final enum Lcom/valvesoftware/android/steam/community/model/UmqMessageType;
.super Ljava/lang/Enum;
.source "UmqMessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/UmqMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

.field public static final enum EMOTE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

.field public static final enum MESSAGE_TEXT:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

.field public static final enum NOTIFICATION_COUNTS:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

.field public static final enum PERSONA_RELATIONSHIP:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

.field public static final enum PERSONA_STATE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

.field public static final enum TYPING:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    const-string v1, "TYPING"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->TYPING:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 5
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    const-string v1, "EMOTE"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->EMOTE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 6
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    const-string v1, "MESSAGE_TEXT"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->MESSAGE_TEXT:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 7
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    const-string v1, "PERSONA_STATE"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->PERSONA_STATE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 8
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    const-string v1, "PERSONA_RELATIONSHIP"

    invoke-direct {v0, v1, v7}, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->PERSONA_RELATIONSHIP:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 9
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    const-string v1, "NOTIFICATION_COUNTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->NOTIFICATION_COUNTS:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->TYPING:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->EMOTE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->MESSAGE_TEXT:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->PERSONA_STATE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->PERSONA_RELATIONSHIP:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->NOTIFICATION_COUNTS:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/UmqMessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/UmqMessageType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    return-object v0
.end method
