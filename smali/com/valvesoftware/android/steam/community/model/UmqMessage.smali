.class public Lcom/valvesoftware/android/steam/community/model/UmqMessage;
.super Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
.source "UmqMessage.java"


# instance fields
.field public chatPartnerSteamId:Ljava/lang/String;

.field public hadSendError:Z

.field public personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 29
    :cond_0
    :goto_0
    return v2

    .line 20
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 22
    invoke-super {p0, p1}, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 25
    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 27
    .local v0, "that":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    :cond_2
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    move v2, v1

    goto :goto_0

    .line 27
    :cond_5
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 29
    :cond_6
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1
.end method

.method public getUtcTimeStampInMilliseconds()J
    .locals 4

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-super {p0}, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->hashCode()I

    move-result v0

    .line 36
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 37
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 38
    return v0

    :cond_1
    move v1, v2

    .line 36
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
