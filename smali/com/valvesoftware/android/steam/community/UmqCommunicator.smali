.class public Lcom/valvesoftware/android/steam/community/UmqCommunicator;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"


# static fields
.field private static instance:Lcom/valvesoftware/android/steam/community/UmqCommunicator;


# instance fields
.field private canSendTypingNotification:Z

.field private chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

.field private consecutiveLoginAttemptsFailed:I

.field private final enqueueStopHandler:Landroid/os/Handler;

.field private lastMessageNumber:J

.field private final lastPollTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private loggedInStatusChangedListener:Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;

.field private notificationCountUpdateListener:Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;

.field final numSwitchToPushRetries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pollInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

.field private stopPolling:Z

.field private final uiThreadHandler:Landroid/os/Handler;

.field private umqId:Ljava/lang/String;

.field private final umqdb:Lcom/valvesoftware/android/steam/community/LocalDb;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->canSendTypingNotification:Z

    .line 35
    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->lastPollTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->enqueueStopHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->uiThreadHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->numSwitchToPushRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 427
    iput v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->consecutiveLoginAttemptsFailed:I

    .line 47
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    .line 48
    new-instance v0, Lcom/valvesoftware/android/steam/community/LocalDb;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/LocalDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqdb:Lcom/valvesoftware/android/steam/community/LocalDb;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    return v0
.end method

