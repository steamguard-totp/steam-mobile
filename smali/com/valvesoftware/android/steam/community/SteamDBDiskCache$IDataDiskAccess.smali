.class public interface abstract Lcom/valvesoftware/android/steam/community/SteamDBDiskCache$IDataDiskAccess;
.super Ljava/lang/Object;
.source "SteamDBDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamDBDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDataDiskAccess"
.end annotation


# virtual methods
.method public abstract onRead(Ljava/io/FileInputStream;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onWrite(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
