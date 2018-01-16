.class public Lcom/valvesoftware/android/steam/community/TwoFactorToken;
.super Ljava/lang/Object;
.source "TwoFactorToken.java"


# static fields
.field private static final s_rgchSteamguardCodeChars:[B


# instance fields
.field mSecret:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->s_rgchSteamguardCodeChars:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x42t
        0x43t
        0x44t
        0x46t
        0x47t
        0x48t
        0x4at
        0x4bt
        0x4dt
        0x4et
        0x50t
        0x51t
        0x52t
        0x54t
        0x56t
        0x57t
        0x58t
        0x59t
    .end array-data
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v1, "shared_secret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "sSecret":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->mSecret:[B

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final currentTime()J
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->currentTimeSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public final generateSteamGuardCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->currentTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->generateSteamGuardCodeForTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final generateSteamGuardCodeForTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 50
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->mSecret:[B

    if-nez v9, :cond_0

    .line 51
    const-string v9, ""

    .line 87
    :goto_0
    return-object v9

    .line 54
    :cond_0
    const-wide/16 v10, 0x1e

    div-long/2addr p1, v10

    .line 56
    const/16 v9, 0x8

    new-array v8, v9, [B

    .line 58
    .local v8, "timeBytes":[B
    const/16 v2, 0x8

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_1

    .line 59
    long-to-int v9, p1

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    .line 58
    const/16 v9, 0x8

    ushr-long/2addr p1, v9

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 62
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->mSecret:[B

    const-string v10, "HmacSHA1"

    invoke-direct {v7, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 66
    .local v7, "signKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v9, "HmacSHA1"

    invoke-static {v9}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 67
    .local v4, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v4, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 68
    invoke-virtual {v4, v8}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 75
    .local v1, "hmac_result":[B
    const/16 v9, 0x13

    aget-byte v9, v1, v9

    and-int/lit8 v5, v9, 0xf

    .line 76
    .local v5, "offset":I
    aget-byte v9, v1, v5

    and-int/lit8 v9, v9, 0x7f

    shl-int/lit8 v9, v9, 0x18

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v0, v9, v10

    .line 81
    .local v0, "bin_code":I
    const/4 v9, 0x5

    new-array v6, v9, [B

    .line 82
    .local v6, "resultBytes":[B
    const/4 v2, 0x0

    :goto_2
    const/4 v9, 0x5

    if-ge v2, v9, :cond_2

    .line 83
    sget-object v9, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->s_rgchSteamguardCodeChars:[B

    sget-object v10, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->s_rgchSteamguardCodeChars:[B

    array-length v10, v10

    rem-int v10, v0, v10

    aget-byte v9, v9, v10

    aput-byte v9, v6, v2

    .line 84
    sget-object v9, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->s_rgchSteamguardCodeChars:[B

    array-length v9, v9

    div-int/2addr v0, v9

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 70
    .end local v0    # "bin_code":I
    .end local v1    # "hmac_result":[B
    .end local v4    # "mac":Ljavax/crypto/Mac;
    .end local v5    # "offset":I
    .end local v6    # "resultBytes":[B
    :catch_0
    move-exception v9

    const/4 v9, 0x0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v9

    const/4 v9, 0x0

    goto :goto_0

    .line 87
    .restart local v0    # "bin_code":I
    .restart local v1    # "hmac_result":[B
    .restart local v4    # "mac":Ljavax/crypto/Mac;
    .restart local v5    # "offset":I
    .restart local v6    # "resultBytes":[B
    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public final secondsToNextChange()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x1e

    .line 95
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->currentTime()J

    move-result-wide v0

    rem-long/2addr v0, v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    return v0
.end method
