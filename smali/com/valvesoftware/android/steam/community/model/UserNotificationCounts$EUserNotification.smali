.class public final enum Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;
.super Ljava/lang/Enum;
.source "UserNotificationCounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EUserNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationAsyncGameState:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationComment:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationFriendInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationGift:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationGroupInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationHelpRequestReply:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationInvalid:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationItem:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationMax:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationModeratorMessage:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationOfflineMessage:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

.field public static final enum k_EUserNotificationTradeOffer:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;


# instance fields
.field public final supported:Z

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationInvalid"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationInvalid:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 7
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationTradeOffer"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationTradeOffer:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 8
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationAsyncGameState"

    invoke-direct {v0, v1, v6, v6, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationAsyncGameState:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 9
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationModeratorMessage"

    invoke-direct {v0, v1, v7, v7, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationModeratorMessage:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 13
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationComment"

    invoke-direct {v0, v1, v8, v8, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationComment:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 14
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationItem"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationItem:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 15
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationFriendInvite"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationFriendInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 16
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationGroupInvite"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationGroupInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 17
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationGift"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationGift:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 18
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationOfflineMessage"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationOfflineMessage:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 20
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationHelpRequestReply"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationHelpRequestReply:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 22
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    const-string v1, "k_EUserNotificationMax"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationMax:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .line 5
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationInvalid:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationTradeOffer:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationAsyncGameState:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v1, v0, v6

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationModeratorMessage:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v1, v0, v7

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationComment:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationItem:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationFriendInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationGroupInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationGift:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationOfflineMessage:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationHelpRequestReply:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationMax:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "supported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->value:I

    .line 27
    iput-boolean p4, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->supported:Z

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    return-object v0
.end method
