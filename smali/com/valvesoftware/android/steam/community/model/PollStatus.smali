.class public final enum Lcom/valvesoftware/android/steam/community/model/PollStatus;
.super Ljava/lang/Enum;
.source "PollStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/PollStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/model/PollStatus;

.field public static final enum NOT_LOGGED_ON:Lcom/valvesoftware/android/steam/community/model/PollStatus;

.field public static final enum OK:Lcom/valvesoftware/android/steam/community/model/PollStatus;

.field public static final enum TIMEOUT:Lcom/valvesoftware/android/steam/community/model/PollStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/model/PollStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;->OK:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    .line 5
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/model/PollStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;->TIMEOUT:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    .line 6
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;

    const-string v1, "NOT_LOGGED_ON"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/model/PollStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;->NOT_LOGGED_ON:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/model/PollStatus;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PollStatus;->OK:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PollStatus;->TIMEOUT:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PollStatus;->NOT_LOGGED_ON:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/PollStatus;

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

.method public static getValueFromString(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/PollStatus;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 9
    if-nez p0, :cond_1

    .line 18
    :cond_0
    :goto_0
    return-object v0

    .line 11
    :cond_1
    const-string v1, "ok"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;->OK:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    goto :goto_0

    .line 13
    :cond_2
    const-string v1, "timeout"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;->TIMEOUT:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    goto :goto_0

    .line 15
    :cond_3
    const-string v1, "not logged on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;->NOT_LOGGED_ON:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/model/PollStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/model/PollStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PollStatus;->$VALUES:[Lcom/valvesoftware/android/steam/community/model/PollStatus;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/model/PollStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/model/PollStatus;

    return-object v0
.end method
