.class public final enum Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;
.super Ljava/lang/Enum;
.source "GroupCategoryInList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

.field public static final enum OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

.field public static final enum PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

.field public static final enum PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

.field public static final enum REQUEST_INVITE:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

.field public static final enum SEARCH_ALL:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    const-string v1, "REQUEST_INVITE"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->REQUEST_INVITE:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 8
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 9
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 10
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    const-string v1, "OFFICIAL"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 11
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    const-string v1, "SEARCH_ALL"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->SEARCH_ALL:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->REQUEST_INVITE:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->SEARCH_ALL:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    aput-object v1, v0, v6

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    return-object v0
.end method


# virtual methods
.method public getDisplayNumber()I
    .locals 3

    .prologue
    .line 15
    const v0, 0x7f0800c4

    .line 17
    .local v0, "resID":I
    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList$1;->$SwitchMap$com$valvesoftware$android$steam$community$model$GroupCategoryInList:[I

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 36
    :goto_0
    return v0

    .line 20
    :pswitch_0
    const v0, 0x7f080087

    .line 21
    goto :goto_0

    .line 23
    :pswitch_1
    const v0, 0x7f08009d

    .line 24
    goto :goto_0

    .line 26
    :pswitch_2
    const v0, 0x7f0800a2

    .line 27
    goto :goto_0

    .line 29
    :pswitch_3
    const v0, 0x7f0800a4

    .line 30
    goto :goto_0

    .line 32
    :pswitch_4
    const v0, 0x7f0800a8

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
