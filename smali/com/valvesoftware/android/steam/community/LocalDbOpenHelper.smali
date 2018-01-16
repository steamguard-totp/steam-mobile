.class public Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalDbOpenHelper.java"


# static fields
.field private static instance:Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v0, "SteamLocal.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;->instance:Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;->instance:Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;

    .line 53
    :cond_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;->instance:Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    const-string v1, "CREATE TABLE Messages ( id integer primary key autoincrement, chatPartnerId text not null, deviceLoggedInSteamId text not null, time integer not null, utcTime integer not null, messageText text, isUnread integer not null, isIncoming integer not null,  UNIQUE (utcTime,messageText) )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v1, "CREATE INDEX idxMessageFromSteamId ON Messages ( chatPartnerId,deviceLoggedInSteamId )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v1, "CREATE INDEX idxMessageToSteamIdUnread ON Messages ( chatPartnerId,isUnread )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v1, "CREATE TABLE Personas( steamId text not null, personaName text, avatarUrl text, friendOfSteamId text )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v1, "CREATE INDEX idxPersonaSteamId ON Personas ( steamId )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "CREATE TABLE Notifications( fromPersona text, notificationMessage text)"

    .line 101
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 108
    const-string v0, "SteamLocal.db"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database upgrade dropping tables: old ver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new ver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "DROP TABLE if exists Messages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "DROP TABLE if exists Personas"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/LocalDbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    return-void
.end method
