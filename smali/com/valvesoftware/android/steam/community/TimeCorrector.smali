.class public Lcom/valvesoftware/android/steam/community/TimeCorrector;
.super Ljava/lang/Object;
.source "TimeCorrector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;
    }
.end annotation


# static fields
.field private static s_instance:Lcom/valvesoftware/android/steam/community/TimeCorrector;


# instance fields
.field private m_AdjustedTimeProbeFrequencySeconds:I

.field private m_HintProbeFrequencySeconds:I

.field private m_LargeTimeJink:J

.field private m_MaxAttempts:I

.field private m_ProbeFrequencySeconds:I

.field private m_SkewToleranceSeconds:J

.field private m_SyncTimeout:I

.field private m_TryAgainSeconds:I

.field private m_attemptCount:I

.field private m_bForceSync:Z

.field private m_bLastSyncFailed:Z

.field private m_bSynchronizing:Z

.field private m_lastLocalTime:J

.field private m_lastProbeTime:J

.field private m_lastSyncTime:J

.field private m_nextRetryTime:J

.field private m_timeAdjustment:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->s_instance:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x12c

    const/16 v2, 0x3c

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_SkewToleranceSeconds:J

    .line 57
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_LargeTimeJink:J

    .line 58
    const/16 v0, 0xe10

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_ProbeFrequencySeconds:I

    .line 59
    iput v3, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_AdjustedTimeProbeFrequencySeconds:I

    .line 60
    iput v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_HintProbeFrequencySeconds:I

    .line 61
    iput v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_SyncTimeout:I

    .line 62
    iput v3, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_TryAgainSeconds:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_MaxAttempts:I

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/TimeCorrector;)J
    .locals 2
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/TimeCorrector;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_SkewToleranceSeconds:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/TimeCorrector;J)V
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/TimeCorrector;
    .param p1, "x1"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->successfulSync(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/TimeCorrector;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/TimeCorrector;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->retrySync()V

    return-void
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/TimeCorrector;)J
    .locals 2
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/TimeCorrector;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/valvesoftware/android/steam/community/TimeCorrector;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/TimeCorrector;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractSyncParameters(Lorg/json/JSONObject;)V

    return-void
.end method

.method private bLocalTimeJumped()Z
    .locals 8

    .prologue
    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v0

    .line 401
    .local v0, "now":J
    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastLocalTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastLocalTime:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_LargeTimeJink:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 402
    const/4 v2, 0x1

    .line 405
    :cond_0
    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastLocalTime:J

    .line 406
    return v2
.end method

.method private bNeedsProbe()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 160
    iget-boolean v5, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bSynchronizing:Z

    if-eqz v5, :cond_0

    .line 184
    :goto_0
    return v4

    .line 164
    :cond_0
    iget-boolean v5, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bForceSync:Z

    if-eqz v5, :cond_1

    .line 165
    iput-boolean v4, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bForceSync:Z

    move v4, v3

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->bLocalTimeJumped()Z

    move-result v2

    .line 171
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v0

    .line 175
    .local v0, "now":J
    iget-wide v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_nextRetryTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    iget-wide v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_nextRetryTime:J

    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    .line 176
    const/4 v2, 0x1

    .end local v0    # "now":J
    :cond_2
    :goto_1
    move v4, v2

    .line 184
    goto :goto_0

    .line 177
    .restart local v0    # "now":J
    :cond_3
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->bUsingAdjustedTime()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 178
    iget-wide v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastProbeTime:J

    sub-long v6, v0, v6

    iget v5, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_AdjustedTimeProbeFrequencySeconds:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    .line 180
    :cond_5
    iget-wide v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastProbeTime:J

    sub-long v6, v0, v6

    iget v5, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_ProbeFrequencySeconds:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_6

    move v2, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_3
.end method

.method private checkForZombieSync()V
    .locals 6

    .prologue
    .line 225
    iget-boolean v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bSynchronizing:Z

    if-eqz v2, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastProbeTime:J

    sub-long v0, v2, v4

    .line 227
    .local v0, "elapsed":J
    iget v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_SyncTimeout:I

    iget v3, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_MaxAttempts:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 228
    iget v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_TryAgainSeconds:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->failedSync(J)V

    .line 231
    .end local v0    # "elapsed":J
    :cond_0
    return-void
.end method

.method private continueSync()V
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_attemptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_attemptCount:I

    .line 242
    new-instance v0, Lcom/valvesoftware/android/steam/community/TimeCorrector$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector$1;-><init>(Lcom/valvesoftware/android/steam/community/TimeCorrector;)V

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getServerTime(Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;)V

    .line 286
    return-void
.end method

