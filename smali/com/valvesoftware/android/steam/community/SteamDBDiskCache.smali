.class public Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;
.super Ljava/lang/Object;
.source "SteamDBDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IndefiniteCache;,
        Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;,
        Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;
    }
.end annotation


# instance fields
.field protected m_dir:Ljava/io/File;

.field private m_idxTmpFileName:I


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootdir"    # Ljava/io/File;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->m_idxTmpFileName:I

    .line 43
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->m_dir:Ljava/io/File;

    .line 44
    return-void
.end method

.method private declared-synchronized ReadFromFile(Ljava/io/File;Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "data"    # Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 100
    :goto_0
    monitor-exit p0

    return v1

    .line 88
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 91
    .local v2, "len":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 92
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v2    # "len":J
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 94
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "len":J
    :cond_1
    if-eqz p2, :cond_2

    .line 95
    :try_start_4
    invoke-interface {p2, v0, v2, v3}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;->onRead(Ljava/io/FileInputStream;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    :cond_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 100
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized WriteToFile(Ljava/io/File;Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "data"    # Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->m_idxTmpFileName:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->m_idxTmpFileName:I

    .line 108
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->m_dir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tmpfile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->m_idxTmpFileName:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    .local v2, "tmp":Ljava/io/File;
    const/4 v0, 0x0

    .line 112
    .local v0, "fw":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v0    # "fw":Ljava/io/OutputStream;
    .local v1, "fw":Ljava/io/OutputStream;
    if-eqz p2, :cond_0

    .line 114
    :try_start_2
    invoke-interface {p2, v1}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;->onWrite(Ljava/io/OutputStream;)V

    .line 115
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 116
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    const/4 v0, 0x0

    .line 119
    .end local v1    # "fw":Ljava/io/OutputStream;
    .restart local v0    # "fw":Ljava/io/OutputStream;
    if-eqz v0, :cond_1

    .line 120
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 124
    :cond_1
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v0, :cond_2

    .line 120
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    .end local v0    # "fw":Ljava/io/OutputStream;
    .end local v2    # "tmp":Ljava/io/File;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 119
    .restart local v1    # "fw":Ljava/io/OutputStream;
    .restart local v2    # "tmp":Ljava/io/File;
    :catchall_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "fw":Ljava/io/OutputStream;
    .restart local v0    # "fw":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public Read(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->m_dir:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->getFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->ReadFromFile(Ljava/io/File;Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Read(Ljava/lang/String;)[B
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 68
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;-><init>(Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$1;)V

    .line 69
    .local v0, "r":Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;
    invoke-virtual {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->Read(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;->m_data:[B

    :cond_0
    return-object v1
.end method

.method public Write(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->m_dir:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->getFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->WriteToFile(Ljava/io/File;Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Write(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 51
    new-instance v0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;-><init>(Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$1;)V

    .line 52
    .local v0, "w":Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;
    iput-object p2, v0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;->m_data:[B

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;->Write(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;)V

    .line 54
    return-void
.end method

.method protected getFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 47
    return-object p1
.end method
