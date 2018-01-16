.class public final enum Lcom/valvesoftware/android/steam/community/model/PersonaState;
.super Ljava/lang/Enum;
.source "PersonaState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/PersonaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaState;

.field public static final enum AWAY:Lcom/valvesoftware/android/steam/community/model/PersonaState;

.field public static final enum BUSY:Lcom/valvesoftware/android/steam/community/model/PersonaState;

.field public static final enum OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

.field public static final enum ONLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

.field public static final enum SNOOZE:Lcom/valvesoftware/android/steam/community/model/PersonaState;


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
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 8
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/model/PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->ONLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 9
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/model/PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->BUSY:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 10
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;

    const-string v1, "AWAY"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/model/PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->AWAY:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 11
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;

    const-string v1, "SNOOZE"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/model/PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->SNOOZE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/PersonaState;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState;->ONLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState;->BUSY:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState;->AWAY:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState;->SNOOZE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaState;

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

.method public static FromInteger(I)Lcom/valvesoftware/android/steam/community/model/PersonaState;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 15
    packed-switch p0, :pswitch_data_0

    .line 28
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    goto :goto_0

    .line 20
    :pswitch_1
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->ONLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    goto :goto_0

    .line 22
    :pswitch_2
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->BUSY:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    goto :goto_0

    .line 24
    :pswitch_3
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->AWAY:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    goto :goto_0

    .line 26
    :pswitch_4
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->SNOOZE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    goto :goto_0

    .line 15
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

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/PersonaState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/PersonaState;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/PersonaState;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/PersonaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/PersonaState;

    return-object v0
.end method


# virtual methods
.method public GetDisplayString()I
    .locals 3

    .prologue
    .line 34
    const v0, 0x7f0800c4

    .line 36
    .local v0, "resID":I
    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState$1;->$SwitchMap$com$valvesoftware$android$steam$community$model$PersonaState:[I

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/model/PersonaState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_0
    return v0

    .line 39
    :pswitch_0
    const v0, 0x7f08009e

    .line 40
    goto :goto_0

    .line 42
    :pswitch_1
    const v0, 0x7f08009f

    .line 43
    goto :goto_0

    .line 45
    :pswitch_2
    const v0, 0x7f08006f

    .line 46
    goto :goto_0

    .line 48
    :pswitch_3
    const v0, 0x7f08006d

    .line 49
    goto :goto_0

    .line 51
    :pswitch_4
    const v0, 0x7f0800b7

    goto :goto_0

    .line 36
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
