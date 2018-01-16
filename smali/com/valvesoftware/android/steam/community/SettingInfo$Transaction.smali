.class public Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# instance fields
.field private m_bCookiesMarkedForSync:Z

.field private m_editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_editor:Landroid/content/SharedPreferences$Editor;

    .line 132
    iput-boolean v4, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_bCookiesMarkedForSync:Z

    .line 137
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "steamID":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "steam.settings."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_editor:Landroid/content/SharedPreferences$Editor;

    .line 143
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_bCookiesMarkedForSync:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->syncAllCookies()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_bCookiesMarkedForSync:Z

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    :cond_1
    return-void
.end method

.method public markCookiesForSync()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_bCookiesMarkedForSync:Z

    .line 175
    return-void
.end method

.method public setValue(Lcom/valvesoftware/android/steam/community/SettingInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "setting"    # Lcom/valvesoftware/android/steam/community/SettingInfo;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->m_editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    :cond_0
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_pUpdateListener:Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_pUpdateListener:Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;

    invoke-interface {v0, p1, p2, p0}, Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;->OnSettingInfoValueUpdate(Lcom/valvesoftware/android/steam/community/SettingInfo;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;)V

    .line 156
    :cond_1
    return-void
.end method
