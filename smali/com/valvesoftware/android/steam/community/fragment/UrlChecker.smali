.class public Lcom/valvesoftware/android/steam/community/fragment/UrlChecker;
.super Ljava/lang/Object;
.source "UrlChecker.java"


# static fields
.field private static final s_safeURIs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "steampowered.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "steamgames.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "steamcommunity.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "valvesoftware.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "youtube.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "live.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msn.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "myspace.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "facebook.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hi5.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "wikipedia.org"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "orkut.com"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "rapidshare.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "blogger.com"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "megaupload.com"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "friendster.com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fotolog.net"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "google.fr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "baidu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "microsoft.com"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ebay.com"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "shacknews.com"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "bbc.co.uk"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "cnn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "foxsports.com"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "pcmag.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "nytimes.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "flickr.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "amazon.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "veoh.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pcgamer.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "metacritic.com"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "fileplanet.com"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "gamespot.com"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "gametap.com"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ign.com"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "kotaku.com"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "xfire.com"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pcgames.gwn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "gamezone.com"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "gamesradar.com"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "digg.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "engadget.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "gizmodo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "gamesforwindows.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "xbox.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "cnet.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "l4d.com"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "teamfortress.com"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "tf2.com"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "half-life2.com"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "aperturescience.com"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "dayofdefeat.com"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "dota2.com"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "steamtranslation.ru"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "playdota.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/fragment/UrlChecker;->s_safeURIs:[Ljava/lang/String;

    return-void
.end method

.method public static isUrlUnsafe(Landroid/text/style/URLSpan;)Z
    .locals 15
    .param p0, "other"    # Landroid/text/style/URLSpan;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "surl":Ljava/lang/String;
    const-string v10, "tel:"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v8

    .line 70
    :cond_1
    const-string v10, "mailto:"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 72
    const-string v10, "geo:"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 76
    const-string v10, "http://"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "rtsp://"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 77
    :cond_2
    const/4 v4, 0x7

    .line 84
    .local v4, "nPrefixLength":I
    :goto_1
    const/4 v10, 0x3

    new-array v1, v10, [C

    fill-array-data v1, :array_0

    .line 85
    .local v1, "end":[C
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 86
    .local v2, "nEndPos":I
    array-length v11, v1

    move v10, v8

    :goto_2
    if-ge v10, v11, :cond_6

    aget-char v0, v1, v10

    .line 87
    .local v0, "anEnd":C
    invoke-virtual {v7, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 88
    .local v3, "nFoundPos":I
    if-ltz v3, :cond_3

    if-ge v3, v2, :cond_3

    .line 89
    move v2, v3

    .line 86
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 78
    .end local v0    # "anEnd":C
    .end local v1    # "end":[C
    .end local v2    # "nEndPos":I
    .end local v3    # "nFoundPos":I
    .end local v4    # "nPrefixLength":I
    :cond_4
    const-string v10, "https://"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 79
    const/16 v4, 0x8

    .restart local v4    # "nPrefixLength":I
    goto :goto_1

    .end local v4    # "nPrefixLength":I
    :cond_5
    move v8, v9

    .line 81
    goto :goto_0

    .line 92
    .restart local v1    # "end":[C
    .restart local v2    # "nEndPos":I
    .restart local v4    # "nPrefixLength":I
    :cond_6
    invoke-virtual {v7, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "sDomain":Ljava/lang/String;
    sget-object v11, Lcom/valvesoftware/android/steam/community/fragment/UrlChecker;->s_safeURIs:[Ljava/lang/String;

    array-length v12, v11

    move v10, v8

    :goto_3
    if-ge v10, v12, :cond_8

    aget-object v6, v11, v10

    .line 94
    .local v6, "s_safeURI":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 95
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_0

    .line 96
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_0

    .line 93
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v6    # "s_safeURI":Ljava/lang/String;
    :cond_8
    move v8, v9

    .line 102
    goto :goto_0

    .line 84
    nop

    :array_0
    .array-data 2
        0x3as
        0x3fs
        0x2fs
    .end array-data
.end method
