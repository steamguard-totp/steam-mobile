.class public Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SteamData"
.end annotation


# instance fields
.field private final steamIdToFriendsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;->steamIdToFriendsMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSteamIdToFriendsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;->steamIdToFriendsMap:Ljava/util/Map;

    return-object v0
.end method

.method public saveFriends(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "mostRecentFriendsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;->steamIdToFriendsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 574
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;->steamIdToFriendsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 575
    return-void
.end method
