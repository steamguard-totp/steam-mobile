.class public Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
.super Ljava/lang/Object;
.source "SteamUriHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamUriHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

.field public handled:Z

.field public props:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->handled:Z

    return-void
.end method


# virtual methods
.method public getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;
    .locals 2
    .param p1, "eProperty"    # Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "eProperty"    # Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;
    .param p2, "sDefaultValue"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->props:Ljava/util/Properties;

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
