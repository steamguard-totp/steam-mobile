.class public Lcom/valvesoftware/android/steam/community/model/Persona;
.super Ljava/lang/Object;
.source "Persona.java"


# instance fields
.field private categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

.field public currentGameID:I

.field public currentGameString:Ljava/lang/String;

.field public fullAvatarUrl:Ljava/lang/String;

.field public isOnMobile:Z

.field public isOnTenFoot:Z

.field public isOnWeb:Z

.field private lastMessageTime:J

.field public lastOnlineTime:J

.field public mediumAvatarUrl:Ljava/lang/String;

.field private numUnreadMessagesSent:I

.field public personaName:Ljava/lang/String;

.field public personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

.field public realName:Ljava/lang/String;

.field public relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

.field public smallAvatarUrl:Ljava/lang/String;

.field public steamId:Ljava/lang/String;

.field private twoDaysInSeconds:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaState;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 8
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->none:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastOnlineTime:J

    .line 23
    const-wide/32 v0, 0x2a300

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->twoDaysInSeconds:J

    .line 29
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    return-void
.end method


# virtual methods
.method public clearUnreadMessageCount()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->numUnreadMessagesSent:I

    .line 116
    return-void
.end method

.method public determineDisplayCategory()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->requestrecipient:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    if-ne v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->REQUEST_INCOMING:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/model/Persona;->hasSentUnreadMessage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/model/Persona;->hasRecentlySentMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_1
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->CHATS:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 124
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->INGAME:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    if-ne v0, v1, :cond_4

    .line 126
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    goto :goto_0

    .line 128
    :cond_4
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->ONLINE:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    goto :goto_0
.end method

.method public getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    return-object v0
.end method

.method public getLastMessageTime()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastMessageTime:J

    return-wide v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->numUnreadMessagesSent:I

    return v0
.end method

.method public hasRecentlySentMessage()Z
    .locals 6

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 100
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastMessageTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->twoDaysInSeconds:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 101
    const/4 v2, 0x0

    .line 103
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasSentUnreadMessage()Z
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->numUnreadMessagesSent:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incrementUnreadMessageCount()V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->numUnreadMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->numUnreadMessagesSent:I

    .line 108
    return-void
.end method

.method public isFriend()Z
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->friend:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overwriteOrMergeWith(Lcom/valvesoftware/android/steam/community/model/Persona;)V
    .locals 4
    .param p1, "other"    # Lcom/valvesoftware/android/steam/community/model/Persona;

    .prologue
    .line 33
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->none:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    :goto_1
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 35
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    :goto_2
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 36
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->realName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->realName:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->realName:Ljava/lang/String;

    .line 37
    iget v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameID:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameID:I

    :goto_4
    iput v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameID:I

    .line 38
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->smallAvatarUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->smallAvatarUrl:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->smallAvatarUrl:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->fullAvatarUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->fullAvatarUrl:Ljava/lang/String;

    :goto_7
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->fullAvatarUrl:Ljava/lang/String;

    .line 42
    iget-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastOnlineTime:J

    iget-wide v2, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->lastOnlineTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastOnlineTime:J

    .line 43
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    :goto_8
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 44
    iget v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->numUnreadMessagesSent:I

    iget v1, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->numUnreadMessagesSent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->numUnreadMessagesSent:I

    .line 45
    iget-boolean v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnMobile:Z

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnMobile:Z

    .line 46
    iget-boolean v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnTenFoot:Z

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnTenFoot:Z

    .line 47
    iget-boolean v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnWeb:Z

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnWeb:Z

    .line 48
    iget-wide v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->lastMessageTime:J

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastMessageTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastMessageTime:J

    .line 49
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/model/Persona;->determineDisplayCategory()V

    .line 50
    return-void

    .line 33
    :cond_0
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    goto/16 :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    goto/16 :goto_1

    .line 35
    :cond_2
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    goto :goto_2

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->realName:Ljava/lang/String;

    goto :goto_3

    .line 37
    :cond_4
    iget v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameID:I

    goto :goto_4

    .line 39
    :cond_5
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->smallAvatarUrl:Ljava/lang/String;

    goto :goto_5

    .line 40
    :cond_6
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    goto :goto_6

    .line 41
    :cond_7
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->fullAvatarUrl:Ljava/lang/String;

    goto :goto_7

    .line 43
    :cond_8
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    goto :goto_8
.end method

.method public setDisplayCategoryForSearch()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->SEARCH_ALL:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->categoryInList:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    .line 83
    return-void
.end method

.method public setLastMessageTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->lastMessageTime:J

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
