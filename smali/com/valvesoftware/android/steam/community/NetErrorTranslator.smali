.class public Lcom/valvesoftware/android/steam/community/NetErrorTranslator;
.super Ljava/lang/Object;
.source "NetErrorTranslator.java"


# static fields
.field private static final s_likelyNetworkErrors:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ADDRESS_UNREACHABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CONNECTION_ABORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONNECTION_CLOSED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CONNECTION_FAILED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CONNECTION_REFUSED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CONNECTION_RESET"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CONNECTION_TIMED_OUT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DNS_SERVER_FAILED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DNS_TIMED_OUT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "INTERNET_DISCONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MSG_TOO_BIG"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NAME_NOT_RESOLVED"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NAME_RESOLUTION_FAILED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PROXY_AUTH_REQUESTED"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PROXY_AUTH_REQUESTED_WITH_NO_CONNECTION"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PROXY_AUTH_UNSUPPORTED"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "PROXY_CERTIFICATE_INVALID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PROXY_CONNECTION_FAILED"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TIMED_OUT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/NetErrorTranslator;->s_likelyNetworkErrors:[Ljava/lang/String;

    return-void
.end method

.method public static translateError(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "errMessage"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 44
    .local v2, "result":Ljava/lang/String;
    const-string v3, "net::ERR_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "net::ERR_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "errMessageStub":Ljava/lang/String;
    sget-object v3, Lcom/valvesoftware/android/steam/community/NetErrorTranslator;->s_likelyNetworkErrors:[Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 48
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 49
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .end local v0    # "errMessageStub":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_0
    if-nez v2, :cond_1

    .line 54
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    :cond_1
    return-object v2
.end method
