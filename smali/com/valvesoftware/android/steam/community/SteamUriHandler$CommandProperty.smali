.class public final enum Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;
.super Ljava/lang/Enum;
.source "SteamUriHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamUriHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum acct:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum arg1:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum arg2:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum code:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum oauth_token:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum op:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum ph:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum refresh:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum scheme:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum steamid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum title:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum webcookie:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum wgtoken:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

.field public static final enum wgtoken_secure:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "url"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 184
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "call"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 185
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "title"

    invoke-direct {v0, v1, v5}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->title:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 186
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "steamid"

    invoke-direct {v0, v1, v6}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->steamid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 187
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "oauth_token"

    invoke-direct {v0, v1, v7}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->oauth_token:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 188
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "wgtoken"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->wgtoken:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 189
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "wgtoken_secure"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->wgtoken_secure:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 190
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "webcookie"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->webcookie:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 191
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "gid"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 192
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "scheme"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->scheme:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 193
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "code"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->code:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 194
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "acct"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->acct:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 195
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "refresh"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->refresh:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 196
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "ph"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->ph:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 197
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "op"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->op:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 198
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "arg1"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->arg1:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 199
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    const-string v1, "arg2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->arg2:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .line 181
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v1, v0, v4

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->title:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v1, v0, v5

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->steamid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v1, v0, v6

    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->oauth_token:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->wgtoken:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->wgtoken_secure:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->webcookie:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->gid:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->scheme:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->code:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->acct:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->refresh:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->ph:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->op:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->arg1:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->arg2:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    aput-object v2, v0, v1

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->$VALUES:[Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    return-object v0
.end method
