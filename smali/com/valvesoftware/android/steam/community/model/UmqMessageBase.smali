.class public Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
.super Ljava/lang/Object;
.source "UmqMessageBase.java"


# instance fields
.field public isIncoming:Z

.field public secureMessageId:Ljava/lang/String;

.field public type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

.field public utcTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    if-ne p0, p1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v1

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 16
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 18
    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;

    .line 19
    .local v0, "that":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->utcTimeStamp:J

    iget-wide v6, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->utcTimeStamp:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_4
    iget-boolean v3, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->isIncoming:Z

    iget-boolean v4, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->isIncoming:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 22
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 30
    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->utcTimeStamp:J

    long-to-int v0, v2

    .line 31
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->isIncoming:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 32
    return v0

    .line 31
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
