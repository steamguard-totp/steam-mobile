.class public Lcom/valvesoftware/android/steam/community/SteamDebugUtil;
.super Ljava/lang/Object;
.source "SteamDebugUtil.java"


# direct methods
.method public static newDebugUtilRecord(Lcom/valvesoftware/android/steam/community/DebugUtilRecord;Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/DebugUtilRecord;
    .locals 1
    .param p0, "parent"    # Lcom/valvesoftware/android/steam/community/DebugUtilRecord;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/valvesoftware/android/steam/community/DebugUtilRecord;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/DebugUtilRecord;-><init>()V

    .line 29
    .local v0, "r":Lcom/valvesoftware/android/steam/community/DebugUtilRecord;
    iput-object p0, v0, Lcom/valvesoftware/android/steam/community/DebugUtilRecord;->parent:Lcom/valvesoftware/android/steam/community/DebugUtilRecord;

    .line 30
    iput-object p1, v0, Lcom/valvesoftware/android/steam/community/DebugUtilRecord;->key:Ljava/lang/String;

    .line 31
    iput-object p2, v0, Lcom/valvesoftware/android/steam/community/DebugUtilRecord;->value:Ljava/lang/String;

    .line 32
    return-object v0
.end method
