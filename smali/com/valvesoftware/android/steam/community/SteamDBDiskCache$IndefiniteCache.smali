.class public Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;
.super Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;
.source "SteamDBDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndefiniteCache"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "rootdir"    # Ljava/io/File;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;-><init>(Ljava/io/File;)V

    .line 139
    return-void
.end method


# virtual methods
.method public declared-synchronized Delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;->m_dir:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;->getFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
