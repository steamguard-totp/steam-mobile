.class public final enum Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;
.super Ljava/lang/Enum;
.source "SteamUriHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamUriHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum application_internal:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum chat:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum closethis:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum currentuser:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum errorrecovery:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum getjsresult:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum livetokens:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum login:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum logout:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum lostauth:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum mobileloginsucceeded:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum notfound:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum opencategoryurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum openexternalurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum openurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum reloadpage:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum settitle:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguard:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguardconfcount:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguardconfrefresh:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguardgetgid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguardgetrevocation:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguardsendemail:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguardset:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguardsuppresstwofactorgid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum steamguardvalidate:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public static final enum twofactorcode:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;


# instance fields
.field public bHasArgs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 142
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "openurl"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->openurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 143
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "settitle"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->settitle:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 144
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "login"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->login:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 145
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "closethis"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->closethis:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 146
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "notfound"

    invoke-direct {v0, v1, v7}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->notfound:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 147
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "opencategoryurl"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->opencategoryurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 148
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "errorrecovery"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->errorrecovery:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 149
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "reloadpage"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->reloadpage:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 150
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "chat"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->chat:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 151
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "openexternalurl"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->openexternalurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 152
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "mobileloginsucceeded"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->mobileloginsucceeded:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 153
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "application_internal"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->application_internal:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 154
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "twofactorcode"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->twofactorcode:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 155
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguardset"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardset:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 156
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguardvalidate"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardvalidate:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 157
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguardsendemail"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardsendemail:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 158
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "getjsresult"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->getjsresult:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 159
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguardgetgid"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardgetgid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 160
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguardsuppresstwofactorgid"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardsuppresstwofactorgid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 161
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguardgetrevocation"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardgetrevocation:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 162
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguardconfrefresh"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardconfrefresh:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 163
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguardconfcount"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardconfcount:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 164
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "currentuser"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->currentuser:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 165
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "logout"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->logout:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 166
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "livetokens"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->livetokens:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 167
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "steamguard"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguard:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 168
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    const-string v1, "lostauth"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->lostauth:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    .line 140
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->openurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->settitle:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->login:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->closethis:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v1, v0, v6

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->notfound:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->opencategoryurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->errorrecovery:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->reloadpage:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->chat:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->openexternalurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->mobileloginsucceeded:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->application_internal:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->twofactorcode:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardset:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardvalidate:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardsendemail:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->getjsresult:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardgetgid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardsuppresstwofactorgid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardgetrevocation:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardconfrefresh:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguardconfcount:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->currentuser:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->logout:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->livetokens:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->steamguard:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->lostauth:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->bHasArgs:Z

    .line 174
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p3, "bHasArgs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->bHasArgs:Z

    .line 177
    iput-boolean p3, p0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->bHasArgs:Z

    .line 178
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    return-object v0
.end method
