.class public Lcom/valvesoftware/android/steam/community/LocalDb;
.super Ljava/lang/Object;
.source "LocalDb.java"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;->getInstance(Landroid/content/Context;)Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->dbHelper:Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;

    .line 44
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->dbHelper:Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    return-void
.end method

.method private convertToMap(Landroid/database/Cursor;)Ljava/util/HashMap;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "latestMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    :cond_0
    const-string v3, "chatPartnerId"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "chatPartnerSteamId":Ljava/lang/String;
    const-string v3, "utcTime"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 93
    .local v2, "utcTimeStamp":Ljava/lang/Long;
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    .end local v0    # "chatPartnerSteamId":Ljava/lang/String;
    .end local v2    # "utcTimeStamp":Ljava/lang/Long;
    :cond_1
    return-object v1
.end method

.method private static convertToMessageList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v1, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    :cond_0
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;-><init>()V

    .line 427
    .local v0, "m":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->MESSAGE_TEXT:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 428
    const-string v2, "chatPartnerId"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    .line 429
    const-string v2, "messageText"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    .line 430
    const-string v2, "utcTime"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    .line 431
    const-string v2, "isIncoming"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isIncoming:Z

    .line 433
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    .end local v0    # "m":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_1
    return-object v1

    .line 431
    .restart local v0    # "m":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private convertToNotificationsList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/ChatNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "chatNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    new-instance v1, Lcom/valvesoftware/android/steam/community/ChatNotification;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/ChatNotification;-><init>()V

    .line 334
    .local v1, "m":Lcom/valvesoftware/android/steam/community/ChatNotification;
    const-string v2, "fromPersona"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    .line 335
    const-string v2, "notificationMessage"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/ChatNotification;->message:Ljava/lang/String;

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    .end local v1    # "m":Lcom/valvesoftware/android/steam/community/ChatNotification;
    :cond_1
    return-object v0
.end method

.method private deleteOldMessages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "loggedInSteamId"    # Ljava/lang/String;
    .param p2, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 345
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT id FROM Messages WHERE deviceLoggedInSteamId = %s AND chatPartnerId = \'%s\' ORDER BY utcTime DESC LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "latestMessageId":Ljava/lang/String;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Messages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s = ? AND %s = ? AND id NOT IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "deviceLoggedInSteamId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "chatPartnerId"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    .end local v1    # "latestMessageId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "err"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static execute(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 1
    .param p0, "statement"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 443
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 447
    :cond_0
    return-void

    .line 445
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0
.end method

.method private static executeInsert(Landroid/database/sqlite/SQLiteStatement;)Z
    .locals 4
    .param p0, "statement"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 450
    const-wide/16 v0, -0x1

    .line 452
    .local v0, "lastRowId":J
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 456
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 458
    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 456
    :catch_0
    move-exception v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v2

    .line 458
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getClearMessageTextStatement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "loggedInSteamId"    # Ljava/lang/String;
    .param p3, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 395
    const-string v1, "UPDATE Messages SET messageText = NULL WHERE deviceLoggedInSteamId = ? AND chatPartnerId = ? "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 402
    .local v0, "clearMessageTextStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 403
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 405
    return-object v0
.end method

.method private getMarkMessagesReadStatement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "loggedInSteamId"    # Ljava/lang/String;
    .param p3, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string v1, "UPDATE Messages SET isUnread = 0 WHERE deviceLoggedInSteamId = ? AND chatPartnerId = ? "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 388
    .local v0, "markMessagesReadStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 389
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 391
    return-object v0
.end method

