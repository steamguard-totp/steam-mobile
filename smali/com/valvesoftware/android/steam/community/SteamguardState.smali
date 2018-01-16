.class public Lcom/valvesoftware/android/steam/community/SteamguardState;
.super Ljava/lang/Object;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;,
        Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;,
        Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;,
        Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;,
        Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sSteamGuardStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SteamguardState;",
            ">;"
        }
    .end annotation
.end field

.field private static sbLoadedSteamguardStates:Z


# instance fields
.field private mCommitted:Z

.field private mInfo:Lorg/json/JSONObject;

.field private mTwoFactorStatus:Lorg/json/JSONObject;

.field private mTwoFactorToken:Lcom/valvesoftware/android/steam/community/TwoFactorToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState;->sSteamGuardStates:Ljava/util/ArrayList;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/valvesoftware/android/steam/community/SteamguardState;->sbLoadedSteamguardStates:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v1, "steamid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mCommitted:Z

    .line 305
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "properties"    # Lorg/json/JSONObject;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mCommitted:Z

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/SteamguardState;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->handleTwoFactorStatus(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;
    .param p1, "x1"    # Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeHelperErrorCleanup(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;
    .param p1, "x1"    # Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;
    .param p2, "x2"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeAddTwoFactorHelper(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/SteamguardState;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$500(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$602(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/TwoFactorToken;)Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;
    .param p1, "x1"    # Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mTwoFactorToken:Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    return-object p1
.end method

.method static synthetic access$700(Lcom/valvesoftware/android/steam/community/SteamguardState;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendRemovalEmail()V

    return-void
.end method

.method static synthetic access$800(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;
    .param p1, "x1"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->internalSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    return-void
.end method

.method private base64encryptedConfirmationHash(JLjava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "time"    # J
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v14, "identity_secret"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 947
    .local v9, "sSecret":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 948
    const-string v13, ""

    .line 990
    :goto_0
    return-object v13

    .line 950
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v10

    .line 953
    .local v10, "secretBytes":[B
    const/16 v3, 0x8

    .line 954
    .local v3, "dataLen":I
    if-eqz p3, :cond_1

    .line 956
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x20

    if-le v13, v14, :cond_2

    .line 957
    add-int/lit8 v3, v3, 0x20

    .line 962
    :cond_1
    :goto_1
    new-array v2, v3, [B

    .line 965
    .local v2, "dataBytes":[B
    const/16 v5, 0x8

    .local v5, "i":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_2
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    if-lez v6, :cond_3

    .line 966
    move-wide/from16 v0, p1

    long-to-int v13, v0

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    .line 965
    const/16 v13, 0x8

    ushr-long p1, p1, v13

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 959
    .end local v2    # "dataBytes":[B
    .end local v6    # "i":I
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v3, v13

    goto :goto_1

    .line 970
    .restart local v2    # "dataBytes":[B
    .restart local v5    # "i":I
    :cond_3
    if-eqz p3, :cond_4

    .line 972
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 973
    .local v12, "tagBytes":[B
    const/4 v13, 0x0

    const/16 v14, 0x8

    add-int/lit8 v15, v3, -0x8

    invoke-static {v12, v13, v2, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 976
    .end local v12    # "tagBytes":[B
    :cond_4
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    const-string v13, "HmacSHA1"

    invoke-direct {v11, v10, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 980
    .local v11, "signKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v13, "HmacSHA1"

    invoke-static {v13}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v7

    .line 981
    .local v7, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v7, v11}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 982
    invoke-virtual {v7, v2}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 989
    .local v4, "hmac_result":[B
    const/4 v13, 0x2

    invoke-static {v4, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 990
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Lcom/valvesoftware/android/steam/community/SteamguardState;->percentEncodeUrlUnsafeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 984
    .end local v4    # "hmac_result":[B
    .end local v7    # "mac":Ljavax/crypto/Mac;
    .end local v8    # "s":Ljava/lang/String;
    :catch_0
    move-exception v13

    const/4 v13, 0x0

    goto :goto_0

    .line 986
    :catch_1
    move-exception v13

    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static broadcastSteamguardStateAdded(Ljava/lang/String;)V
    .locals 2
    .param p0, "gid"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TWOFACTORCODES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "com.valve.community.added"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public static broadcastSteamguardStateRemoved(Ljava/lang/String;)V
    .locals 2
    .param p0, "gid"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TWOFACTORCODES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "com.valve.community.removed"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method private finalizeAddTwoFactorHelper(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 9
    .param p1, "finalizeTwoFactorState"    # Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;
    .param p2, "completion"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    .prologue
    const/4 v8, 0x0

    .line 591
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mTwoFactorToken:Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    invoke-virtual {v6}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->currentTime()J

    move-result-wide v4

    .line 592
    .local v4, "now":J
    iget-wide v6, p1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->timeOffset:J

    add-long v2, v4, v6

    .line 596
    .local v2, "authenticator_time":J
    iget-boolean v6, p1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->bSentActivationCode:Z

    if-nez v6, :cond_0

    .line 597
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->activationCode:Ljava/lang/String;

    invoke-static {v6, v7, v8, v2, v3}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getTwoFactorFinalizeAddAuthenticatorRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v1

    .line 619
    .local v1, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    :goto_0
    new-instance v6, Lcom/valvesoftware/android/steam/community/SteamguardState$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/valvesoftware/android/steam/community/SteamguardState$3;-><init>(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    invoke-virtual {v1, v6}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 688
    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 689
    return-void

    .line 601
    .end local v1    # "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    :cond_0
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mTwoFactorToken:Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    invoke-virtual {v6, v2, v3}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->generateSteamGuardCodeForTime(J)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "authenticator_code":Ljava/lang/String;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8, v0, v2, v3}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getTwoFactorFinalizeAddAuthenticatorRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v1

    .line 610
    .restart local v1    # "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    iget v6, p1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->nSentAuthCodeCount:I

    if-nez v6, :cond_1

    .line 611
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mCommitted:Z

    .line 612
    sget-object v6, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/SteamguardState;->internalSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    .line 613
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->saveToFile()Z

    .line 616
    :cond_1
    iget v6, p1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->nSentAuthCodeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->nSentAuthCodeCount:I

    goto :goto_0
.end method

.method private finalizeHelperErrorCleanup(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;)V
    .locals 1
    .param p1, "finalizeTwoFactorState"    # Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    .prologue
    .line 581
    iget v0, p1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->nSentAuthCodeCount:I

    if-lez v0, :cond_0

    .line 582
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->oldScheme:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->internalSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    .line 583
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sanitize()V

    .line 584
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->saveToFile()Z

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mCommitted:Z

    .line 587
    :cond_0
    return-void
.end method

.method public static getSortedTwoFactorSteamGuardStates()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SteamguardState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorSteamGuardStates()Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    .local v0, "sgStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/SteamguardState;>;"
    new-instance v1, Lcom/valvesoftware/android/steam/community/SteamguardState$1;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    return-object v0
.end method

.method public static getSteamGuardStates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SteamguardState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-boolean v0, Lcom/valvesoftware/android/steam/community/SteamguardState;->sbLoadedSteamguardStates:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/valvesoftware/android/steam/community/SteamguardState;->sbLoadedSteamguardStates:Z

    .line 94
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->loadExistingSteamguardStates()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState;->sSteamGuardStates:Ljava/util/ArrayList;

    .line 97
    :cond_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState;->sSteamGuardStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getTwoFactorSteamGuardStates()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SteamguardState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/SteamguardState;>;"
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSteamGuardStates()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/SteamguardState;

    .line 122
    .local v1, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v1    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :cond_1
    return-object v0
.end method

.method public static getUniqueIdForPhone()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 750
    sget-object v6, Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;

    const-string v7, "steam.uuid"

    invoke-virtual {v6, v7, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 752
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "uuidKey"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "savedId":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 773
    .end local v4    # "savedId":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 758
    .restart local v4    # "savedId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 760
    .local v2, "generatedId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 765
    :goto_1
    if-nez v2, :cond_1

    .line 767
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 768
    .local v0, "cal":Ljava/util/GregorianCalendar;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 771
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    :cond_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "android:%s"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v2, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, "result":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "uuidKey"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v4, v3

    .line 773
    goto :goto_0

    .line 761
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "RandomUUID"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static handleTwoFactorRemovalNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "gidString"    # Ljava/lang/String;
    .param p1, "newSchemeString"    # Ljava/lang/String;

    .prologue
    .line 1048
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForGID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v1

    .line 1052
    .local v1, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v1, :cond_0

    .line 1055
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->stringToScheme(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v0

    .line 1056
    .local v0, "newScheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->removeTwoFactorForScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    goto :goto_0
.end method

.method private handleTwoFactorStatus(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mTwoFactorStatus:Lorg/json/JSONObject;

    .line 844
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getScheme()Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v2

    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    if-ne v2, v3, :cond_0

    .line 845
    const-string v2, "steamguard_scheme"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->schemeNumberStringToScheme(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v1

    .line 846
    .local v1, "serverScheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    const-string v2, "token_gid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "serverGid":Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 863
    .end local v0    # "serverGid":Ljava/lang/String;
    .end local v1    # "serverScheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    :cond_0
    :goto_0
    return-void

    .line 853
    .restart local v0    # "serverGid":Ljava/lang/String;
    .restart local v1    # "serverScheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getScheme()Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v2

    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    if-ne v2, v3, :cond_2

    .line 856
    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->removeTwoFactorForScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->Email:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->removeTwoFactorForScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    goto :goto_0
.end method

.method public static hasLiveSteamguardStates()Z
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSteamGuardStates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    check-cast v0, Lcom/valvesoftware/android/steam/community/SteamguardState;

    .line 106
    .restart local v0    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v1, 0x1

    .line 111
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initializeSteamguardState(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sput-object p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;

    .line 84
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSteamGuardStates()Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method public static installSecret(Ljava/lang/String;)I
    .locals 10
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v1, -0x1

    .line 237
    .local v1, "err":I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 238
    .local v0, "bytes":[B
    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    .line 240
    .local v4, "jsonBytes":[B
    const/4 v5, 0x0

    .line 242
    .local v5, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v6, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v5    # "jsonString":Ljava/lang/String;
    .local v6, "jsonString":Ljava/lang/String;
    move-object v5, v6

    .line 246
    .end local v6    # "jsonString":Ljava/lang/String;
    .restart local v5    # "jsonString":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 247
    const/4 v2, 0x0

    .line 250
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    move-object v2, v3

    .line 254
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :goto_1
    if-eqz v2, :cond_0

    .line 255
    const-string v9, "steamid"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "steamID":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 258
    invoke-static {v8}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForSteamID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v7

    .line 260
    .local v7, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v7, :cond_0

    .line 261
    invoke-virtual {v7, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->updateFromJSON(Lorg/json/JSONObject;)V

    .line 262
    const/4 v1, 0x0

    .line 269
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v7    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v8    # "steamID":Ljava/lang/String;
    :cond_0
    return v1

    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    goto :goto_1

    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private internalSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V
    .locals 3
    .param p1, "newScheme"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    .prologue
    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v1, "steamguard_scheme"

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private internalStartSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 7
    .param p1, "newScheme"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .param p2, "completion"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    .prologue
    .line 871
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v3, "steamguard_scheme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "oldScheme":Ljava/lang/String;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v5, "revocation_code"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getRemoveAuthenticatorRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v1

    .line 875
    .local v1, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v2, Lcom/valvesoftware/android/steam/community/SteamguardState$6;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/valvesoftware/android/steam/community/SteamguardState$6;-><init>(Lcom/valvesoftware/android/steam/community/SteamguardState;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 908
    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 909
    return-void
.end method

.method private static loadExistingSteamguardStates()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SteamguardState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v0, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/SteamguardState;>;"
    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 433
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Steamguard-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 435
    sget-object v6, Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/valvesoftware/android/steam/community/SteamguardState;->loadFromFile(Landroid/content/Context;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v2

    .line 437
    .local v2, "steamguardState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v2    # "steamguardState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method private static loadFromFile(Landroid/content/Context;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 392
    const/4 v1, 0x0

    .line 396
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 398
    .local v0, "buffer":[B
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v7

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    if-eqz v1, :cond_0

    .line 404
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 410
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 411
    .local v4, "jsonString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 414
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    move-object v2, v3

    .line 418
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz v2, :cond_1

    .line 419
    new-instance v5, Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-direct {v5, v2}, Lcom/valvesoftware/android/steam/community/SteamguardState;-><init>(Lorg/json/JSONObject;)V

    .line 421
    .end local v0    # "buffer":[B
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonString":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v5

    .line 400
    :catch_0
    move-exception v6

    .line 402
    if-eqz v1, :cond_1

    .line 404
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_2

    .line 402
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    .line 404
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 406
    :cond_2
    :goto_3
    throw v5

    .restart local v0    # "buffer":[B
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0    # "buffer":[B
    :catch_3
    move-exception v6

    goto :goto_3

    .restart local v0    # "buffer":[B
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonString":Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method private static mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "dest"    # Lorg/json/JSONObject;
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 699
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 701
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 705
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 709
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static percentEncodeUrlUnsafeChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 930
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 932
    .local v0, "c":C
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_1

    .line 933
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%%%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 935
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 938
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static schemeNumberStringToScheme(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    if-nez p0, :cond_1

    move-object v1, v2

    .line 227
    :cond_0
    :goto_0
    return-object v1

    .line 220
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "n":I
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->values()[Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 222
    .local v1, "sch":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->ordinal()I

    move-result v6

    if-eq v6, v0, :cond_0

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "sch":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    :cond_2
    move-object v1, v2

    .line 227
    goto :goto_0
.end method

.method private varargs sendEmailOfType(Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;[Ljava/lang/String;)V
    .locals 4
    .param p1, "emailType"    # Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;
    .param p2, "arguments"    # [Ljava/lang/String;

    .prologue
    .line 796
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getTwoFactorSendEmailRequestBuilder(Ljava/lang/String;I)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v1

    .line 798
    .local v1, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, v0, 0x1

    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 799
    aget-object v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 802
    :cond_0
    new-instance v2, Lcom/valvesoftware/android/steam/community/SteamguardState$5;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/SteamguardState$5;-><init>(Lcom/valvesoftware/android/steam/community/SteamguardState;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 818
    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 819
    return-void
.end method

.method private sendRemovalEmail()V
    .locals 2

    .prologue
    .line 791
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_Removed:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendEmailOfType(Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;[Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method private sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V
    .locals 1
    .param p1, "requestBuilder"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .prologue
    .line 548
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 549
    return-void
.end method

.method private startAddTwoFactor(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 4
    .param p1, "smsPhoneId"    # Ljava/lang/String;
    .param p2, "completion"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    .prologue
    .line 713
    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->k_ETwoFactorTokenType_ValveMobileApp:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorTokenType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "authenticatorType":Ljava/lang/String;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getUniqueIdForPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getAddAuthenticatorRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v1

    .line 717
    .local v1, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    if-eqz p1, :cond_0

    .line 718
    const-string v2, "sms_phone_id"

    invoke-virtual {v1, v2, p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    new-instance v2, Lcom/valvesoftware/android/steam/community/SteamguardState$4;

    invoke-direct {v2, p0, p2}, Lcom/valvesoftware/android/steam/community/SteamguardState$4;-><init>(Lcom/valvesoftware/android/steam/community/SteamguardState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 743
    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 744
    return-void
.end method

.method private static stateFileForSteamId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "steamId"    # Ljava/lang/String;

    .prologue
    .line 462
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Steamguard-"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static steamguardStateForGID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;
    .locals 4
    .param p0, "gidString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 182
    if-nez p0, :cond_0

    move-object v0, v1

    .line 191
    :goto_0
    return-object v0

    .line 186
    :cond_0
    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState;->sSteamGuardStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SteamguardState;

    .line 187
    .local v0, "steamguardState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "steamguardState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :cond_2
    move-object v0, v1

    .line 191
    goto :goto_0
.end method

.method public static steamguardStateForLoggedInUser()Lcom/valvesoftware/android/steam/community/SteamguardState;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->steamguardStateForSteamID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;

    move-result-object v0

    return-object v0
.end method

.method public static steamguardStateForSteamID(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState;
    .locals 4
    .param p0, "steamID"    # Ljava/lang/String;

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    .line 164
    :cond_0
    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState;->sSteamGuardStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/SteamguardState;

    .line 165
    .local v1, "steamguardState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSteamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 171
    .end local v1    # "steamguardState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    :cond_2
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState;->sSteamGuardStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 174
    goto :goto_0
.end method

.method public static stringToScheme(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .locals 6
    .param p0, "schemeName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 199
    if-nez p0, :cond_1

    move-object v0, v1

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->values()[Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 204
    .local v0, "scheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "scheme":Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    :cond_2
    move-object v0, v1

    .line 208
    goto :goto_0
.end method


# virtual methods
.method public finalizeAddTwoFactor(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 1
    .param p1, "activationCode"    # Ljava/lang/String;
    .param p2, "completion"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    .prologue
    .line 693
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;

    invoke-direct {v0, p0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;-><init>(Lcom/valvesoftware/android/steam/community/SteamguardState;Ljava/lang/String;)V

    .line 694
    .local v0, "finalizeTwoFactorState":Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;
    invoke-direct {p0, v0, p2}, Lcom/valvesoftware/android/steam/community/SteamguardState;->finalizeAddTwoFactorHelper(Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    .line 695
    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfirmationUrl()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1003
    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->currentTimeSeconds()J

    move-result-wide v2

    .line 1004
    .local v2, "now":J
    const-string v4, "conf"

    .line 1005
    .local v4, "tag":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v4}, Lcom/valvesoftware/android/steam/community/SteamguardState;->base64encryptedConfirmationHash(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "hash":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1007
    const-string v1, ""

    .line 1017
    :goto_0
    return-object v1

    .line 1009
    :cond_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s?p=%s&a=%s&k=%s&t=%d&m=android&tag=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/valvesoftware/android/steam/community/SteamAppUri;->CONFIRMATION_WEB:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1011
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getUniqueIdForPhone()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 1012
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSteamId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v0, v7, v8

    const/4 v8, 0x4

    .line 1014
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v4, v7, v8

    .line 1009
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRevocationCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v1, "revocation_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v1, "steamguard_scheme"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->schemeNumberStringToScheme(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v0

    return-object v0
.end method

.method public getSteamId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v1, "steamid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaggedConfirmationUrlParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1032
    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->currentTimeSeconds()J

    move-result-wide v2

    .line 1033
    .local v2, "now":J
    invoke-direct {p0, v2, v3, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->base64encryptedConfirmationHash(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "hash":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1035
    const-string v1, ""

    .line 1044
    :goto_0
    return-object v1

    .line 1037
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "p=%s&a=%s&k=%s&t=%d&m=android&tag=%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1038
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getUniqueIdForPhone()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 1039
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSteamId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    .line 1041
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p1, v6, v7

    .line 1037
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTokenGID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    const-string v1, "token_gid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getScheme()Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v0

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    if-eq v0, v1, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mTwoFactorToken:Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mTwoFactorToken:Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mTwoFactorToken:Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    goto :goto_0
.end method

.method public removeTwoFactorForScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V
    .locals 2
    .param p1, "newScheme"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    .prologue
    .line 826
    if-eqz p1, :cond_0

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    if-eq p1, v1, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->internalSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    .line 829
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sanitize()V

    .line 830
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->saveToFile()Z

    .line 831
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->broadcastSteamguardStateRemoved(Ljava/lang/String;)V

    .line 833
    .end local v0    # "gid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public sanitize()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 470
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "steamguard_scheme"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "steamid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "account_name"

    aput-object v5, v2, v4

    .line 472
    .local v2, "saveProperties":[Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 474
    .local v0, "newInfo":Lorg/json/JSONObject;
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 475
    .local v1, "property":Ljava/lang/String;
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 477
    :try_start_0
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "property":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    .line 484
    return-void

    .restart local v1    # "property":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public saveToFile()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 369
    const/4 v0, 0x0

    .line 372
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSteamId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/SteamguardState;->stateFileForSteamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 373
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    if-eqz v0, :cond_0

    .line 381
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 387
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1

    .line 375
    :catch_0
    move-exception v2

    .line 379
    if-eqz v0, :cond_1

    .line 381
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    .line 377
    :catch_2
    move-exception v2

    .line 379
    if-eqz v0, :cond_1

    .line 381
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    .line 379
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 381
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 383
    :cond_2
    :goto_2
    throw v1

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public sendActivationCodeEmail()V
    .locals 4

    .prologue
    .line 781
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;->k_ETwoFactorEmailType_Signup:Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "include_activation_code"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendEmailOfType(Lcom/valvesoftware/android/steam/community/SteamguardState$ETwoFactorEmailType;[Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public startGetTwoFactorStatus()V
    .locals 2

    .prologue
    .line 492
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getTwoFactorQueryStatusRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 493
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/SteamguardState$2;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/SteamguardState$2;-><init>(Lcom/valvesoftware/android/steam/community/SteamguardState;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 507
    return-void
.end method

.method public startSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V
    .locals 3
    .param p1, "newScheme"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;
    .param p2, "smsPhoneId"    # Ljava/lang/String;
    .param p3, "completion"    # Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;

    .prologue
    .line 520
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getScheme()Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v1

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    if-ne v1, v2, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "tokenGID":Ljava/lang/String;
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->None:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->internalSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;)V

    .line 526
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->sanitize()V

    .line 527
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->saveToFile()Z

    .line 528
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->broadcastSteamguardStateRemoved(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, p2, p3}, Lcom/valvesoftware/android/steam/community/SteamguardState;->startAddTwoFactor(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    .line 544
    .end local v0    # "tokenGID":Ljava/lang/String;
    :goto_0
    return-void

    .line 532
    :cond_0
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;->TwoFactor:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    if-ne p1, v1, :cond_1

    .line 536
    invoke-direct {p0, p2, p3}, Lcom/valvesoftware/android/steam/community/SteamguardState;->startAddTwoFactor(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    goto :goto_0

    .line 542
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/valvesoftware/android/steam/community/SteamguardState;->internalStartSetScheme(Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;)V

    goto :goto_0
.end method

.method public updateFromJSON(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "properties"    # Lorg/json/JSONObject;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mInfo:Lorg/json/JSONObject;

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mCommitted:Z

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState;->mTwoFactorToken:Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    .line 451
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->saveToFile()Z

    .line 453
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamguardState;->broadcastSteamguardStateAdded(Ljava/lang/String;)V

    .line 455
    :cond_0
    return-void
.end method
