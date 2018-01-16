.class public final enum Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;
.super Ljava/lang/Enum;
.source "PersonaRelationship.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public static final enum blocked:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public static final enum friend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public static final enum ignored:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public static final enum ignoredfriend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public static final enum myself:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public static final enum none:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public static final enum requestinitiator:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public static final enum requestrecipient:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field static stringFriendRelationshipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum suggested:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "none"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->none:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 8
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "myself"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->myself:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 9
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "friend"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->friend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 10
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "blocked"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->blocked:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 11
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "requestrecipient"

    invoke-direct {v0, v1, v7}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->requestrecipient:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 12
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "requestinitiator"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->requestinitiator:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 13
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "ignored"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->ignored:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 14
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "ignoredfriend"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->ignoredfriend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 15
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    const-string v1, "suggested"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->suggested:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->none:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->myself:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->friend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->blocked:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v1, v0, v6

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->requestrecipient:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->requestinitiator:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->ignored:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->ignoredfriend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->suggested:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    .line 20
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "none"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->none:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "myself"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->myself:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "friend"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->friend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "blocked"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->blocked:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "requestrecipient"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->requestrecipient:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "requestinitiator"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->requestinitiator:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "ignored"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->ignored:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "ignoredfriend"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->ignoredfriend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    const-string v1, "suggested"

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->suggested:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEnumValue(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;
    .locals 1
    .param p0, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->stringFriendRelationshipMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    return-object v0
.end method
