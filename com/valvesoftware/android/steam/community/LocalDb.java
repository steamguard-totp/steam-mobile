package com.valvesoftware.android.steam.community;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.util.Log;
import com.valvesoftware.android.steam.community.model.Persona;
import com.valvesoftware.android.steam.community.model.UmqMessage;
import com.valvesoftware.android.steam.community.model.UmqMessageType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

public class LocalDb {
    private SQLiteDatabase db = this.dbHelper.getWritableDatabase();
    private LocalDbOpenHelper dbHelper;

    public LocalDb(Context context) {
        this.dbHelper = LocalDbOpenHelper.getInstance(context);
    }

    public synchronized List<UmqMessage> getAllUnreadMessages(String loggedInSteamId) {
        List<UmqMessage> umqMessages;
        List<UmqMessage> umqMessages2 = new ArrayList();
        if (loggedInSteamId == null || loggedInSteamId.length() == 0) {
            umqMessages = umqMessages2;
        } else {
            Cursor cursor = null;
            try {
                cursor = this.db.query("Messages", null, String.format("%s = ? AND %s = ?", new Object[]{"deviceLoggedInSteamId", "isUnread"}), new String[]{loggedInSteamId, "1"}, null, null, null);
                umqMessages2 = convertToMessageList(cursor);
                if (cursor != null) {
                    cursor.close();
                }
                umqMessages = umqMessages2;
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return umqMessages;
    }

    public synchronized HashMap<String, Long> getLatestMessagesFromAllUsers(String loggedInSteamId) {
        HashMap<String, Long> results;
        Cursor cursor = null;
        HashMap<String, Long> results2 = new HashMap();
        if (loggedInSteamId == null) {
            results = results2;
        } else {
            try {
                cursor = this.db.rawQuery("SELECT chatPartnerId, MAX(utcTime) AS utcTime FROM Messages WHERE deviceLoggedInSteamId = ? AND messageText IS NOT NULL GROUP BY chatPartnerId", new String[]{loggedInSteamId});
                results2 = convertToMap(cursor);
                if (cursor != null) {
                    cursor.close();
                }
                results = results2;
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return results;
    }

    private HashMap<String, Long> convertToMap(Cursor cursor) {
        HashMap<String, Long> latestMessages = new HashMap();
        if (cursor == null || !cursor.moveToFirst()) {
            return latestMessages;
        }
        do {
            latestMessages.put(cursor.getString(cursor.getColumnIndex("chatPartnerId")), Long.valueOf(cursor.getLong(cursor.getColumnIndex("utcTime"))));
        } while (cursor.moveToNext());
        return latestMessages;
    }

    public synchronized List<UmqMessage> getMessages(String loggedInSteamId, String chatPartnerSteamId) {
        List<UmqMessage> umqMessages;
        List<UmqMessage> umqMessages2 = new ArrayList();
        if (loggedInSteamId == null || chatPartnerSteamId == null) {
            umqMessages = umqMessages2;
        } else if (loggedInSteamId.length() == 0 || chatPartnerSteamId.length() == 0) {
            umqMessages = umqMessages2;
        } else {
            deleteOldMessages(loggedInSteamId, chatPartnerSteamId);
            Cursor cursor = null;
            try {
                cursor = this.db.query("Messages", null, String.format("%s = ? AND %s = ? AND messageText IS NOT NULL", new Object[]{"deviceLoggedInSteamId", "chatPartnerId"}), new String[]{loggedInSteamId, chatPartnerSteamId}, null, null, null, String.valueOf(200));
                umqMessages2 = convertToMessageList(cursor);
                if (cursor != null) {
                    cursor.close();
                }
                umqMessages = umqMessages2;
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return umqMessages;
    }

    public synchronized void saveSentMessage(String message, long utcTimestamp, String loggedInSteamId, String chatPartnerSteamId) {
        if (!(message == null || utcTimestamp == 0 || chatPartnerSteamId == null || loggedInSteamId == null)) {
            executeInsert(getSaveMessagesStatement(this.db, loggedInSteamId, chatPartnerSteamId, System.currentTimeMillis(), utcTimestamp, message, false, false));
        }
    }

    public synchronized void deleteMessages(String loggedInSteamId, String chatPartnerSteamId) {
        if (!(loggedInSteamId == null || chatPartnerSteamId == null)) {
            this.db.delete("Messages", String.format("%s = ? AND %s = ? AND id NOT IN " + String.format("(SELECT id FROM Messages WHERE deviceLoggedInSteamId = %s AND chatPartnerId = %s ORDER BY utcTime DESC LIMIT 1)", new Object[]{loggedInSteamId, chatPartnerSteamId}), new Object[]{"deviceLoggedInSteamId", "chatPartnerId"}), new String[]{loggedInSteamId, chatPartnerSteamId});
            execute(getClearMessageTextStatement(this.db, loggedInSteamId, chatPartnerSteamId));
        }
    }

    public synchronized void markMessagesRead(String loggedInSteamId, String chatPartnerSteamId) {
        if (!(loggedInSteamId == null || chatPartnerSteamId == null)) {
            if (!(loggedInSteamId.length() == 0 || chatPartnerSteamId.length() == 0)) {
                execute(getMarkMessagesReadStatement(this.db, loggedInSteamId, chatPartnerSteamId));
            }
        }
    }

    public synchronized int saveMessages(List<UmqMessage> newMessages, String loggedInSteamId, boolean messagesAreUnread) {
        int rowsInserted;
        int rowsInserted2 = 0;
        if (newMessages == null) {
            rowsInserted = 0;
        } else if (loggedInSteamId == null) {
            rowsInserted = 0;
        } else {
            try {
                this.db.beginTransaction();
                for (UmqMessage message : newMessages) {
                    if (executeInsert(getSaveMessagesStatement(this.db, loggedInSteamId, message.chatPartnerSteamId, 0, message.utcTimeStamp, message.text, message.isIncoming, messagesAreUnread))) {
                        rowsInserted2++;
                    }
                }
                this.db.setTransactionSuccessful();
                this.db.endTransaction();
                rowsInserted = rowsInserted2;
            } catch (Throwable th) {
                this.db.endTransaction();
            }
        }
        return rowsInserted;
    }

    public synchronized long getMostRecentDeletionTime(String loggedInSteamId, String chatPartnerSteamId) {
        long j = 0;
        synchronized (this) {
            if (!(loggedInSteamId == null || chatPartnerSteamId == null)) {
                Cursor cursor = null;
                try {
                    cursor = this.db.rawQuery("SELECT utcTime FROM Messages WHERE messageText IS NULL AND deviceLoggedInSteamId = ? AND chatPartnerId = ? ORDER BY utcTime DESC LIMIT 1", new String[]{loggedInSteamId, chatPartnerSteamId});
                    if (cursor.moveToFirst()) {
                        j = cursor.getLong(cursor.getColumnIndex("utcTime"));
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        }
        return j;
    }

    public synchronized String getPersonaNameForSteamId(String steamId) {
        String str;
        if (steamId == null) {
            str = "";
        } else {
            Cursor cursor = null;
            try {
                cursor = this.db.rawQuery("SELECT personaName FROM Personas WHERE steamId = ?", new String[]{steamId});
                if (cursor.moveToFirst()) {
                    str = cursor.getString(cursor.getColumnIndex("personaName"));
                    if (cursor != null) {
                        cursor.close();
                    }
                } else {
                    str = "";
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return str;
    }

    public synchronized String getSteamIdForPersonaName(String personaName) {
        String str;
        if (personaName == null) {
            str = "";
        } else {
            Cursor cursor = null;
            try {
                cursor = this.db.rawQuery("SELECT steamId FROM Personas WHERE personaName = ?", new String[]{personaName});
                if (!cursor.moveToFirst()) {
                    str = "";
                    if (cursor != null) {
                        cursor.close();
                    }
                } else if (cursor.getCount() > 1) {
                    str = "";
                    if (cursor != null) {
                        cursor.close();
                    }
                } else {
                    str = cursor.getString(cursor.getColumnIndex("steamId"));
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return str;
    }

    public void clearPersonaInfo() {
        this.db.delete("Personas", null, null);
    }

    public synchronized void replaceStoredFriendsList(Collection<Persona> personas, String friendOfSteamId) {
        try {
            SQLiteStatement statement = this.db.compileStatement("INSERT INTO Personas( steamId, personaName, avatarUrl, friendOfSteamId )  VALUES (?,?,?,?);");
            this.db.beginTransaction();
            for (Persona p : personas) {
                if (p.isFriend()) {
                    statement.bindString(1, p.steamId);
                    statement.bindString(2, p.personaName);
                    statement.bindString(3, p.mediumAvatarUrl);
                    statement.bindString(4, friendOfSteamId);
                    statement.execute();
                }
            }
            this.db.setTransactionSuccessful();
            this.db.endTransaction();
        } catch (Exception ex) {
            Log.e("Sqlite error", ex.toString());
        } catch (Throwable th) {
            this.db.endTransaction();
        }
        return;
    }

    public synchronized void clearNotifications() {
        this.db.delete("Notifications", null, null);
    }

    public synchronized void saveChatNotification(ChatNotification chatNotification) {
        SQLiteStatement statement = this.db.compileStatement("INSERT INTO Notifications ( fromPersona, notificationMessage )  VALUES (?,?);");
        statement.bindString(1, chatNotification.from != null ? chatNotification.from : "");
        statement.bindString(2, chatNotification.message);
        executeInsert(statement);
    }

    public synchronized List<ChatNotification> getNotifications() {
        List<ChatNotification> chatNotifications;
        Cursor cursor = null;
        List<ChatNotification> chatNotifications2 = new ArrayList();
        try {
            cursor = this.db.rawQuery("SELECT fromPersona, notificationMessage FROM Notifications", null);
            if (cursor.moveToFirst()) {
                chatNotifications2 = convertToNotificationsList(cursor);
                if (cursor != null) {
                    cursor.close();
                }
                chatNotifications = chatNotifications2;
            } else {
                if (cursor != null) {
                    cursor.close();
                }
                chatNotifications = chatNotifications2;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return chatNotifications;
    }

    private List<ChatNotification> convertToNotificationsList(Cursor cursor) {
        List<ChatNotification> chatNotifications = new ArrayList();
        if (cursor == null || !cursor.moveToFirst()) {
            return chatNotifications;
        }
        do {
            ChatNotification m = new ChatNotification();
            m.from = cursor.getString(cursor.getColumnIndex("fromPersona"));
            m.message = cursor.getString(cursor.getColumnIndex("notificationMessage"));
            chatNotifications.add(m);
        } while (cursor.moveToNext());
        return chatNotifications;
    }

    private void deleteOldMessages(String loggedInSteamId, String chatPartnerSteamId) {
        if (loggedInSteamId != null && chatPartnerSteamId != null) {
            try {
                this.db.delete("Messages", String.format("%s = ? AND %s = ? AND id NOT IN " + String.format("(SELECT id FROM Messages WHERE deviceLoggedInSteamId = %s AND chatPartnerId = '%s' ORDER BY utcTime DESC LIMIT " + String.valueOf(200) + ")", new Object[]{loggedInSteamId, chatPartnerSteamId}), new Object[]{"deviceLoggedInSteamId", "chatPartnerId"}), new String[]{loggedInSteamId, chatPartnerSteamId});
            } catch (Exception ex) {
                Log.e("err", ex.toString());
            }
        }
    }

    private SQLiteStatement getSaveMessagesStatement(SQLiteDatabase db, String loggedInUserSteamId, String chatPartnerSteamId, long time, long utcTime, String messageText, boolean isIncoming, boolean isUnread) {
        SQLiteStatement saveMessagesStatement = db.compileStatement("INSERT OR IGNORE INTO Messages( chatPartnerId,deviceLoggedInSteamId,time,utcTime,messageText,isUnread,isIncoming) VALUES (?,?,?,?,?,?,?)");
        saveMessagesStatement.bindString(1, chatPartnerSteamId);
        saveMessagesStatement.bindString(2, loggedInUserSteamId);
        saveMessagesStatement.bindLong(3, time);
        saveMessagesStatement.bindLong(4, utcTime);
        saveMessagesStatement.bindString(5, messageText);
        saveMessagesStatement.bindLong(6, isUnread ? 1 : 0);
        saveMessagesStatement.bindLong(7, isIncoming ? 1 : 0);
        return saveMessagesStatement;
    }

    private SQLiteStatement getMarkMessagesReadStatement(SQLiteDatabase db, String loggedInSteamId, String chatPartnerSteamId) {
        SQLiteStatement markMessagesReadStatement = db.compileStatement("UPDATE Messages SET isUnread = 0 WHERE deviceLoggedInSteamId = ? AND chatPartnerId = ? ");
        markMessagesReadStatement.bindString(1, loggedInSteamId);
        markMessagesReadStatement.bindString(2, chatPartnerSteamId);
        return markMessagesReadStatement;
    }

    private SQLiteStatement getClearMessageTextStatement(SQLiteDatabase db, String loggedInSteamId, String chatPartnerSteamId) {
        SQLiteStatement clearMessageTextStatement = db.compileStatement("UPDATE Messages SET messageText = NULL WHERE deviceLoggedInSteamId = ? AND chatPartnerId = ? ");
        clearMessageTextStatement.bindString(1, loggedInSteamId);
        clearMessageTextStatement.bindString(2, chatPartnerSteamId);
        return clearMessageTextStatement;
    }

    private static List<UmqMessage> convertToMessageList(Cursor cursor) {
        List<UmqMessage> umqMessages = new ArrayList();
        if (cursor == null || !cursor.moveToFirst()) {
            return umqMessages;
        }
        do {
            UmqMessage m = new UmqMessage();
            m.type = UmqMessageType.MESSAGE_TEXT;
            m.chatPartnerSteamId = cursor.getString(cursor.getColumnIndex("chatPartnerId"));
            m.text = cursor.getString(cursor.getColumnIndex("messageText"));
            m.utcTimeStamp = cursor.getLong(cursor.getColumnIndex("utcTime"));
            m.isIncoming = cursor.getLong(cursor.getColumnIndex("isIncoming")) == 1;
            umqMessages.add(m);
        } while (cursor.moveToNext());
        return umqMessages;
    }

    private static void execute(SQLiteStatement statement) {
        try {
            statement.execute();
        } finally {
            if (statement != null) {
                statement.close();
            }
        }
    }

    private static boolean executeInsert(SQLiteStatement statement) {
        long lastRowId = -1;
        try {
            lastRowId = statement.executeInsert();
            if (statement != null) {
                statement.close();
            }
        } catch (Exception e) {
            if (statement != null) {
                statement.close();
            }
        } catch (Throwable th) {
            if (statement != null) {
                statement.close();
            }
        }
        return lastRowId != -1;
    }
}