.method private static extractIntValue(Lorg/json/JSONObject;Ljava/lang/String;III)I
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "minValue"    # I
    .param p4, "maxValue"    # I

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 326
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    const-string v1, "0"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 327
    .local v0, "value":I
    if-ge v0, p3, :cond_1

    .line 328
    move v0, p3

    .line 329
    :cond_1
    if-le v0, p4, :cond_2

    .line 330
    move v0, p4

    :cond_2
    move p2, v0

    .line 331
    goto :goto_0

    .line 333
    .end local v0    # "value":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static extractLongValue(Lorg/json/JSONObject;Ljava/lang/String;JJJ)J
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "minValue"    # J
    .param p6, "maxValue"    # J

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 313
    .restart local p2    # "defaultValue":J
    :cond_0
    const-string v2, "0"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 314
    .local v0, "value":J
    cmp-long v2, v0, p4

    if-gez v2, :cond_1

    .line 315
    move-wide v0, p4

    .line 316
    :cond_1
    cmp-long v2, v0, p6

    if-lez v2, :cond_2

    .line 317
    move-wide v0, p6

    :cond_2
    move-wide p2, v0

    .line 318
    goto :goto_0
.end method

.method private extractSyncParameters(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const v9, 0x1e13380

    const/16 v8, 0x3c

    .line 341
    const-string v1, "skew_tolerance_seconds"

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_SkewToleranceSeconds:J

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0x12c

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractLongValue(Lorg/json/JSONObject;Ljava/lang/String;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_SkewToleranceSeconds:J

    .line 342
    const-string v1, "large_time_jink"

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_LargeTimeJink:J

    const-wide/16 v4, 0x3c

    const-wide/32 v6, 0x1e13380

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractLongValue(Lorg/json/JSONObject;Ljava/lang/String;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_LargeTimeJink:J

    .line 343
    const-string v0, "probe_frequency_seconds"

    iget v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_ProbeFrequencySeconds:I

    invoke-static {p1, v0, v1, v8, v9}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractIntValue(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_ProbeFrequencySeconds:I

    .line 344
    const-string v0, "adjusted_time_probe_frequency_seconds"

    iget v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_AdjustedTimeProbeFrequencySeconds:I

    invoke-static {p1, v0, v1, v8, v9}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractIntValue(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_AdjustedTimeProbeFrequencySeconds:I

    .line 345
    const-string v0, "hint_probe_frequency_seconds"

    iget v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_HintProbeFrequencySeconds:I

    invoke-static {p1, v0, v1, v8, v9}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractIntValue(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_HintProbeFrequencySeconds:I

    .line 346
    const-string v0, "sync_timeout"

    iget v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_SyncTimeout:I

    invoke-static {p1, v0, v1, v8, v9}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractIntValue(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_SyncTimeout:I

    .line 347
    const-string v0, "try_again_seconds"

    iget v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_TryAgainSeconds:I

    invoke-static {p1, v0, v1, v8, v9}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractIntValue(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_TryAgainSeconds:I

    .line 348
    const-string v0, "max_attempts"

    iget v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_MaxAttempts:I

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {p1, v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->extractIntValue(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_MaxAttempts:I

    .line 349
    return-void
.end method

.method private failedSync(J)V
    .locals 3
    .param p1, "retrySeconds"    # J

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_timeAdjustment:J

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bSynchronizing:Z

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bLastSyncFailed:Z

    .line 305
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_nextRetryTime:J

    .line 306
    return-void
.end method

.method public static getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->s_instance:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->s_instance:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    .line 83
    :cond_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->s_instance:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    return-object v0
.end method

.method private getServerTime(Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;)V
    .locals 4
    .param p1, "handler"    # Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v2

    .line 359
    .local v2, "requestStartTime":J
    invoke-static {}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getTwoFactorQueryTimeRequestBuilder()Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 360
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/valvesoftware/android/steam/community/TimeCorrector$2;-><init>(Lcom/valvesoftware/android/steam/community/TimeCorrector;Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;J)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 388
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 389
    return-void
.end method

.method private retrySync()V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_attemptCount:I

    iget v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_MaxAttempts:I

    if-gt v0, v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->continueSync()V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_TryAgainSeconds:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->failedSync(J)V

    goto :goto_0
.end method

.method private startSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bSynchronizing:Z

    .line 194
    iput v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_attemptCount:I

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_nextRetryTime:J

    .line 196
    iput-boolean v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bLastSyncFailed:Z

    .line 197
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastProbeTime:J

    .line 199
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->continueSync()V

    .line 200
    return-void
.end method

.method private successfulSync(J)V
    .locals 3
    .param p1, "timeAdjustment"    # J

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bSynchronizing:Z

    .line 293
    iput-wide p1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_timeAdjustment:J

    .line 294
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastSyncTime:J

    .line 295
    return-void
.end method

.method private systemTimeSeconds()J
    .locals 4

    .prologue
    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bUsingAdjustedTime()Z
    .locals 4

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_timeAdjustment:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentTimeSeconds()J
    .locals 4

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_timeAdjustment:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hintSync()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 131
    iget-boolean v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bSynchronizing:Z

    if-eqz v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->systemTimeSeconds()J

    move-result-wide v0

    .line 136
    .local v0, "now":J
    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastProbeTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 137
    iput-boolean v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bForceSync:Z

    goto :goto_0

    .line 139
    :cond_2
    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_lastProbeTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_HintProbeFrequencySeconds:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->bUsingAdjustedTime()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bLastSyncFailed:Z

    if-eqz v2, :cond_0

    .line 142
    :cond_3
    iput-boolean v6, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector;->m_bForceSync:Z

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->bNeedsProbe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->startSync()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->checkForZombieSync()V

    goto :goto_0
.end method
