.class public final enum Lcom/valvesoftware/android/steam/community/model/GroupRelationship;
.super Ljava/lang/Enum;
.source "GroupRelationship.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/GroupRelationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

.field public static final enum Blocked:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

.field public static final enum Invited:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

.field public static final enum Kicked:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

.field public static final enum Member:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

.field public static final enum None:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->None:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    .line 6
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    const-string v1, "Blocked"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Blocked:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    .line 7
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    const-string v1, "Invited"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Invited:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    .line 8
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    const-string v1, "Member"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Member:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    .line 9
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    const-string v1, "Kicked"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Kicked:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->None:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Blocked:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Invited:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Member:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Kicked:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    aput-object v1, v0, v6

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

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

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/GroupRelationship;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/GroupRelationship;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    return-object v0
.end method