.method private getSaveMessagesStatement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZ)Landroid/database/sqlite/SQLiteStatement;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "loggedInUserSteamId"    # Ljava/lang/String;
    .param p3, "chatPartnerSteamId"    # Ljava/lang/String;
    .param p4, "time"    # J
    .param p6, "utcTime"    # J
    .param p8, "messageText"    # Ljava/lang/String;
    .param p9, "isIncoming"    # Z
    .param p10, "isUnread"    # Z

    .prologue
    .line 357
    const-string v1, "INSERT OR IGNORE INTO Messages( chatPartnerId,deviceLoggedInSteamId,time,utcTime,messageText,isUnread,isIncoming) VALUES (?,?,?,?,?,?,?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 369
    .local v0, "saveMessagesStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 370
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 371
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 372
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p6, p7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 373
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 374
    const/4 v1, 0x6

    if-eqz p10, :cond_0

    const-wide/16 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 375
    const/4 v1, 0x7

    if-eqz p9, :cond_1

    const-wide/16 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 377
    return-object v0

    .line 374
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 375
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clearNotifications()V
    .locals 4

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Notifications"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearPersonaInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Personas"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public declared-synchronized deleteMessages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "loggedInSteamId"    # Ljava/lang/String;
    .param p2, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 131
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 139
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_1
    :try_start_0
    const-string v2, "(SELECT id FROM Messages WHERE deviceLoggedInSteamId = %s AND chatPartnerId = %s ORDER BY utcTime DESC LIMIT 1)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "latestMessageId":Ljava/lang/String;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Messages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s = ? AND %s = ? AND id NOT IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "deviceLoggedInSteamId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "chatPartnerId"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2, p1, p2}, Lcom/valvesoftware/android/steam/community/LocalDb;->getClearMessageTextStatement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 137
    .local v0, "clearMessageTextStatement":Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/LocalDb;->execute(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "clearMessageTextStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v1    # "latestMessageId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getAllUnreadMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "loggedInSteamId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v9, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v10, v9

    .line 64
    .end local v9    # "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    .local v10, "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :goto_0
    monitor-exit p0

    return-object v10

    .line 56
    .end local v10    # "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    .restart local v9    # "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :cond_1
    const/4 v8, 0x0

    .line 59
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Messages"

    const/4 v2, 0x0

    const-string v3, "%s = ? AND %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "deviceLoggedInSteamId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "isUnread"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 60
    invoke-static {v8}, Lcom/valvesoftware/android/steam/community/LocalDb;->convertToMessageList(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 62
    if-eqz v8, :cond_2

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v10, v9

    .line 64
    .restart local v10    # "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    goto :goto_0

    .line 62
    .end local v10    # "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestMessagesFromAllUsers(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "loggedInSteamId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, 0x0

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    .local v1, "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    move-object v2, v1

    .line 83
    .end local v1    # "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v2, "results":Ljava/lang/Object;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_0
    monitor-exit p0

    return-object v2

    .line 73
    .end local v2    # "results":Ljava/lang/Object;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v1    # "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT chatPartnerId, MAX(utcTime) AS utcTime FROM Messages WHERE deviceLoggedInSteamId = ? AND messageText IS NOT NULL GROUP BY chatPartnerId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/LocalDb;->convertToMap(Landroid/database/Cursor;)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 80
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v2, v1

    .line 83
    .restart local v2    # "results":Ljava/lang/Object;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 80
    .end local v2    # "results":Ljava/lang/Object;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .end local v1    # "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "loggedInSteamId"    # Ljava/lang/String;
    .param p2, "chatPartnerSteamId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    .local v10, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v11, v10

    .line 119
    .end local v10    # "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    .local v11, "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :goto_0
    monitor-exit p0

    return-object v11

    .line 104
    .end local v11    # "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    .restart local v10    # "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v11, v10

    .restart local v11    # "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    goto :goto_0

    .line 106
    .end local v11    # "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/LocalDb;->deleteOldMessages(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    const/4 v9, 0x0

    .line 111
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Messages"

    const/4 v2, 0x0

    const-string v3, "%s = ? AND %s = ? AND messageText IS NOT NULL"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "deviceLoggedInSteamId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "chatPartnerId"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    .line 112
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 111
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 114
    invoke-static {v9}, Lcom/valvesoftware/android/steam/community/LocalDb;->convertToMessageList(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 116
    if-eqz v9, :cond_4

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v11, v10

    .line 119
    .restart local v11    # "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    goto :goto_0

    .line 116
    .end local v11    # "umqMessages":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMostRecentDeletionTime(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "loggedInSteamId"    # Ljava/lang/String;
    .param p2, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 188
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 200
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 190
    :cond_1
    const/4 v0, 0x0

    .line 192
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT utcTime FROM Messages WHERE messageText IS NULL AND deviceLoggedInSteamId = ? AND chatPartnerId = ? ORDER BY utcTime DESC LIMIT 1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 202
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 200
    :cond_2
    :try_start_2
    const-string v1, "utcTime"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    .line 202
    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getNotifications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/ChatNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    const/4 v2, 0x0

    .line 315
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    .local v0, "chatNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    :try_start_1
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT fromPersona, notificationMessage FROM Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 318
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 321
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    move-object v1, v0

    .line 324
    .end local v0    # "chatNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    .local v1, "chatNotifications":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    :goto_0
    monitor-exit p0

    return-object v1

    .line 319
    .end local v1    # "chatNotifications":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    .restart local v0    # "chatNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    :cond_1
    :try_start_3
    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/LocalDb;->convertToNotificationsList(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 321
    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v1, v0

    .line 324
    .restart local v1    # "chatNotifications":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    goto :goto_0

    .line 321
    .end local v1    # "chatNotifications":Ljava/lang/Object;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 314
    .end local v0    # "chatNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/ChatNotification;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getPersonaNameForSteamId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    .line 207
    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 209
    :cond_1
    const/4 v0, 0x0

    .line 212
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT personaName FROM Personas WHERE steamId = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 207
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 215
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_3
    const-string v1, "personaName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 217
    if-eqz v0, :cond_0

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getSteamIdForPersonaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "personaName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 222
    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 224
    :cond_1
    const/4 v0, 0x0

    .line 227
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT steamId FROM Personas WHERE personaName = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 222
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 229
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v5, :cond_3

    const-string v1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    if-eqz v0, :cond_0

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 231
    :cond_3
    :try_start_5
    const-string v1, "steamId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    .line 233
    if-eqz v0, :cond_0

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized markMessagesRead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "loggedInSteamId"    # Ljava/lang/String;
    .param p2, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 142
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 147
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1, p1, p2}, Lcom/valvesoftware/android/steam/community/LocalDb;->getMarkMessagesReadStatement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 146
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/LocalDb;->execute(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized replaceStoredFriendsList(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 7
    .param p2, "friendOfSteamId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "personas":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    monitor-enter p0

    :try_start_0
    const-string v2, "INSERT INTO Personas( steamId, personaName, avatarUrl, friendOfSteamId )  VALUES (?,?,?,?);"

    .line 277
    .local v2, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 279
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 281
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 282
    .local v1, "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/model/Persona;->isFriend()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    const/4 v5, 0x1

    iget-object v6, v1, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 284
    const/4 v5, 0x2

    iget-object v6, v1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 285
    const/4 v5, 0x3

    iget-object v6, v1, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 286
    const/4 v5, 0x4

    invoke-virtual {v3, v5, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 287
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 291
    .end local v1    # "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    :catchall_0
    move-exception v4

    :try_start_2
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Sqlite error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 289
    .restart local v2    # "sql":Ljava/lang/String;
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    :try_start_5
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 275
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized saveChatNotification(Lcom/valvesoftware/android/steam/community/ChatNotification;)V
    .locals 4
    .param p1, "chatNotification"    # Lcom/valvesoftware/android/steam/community/ChatNotification;

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    const-string v0, "INSERT INTO Notifications ( fromPersona, notificationMessage )  VALUES (?,?);"

    .line 306
    .local v0, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 307
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    iget-object v2, p1, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 308
    const/4 v2, 0x2

    iget-object v3, p1, Lcom/valvesoftware/android/steam/community/ChatNotification;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 310
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/LocalDb;->executeInsert(Landroid/database/sqlite/SQLiteStatement;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 307
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized saveMessages(Ljava/util/List;Ljava/lang/String;Z)I
    .locals 19
    .param p2, "loggedInSteamId"    # Ljava/lang/String;
    .param p3, "messagesAreUnread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    monitor-enter p0

    const/4 v15, 0x0

    .line 151
    .local v15, "rowsInserted":I
    if-nez p1, :cond_0

    move/from16 v16, v15

    .line 166
    .end local v15    # "rowsInserted":I
    .local v16, "rowsInserted":I
    :goto_0
    monitor-exit p0

    return v16

    .line 152
    .end local v16    # "rowsInserted":I
    .restart local v15    # "rowsInserted":I
    :cond_0
    if-nez p2, :cond_1

    move/from16 v16, v15

    .end local v15    # "rowsInserted":I
    .restart local v16    # "rowsInserted":I
    goto :goto_0

    .line 156
    .end local v16    # "rowsInserted":I
    .restart local v15    # "rowsInserted":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 158
    .local v13, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v13, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iget-wide v8, v13, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    iget-object v10, v13, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    iget-boolean v11, v13, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isIncoming:Z

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Lcom/valvesoftware/android/steam/community/LocalDb;->getSaveMessagesStatement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZ)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v17

    .line 159
    .local v17, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-static/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/LocalDb;->executeInsert(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v14

    .line 160
    .local v14, "result":Z
    if-eqz v14, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 162
    .end local v13    # "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    .end local v14    # "result":Z
    .end local v17    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v16, v15

    .line 166
    .end local v15    # "rowsInserted":I
    .restart local v16    # "rowsInserted":I
    goto :goto_0

    .line 164
    .end local v16    # "rowsInserted":I
    .restart local v15    # "rowsInserted":I
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized saveSentMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "utcTimestamp"    # J
    .param p4, "loggedInSteamId"    # Ljava/lang/String;
    .param p5, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 123
    monitor-enter p0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 127
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LocalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-wide v6, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/valvesoftware/android/steam/community/LocalDb;->getSaveMessagesStatement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZ)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 126
    .local v11, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v11}, Lcom/valvesoftware/android/steam/community/LocalDb;->executeInsert(Landroid/database/sqlite/SQLiteStatement;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    .end local v11    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
