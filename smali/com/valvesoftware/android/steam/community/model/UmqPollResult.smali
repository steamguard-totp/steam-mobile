.class public Lcom/valvesoftware/android/steam/community/model/UmqPollResult;
.super Ljava/lang/Object;
.source "UmqPollResult.java"


# instance fields
.field private containsMessageText:Z

.field public lastMessageNumber:J

.field public messagebase:J

.field public nextSuggestedTimeoutDuration:I

.field public pollId:J

.field public statusCode:Lcom/valvesoftware/android/steam/community/model/PollStatus;

.field public timeStamp:J

.field private final umqMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation
.end field

.field private umqNotificationCountMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

.field public utcTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->lastMessageNumber:J

    .line 11
    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->messagebase:J

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqMessages:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqNotificationCountMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

    .line 24
    return-void
.end method


# virtual methods
.method public addMessage(Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;)V
    .locals 2
    .param p1, "newMessage"    # Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;

    .prologue
    .line 28
    if-nez p1, :cond_1

    .line 42
    .end local p1    # "newMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local p1    # "newMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    :cond_1
    instance-of v0, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

    if-eqz v0, :cond_2

    .line 33
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

    .end local p1    # "newMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqNotificationCountMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

    goto :goto_0

    .line 35
    .restart local p1    # "newMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
    :cond_2
    instance-of v0, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqMessages:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;->type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->MESSAGE_TEXT:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    if-ne v0, v1, :cond_0

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->containsMessageText:Z

    goto :goto_0
.end method

.method public containsIsTypingNotification()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->getTypingNotificationMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsMessageText()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->containsMessageText:Z

    return v0
.end method

.method public containsNotificationCountUpdate()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqNotificationCountMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllMessagesWithText()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "messagesWithText":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqMessages:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 47
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 55
    .end local v1    # "messagesWithText":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :cond_0
    return-object v1

    .line 49
    .restart local v1    # "messagesWithText":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :cond_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 50
    .local v0, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    sget-object v4, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->MESSAGE_TEXT:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    if-ne v3, v4, :cond_2

    .line 51
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getNotificationCountMessage()Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqNotificationCountMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

    return-object v0
.end method

.method public getTypingNotificationMessages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqMessages:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 77
    :cond_0
    return-object v1

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 72
    .local v0, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    sget-object v4, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->TYPING:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    if-ne v3, v4, :cond_2

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public steamIdsWithPersonaStateChange()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 84
    .local v0, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    sget-object v4, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->PERSONA_STATE:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    if-ne v3, v4, :cond_0

    .line 85
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v0    # "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_1
    return-object v1
.end method

.method public steamIdsWithRelationshipChanges()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->umqMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 95
    .local v0, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    sget-object v4, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->PERSONA_RELATIONSHIP:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    if-ne v3, v4, :cond_0

    .line 96
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v0    # "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_1
    return-object v1
.end method
