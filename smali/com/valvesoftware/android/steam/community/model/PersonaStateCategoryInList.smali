.class public final enum Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;
.super Ljava/lang/Enum;
.source "PersonaStateCategoryInList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

.field public static final enum CHATS:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

.field public static final enum INGAME:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

.field public static final enum OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

.field public static final enum ONLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

.field public static final enum REQUEST_INCOMING:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

.field public static final enum REQUEST_SENT:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

.field public static final enum SEARCH_ALL:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;


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
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    const-string v1, "REQUEST_INCOMING"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->REQUEST_INCOMING:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 8
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    const-string v1, "CHATS"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->CHATS:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 9
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    const-string v1, "INGAME"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->INGAME:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 10
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->ONLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 11
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v7}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 12
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    const-string v1, "REQUEST_SENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->REQUEST_SENT:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 13
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    const-string v1, "SEARCH_ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->SEARCH_ALL:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->REQUEST_INCOMING:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->CHATS:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->INGAME:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->ONLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->REQUEST_SENT:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->SEARCH_ALL:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

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

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    return-object v0
.end method


# virtual methods
.method public GetDisplayString()I
    .locals 3

    .prologue
    .line 17
    const v0, 0x7f0800c4

    .line 19
    .local v0, "resID":I
    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList$1;->$SwitchMap$com$valvesoftware$android$steam$community$model$PersonaStateCategoryInList:[I

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 41
    :goto_0
    return v0

    .line 22
    :pswitch_0
    const v0, 0x7f080084

    .line 23
    goto :goto_0

    .line 25
    :pswitch_1
    const v0, 0x7f080079

    .line 26
    goto :goto_0

    .line 28
    :pswitch_2
    const v0, 0x7f08008c

    .line 29
    goto :goto_0

    .line 31
    :pswitch_3
    const v0, 0x7f08009f

    .line 32
    goto :goto_0

    .line 35
    :pswitch_4
    const v0, 0x7f08009e

    .line 36
    goto :goto_0

    .line 38
    :pswitch_5
    const v0, 0x7f0800a8

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
