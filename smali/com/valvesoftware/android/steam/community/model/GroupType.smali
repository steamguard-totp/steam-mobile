.class public final enum Lcom/valvesoftware/android/steam/community/model/GroupType;
.super Ljava/lang/Enum;
.source "GroupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/GroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupType;

.field public static final enum DISABLED:Lcom/valvesoftware/android/steam/community/model/GroupType;

.field public static final enum LOCKED:Lcom/valvesoftware/android/steam/community/model/GroupType;

.field public static final enum OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupType;

.field public static final enum PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupType;

.field public static final enum PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupType;


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
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupType;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupType;

    .line 6
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupType;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/model/GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupType;

    .line 7
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupType;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/model/GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->LOCKED:Lcom/valvesoftware/android/steam/community/model/GroupType;

    .line 8
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupType;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/model/GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->DISABLED:Lcom/valvesoftware/android/steam/community/model/GroupType;

    .line 9
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupType;

    const-string v1, "OFFICIAL"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/model/GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/GroupType;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupType;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupType;->PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupType;->LOCKED:Lcom/valvesoftware/android/steam/community/model/GroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupType;->DISABLED:Lcom/valvesoftware/android/steam/community/model/GroupType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupType;->OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupType;

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

.method public static FromInteger(I)Lcom/valvesoftware/android/steam/community/model/GroupType;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 26
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupType;

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupType;

    goto :goto_0

    .line 18
    :pswitch_1
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupType;

    goto :goto_0

    .line 20
    :pswitch_2
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->LOCKED:Lcom/valvesoftware/android/steam/community/model/GroupType;

    goto :goto_0

    .line 22
    :pswitch_3
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->DISABLED:Lcom/valvesoftware/android/steam/community/model/GroupType;

    goto :goto_0

    .line 24
    :pswitch_4
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupType;

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/GroupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/valvesoftware/android/steam/community/model/GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/GroupType;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/GroupType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupType;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/GroupType;

    return-object v0
.end method
