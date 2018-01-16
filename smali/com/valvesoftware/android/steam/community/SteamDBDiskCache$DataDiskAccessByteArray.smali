.class Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;
.super Ljava/lang/Object;
.source "SteamDBDiskCache.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataDiskAccessByteArray"
.end annotation


# instance fields
.field m_data:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;-><init>()V

    return-void
.end method


# virtual methods
.method public onRead(Ljava/io/FileInputStream;J)V
    .locals 6
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    long-to-int v2, p2

    new-array v1, v2, [B

    .line 32
    .local v1, "readbytes":[B
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 33
    .local v0, "numBytesRead":I
    int-to-long v2, v0

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 34
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File read produced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_0
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;->m_data:[B

    .line 37
    return-void
.end method

.method public onWrite(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "fw"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;->m_data:[B

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$DataDiskAccessByteArray;->m_data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 27
    :cond_0
    return-void
.end method