.method static synthetic access$002(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->switchToPush()V

    return-void
.end method

.method static synthetic access$1000(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollUmqStatus()V

    return-void
.end method

.method static synthetic access$1202(Lcom/valvesoftware/android/steam/community/UmqCommunicator;J)J
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->lastMessageNumber:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollUmqForMessageContents()V

    return-void
.end method

.method static synthetic access$1400(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendRefreshSteamIdsNotification(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendRelationshipChangeNotification(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendIsTypingNotification(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendNotificationCountsUpdate(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->consecutiveLoginAttemptsFailed:I

    return v0
.end method

.method static synthetic access$1802(Lcom/valvesoftware/android/steam/community/UmqCommunicator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->consecutiveLoginAttemptsFailed:I

    return p1
.end method

.method static synthetic access$1808(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)I
    .locals 2
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->consecutiveLoginAttemptsFailed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->consecutiveLoginAttemptsFailed:I

    return v0
.end method

.method static synthetic access$1900(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loggedInStatusChangedListener:Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    return-object v0
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/UmqCommunicator;ZLcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setPushInfoOnServer(ZLcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LocalDb;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqdb:Lcom/valvesoftware/android/steam/community/LocalDb;

    return-object v0
.end method

.method static synthetic access$600(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/ChatStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->canSendTypingNotification:Z

    return p1
.end method

.method static synthetic access$900(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendMessagesSavedNotification(Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->instance:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    if-nez v0, :cond_0

    .line 53
    const-class v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    monitor-enter v1

    .line 54
    :try_start_0
    new-instance v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->instance:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->instance:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private pollUmqForMessageContents()V
    .locals 6

    .prologue
    .line 370
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollUmqStatus()V

    .line 421
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->lastMessageNumber:J

    invoke-static {v1, v2, v4, v5}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUMQPollForMessageRequestBuilder(Ljava/lang/String;Ljava/lang/String;J)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 377
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 420
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0
.end method

.method private pollUmqStatus()V
    .locals 8

    .prologue
    .line 284
    iget-boolean v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    if-eqz v3, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loginToUmq()V

    goto :goto_0

    .line 291
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 292
    .local v0, "currentTimeMillis":J
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->lastPollTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7530

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 296
    :cond_3
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->lastPollTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 297
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 298
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->lastMessageNumber:J

    invoke-static {v3, v4, v6, v7}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUMQPollStatusRequestBuilder(Ljava/lang/String;Ljava/lang/String;J)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v2

    .line 300
    .local v2, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v3, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 348
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v3, v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0
.end method

.method private sendIsTypingNotification(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "isTypingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    invoke-interface {v0, p1}, Lcom/valvesoftware/android/steam/community/ChatStateListener;->isTypingMessageReceived(Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendMessagesSavedNotification(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    if-nez v0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    invoke-interface {v0, p1}, Lcom/valvesoftware/android/steam/community/ChatStateListener;->newMessagesSaved(Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendNotificationCountsUpdate(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;)V
    .locals 1
    .param p1, "notificationCounts"    # Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->notificationCountUpdateListener:Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->notificationCountUpdateListener:Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;

    invoke-interface {v0, p1}, Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;->notificationCountsChanged(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;)V

    .line 367
    :cond_0
    return-void
.end method

.method private sendRefreshSteamIdsNotification(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    invoke-interface {v0, p1}, Lcom/valvesoftware/android/steam/community/ChatStateListener;->personaStateChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendRelationshipChangeNotification(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    invoke-interface {v0, p1}, Lcom/valvesoftware/android/steam/community/ChatStateListener;->relationshipStateChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method private setPushInfoOnServer(ZLcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 4
    .param p1, "pushOn"    # Z
    .param p2, "listener"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .prologue
    .line 478
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;-><init>()V

    .line 479
    .local v0, "gcmRegistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->getStoredRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "regId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    invoke-static {v1, p1, v3}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getSendServerPushInfoRequestBuilder(Ljava/lang/String;ZLjava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v2

    .line 484
    .local v2, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v3, Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;

    invoke-direct {v3, p0, p2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 496
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v3, v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0
.end method

.method private switchToPush()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 80
    .local v0, "switchToPushHandler":Landroid/os/Handler;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->numSwitchToPushRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    mul-int/lit16 v2, v2, 0x7d0

    int-to-long v2, v2

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method


# virtual methods
.method public isLoggedInToChat()Z
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logOffFromUmq(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 2
    .param p1, "responseListener"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopImmediate()V

    .line 506
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUMQLogoffRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 507
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$11;

    invoke-direct {v1, p0, p1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$11;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 523
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 524
    return-void

    .line 506
    .end local v0    # "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public loginToUmq()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loginToUmq(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 425
    return-void
.end method

.method public loginToUmq(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .prologue
    .line 429
    invoke-static {}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUMQLogonRequestBuilder()Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 431
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;

    invoke-direct {v1, p0, p1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 469
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 470
    return-void
.end method

.method public sendMessage(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    .param p2, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    invoke-static {v1, p2, v2}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getSendUMQMessageRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 145
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Lcom/valvesoftware/android/steam/community/model/UmqMessage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 175
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0
.end method

.method public sendNoticesAsNeeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;

    .prologue
    .line 541
    const/4 v1, 0x1

    .line 542
    .local v1, "sendSystemTrayNotification":Z
    sget-boolean v2, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->isInForeground:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    .line 543
    invoke-interface {v2}, Lcom/valvesoftware/android/steam/community/ChatStateListener;->listenerWillHandleAllVisualChatNotifications()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    invoke-interface {v2, p1}, Lcom/valvesoftware/android/steam/community/ChatStateListener;->listenerWillHandleVisualChatNotificationForSteamId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    :cond_0
    const/4 v1, 0x0

    .line 547
    :cond_1
    const-string v0, ""

    .line 548
    .local v0, "fromPersonaName":Ljava/lang/String;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqdb:Lcom/valvesoftware/android/steam/community/LocalDb;

    if-eqz v2, :cond_2

    .line 549
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqdb:Lcom/valvesoftware/android/steam/community/LocalDb;

    invoke-virtual {v2, p1}, Lcom/valvesoftware/android/steam/community/LocalDb;->getPersonaNameForSteamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_2
    if-eqz v1, :cond_3

    .line 553
    invoke-static {}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getInstance()Lcom/valvesoftware/android/steam/community/NotificationSender;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Lcom/valvesoftware/android/steam/community/NotificationSender;->sendChatNotification(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_3
    invoke-static {}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getInstance()Lcom/valvesoftware/android/steam/community/NotificationSender;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->ringOrVibrateAsNeededForChat(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendTypingNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-boolean v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->canSendTypingNotification:Z

    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->canSendTypingNotification:Z

    .line 182
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->umqId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getSendUMQTypingNotificationRequestBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 183
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$4;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$4;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 194
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0
.end method

.method public setChatLoggedInStatusChangedListener(Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;)V
    .locals 0
    .param p1, "loggedInStatusChangedListener"    # Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loggedInStatusChangedListener:Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;

    .line 219
    return-void
.end method

.method public setChatStateListener(Lcom/valvesoftware/android/steam/community/ChatStateListener;)V
    .locals 0
    .param p1, "chatStateListener"    # Lcom/valvesoftware/android/steam/community/ChatStateListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->chatStateListener:Lcom/valvesoftware/android/steam/community/ChatStateListener;

    .line 223
    return-void
.end method

.method public setNotificationCountUpdateListener(Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;)V
    .locals 0
    .param p1, "notificationCountUpdateListener"    # Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->notificationCountUpdateListener:Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;

    .line 228
    return-void
.end method

.method public setServerPushStateBasedOnUserPreference()V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->usePushInBackground()Z

    move-result v0

    .line 474
    .local v0, "userWantsPush":Z
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setPushInfoOnServer(ZLcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 475
    return-void
.end method

.method public signOutOfAppCompletely()V
    .locals 2

    .prologue
    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    .line 501
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setPushInfoOnServer(ZLcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 502
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->enqueueStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    .line 134
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollUmqStatus()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 61
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stop(I)V

    .line 62
    return-void
.end method

.method public stop(I)V
    .locals 4
    .param p1, "delayBeforeStop"    # I

    .prologue
    .line 66
    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stopPolling:Z

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->enqueueStopHandler:Landroid/os/Handler;

    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method public stopImmediate()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->stop(I)V

    return-void
.end method

.method public updateChatMessages(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->updateChatMessages(Ljava/lang/String;ZLcom/valvesoftware/android/steam/community/CompleteCallback;)V

    .line 232
    return-void
.end method

.method public updateChatMessages(Ljava/lang/String;ZLcom/valvesoftware/android/steam/community/CompleteCallback;)V
    .locals 2
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;
    .param p2, "enterNewMessagesAsUnread"    # Z
    .param p3, "onCompleteCallback"    # Lcom/valvesoftware/android/steam/community/CompleteCallback;

    .prologue
    .line 235
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getRecentMessages(Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 237
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/CompleteCallback;Z)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 280
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 281
    return-void
.end method

.method public updateOfflineChats()V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getActiveMessageSessions()Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 200
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$5;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$5;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 214
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->steamCommunityApplication:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 215
    return-void
.end method
