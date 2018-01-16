package com.valvesoftware.android.steam.community;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class LocalDbOpenHelper extends SQLiteOpenHelper {
    private static LocalDbOpenHelper instance;

    private LocalDbOpenHelper(Context context) {
        super(context, "SteamLocal.db", null, 11);
    }

    public static LocalDbOpenHelper getInstance(Context context) {
        if (instance == null) {
            instance = new LocalDbOpenHelper(context.getApplicationContext());
        }
        return instance;
    }

    public void onCreate(SQLiteDatabase database) {
        database.execSQL("CREATE TABLE Messages ( id integer primary key autoincrement, chatPartnerId text not null, deviceLoggedInSteamId text not null, time integer not null, utcTime integer not null, messageText text, isUnread integer not null, isIncoming integer not null,  UNIQUE (utcTime,messageText) )");
        database.execSQL("CREATE INDEX idxMessageFromSteamId ON Messages ( chatPartnerId,deviceLoggedInSteamId )");
        database.execSQL("CREATE INDEX idxMessageToSteamIdUnread ON Messages ( chatPartnerId,isUnread )");
        database.execSQL("CREATE TABLE Personas( steamId text not null, personaName text, avatarUrl text, friendOfSteamId text )");
        database.execSQL("CREATE INDEX idxPersonaSteamId ON Personas ( steamId )");
        database.execSQL("CREATE TABLE Notifications( fromPersona text, notificationMessage text)");
    }

    public void onUpgrade(SQLiteDatabase database, int oldVersion, int newVersion) {
        Log.w("SteamLocal.db", "Database upgrade dropping tables: old ver = " + oldVersion + ", new ver = " + newVersion);
        database.execSQL("DROP TABLE if exists Messages");
        database.execSQL("DROP TABLE if exists Personas");
        onCreate(database);
    }
}
