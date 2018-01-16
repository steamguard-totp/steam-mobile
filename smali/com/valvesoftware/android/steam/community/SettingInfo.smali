.class public Lcom/valvesoftware/android/steam/community/SettingInfo;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/SettingInfo$CustomDatePickerDialog;,
        Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;,
        Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;,
        Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;,
        Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;,
        Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;,
        Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;
    }
.end annotation


# instance fields
.field public m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

.field public m_defaultValue:Ljava/lang/String;

.field public m_extraData:Ljava/lang/Object;

.field public m_key:Ljava/lang/String;

.field public m_pUpdateListener:Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;

.field public m_resid:I

.field public m_resid_detailed:I

.field public m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 51
    iput v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid_detailed:I

    .line 52
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->SECTION:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 54
    sget-object v0, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->NONE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 55
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    .line 57
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_pUpdateListener:Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;

    return-void
.end method

.method public static findRadioSelectorItemByValue(I[Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    .locals 4
    .param p0, "value"    # I
    .param p1, "radios"    # [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .prologue
    .line 232
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 233
    .local v0, "radio":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    iget v3, v0, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    if-ne v3, p0, :cond_0

    .line 236
    .end local v0    # "radio":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :goto_1
    return-object v0

    .line 232
    .restart local v0    # "radio":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "radio":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getBooleanValue(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntegerValue(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRadioSelectorItemValue(Landroid/content/Context;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, "radios":[Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :try_start_0
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    check-cast v5, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-object v0, v5

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 93
    :goto_0
    if-nez v2, :cond_1

    move-object v3, v6

    .line 118
    :cond_0
    :goto_1
    return-object v3

    .line 96
    :cond_1
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "val":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    .local v1, "iv":I
    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo;->findRadioSelectorItemByValue(I[Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 100
    .local v3, "res":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    if-nez v3, :cond_0

    .line 106
    .end local v1    # "iv":I
    .end local v3    # "res":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 107
    .restart local v1    # "iv":I
    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo;->findRadioSelectorItemByValue(I[Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 108
    .restart local v3    # "res":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    if-nez v3, :cond_0

    .line 114
    .end local v1    # "iv":I
    .end local v3    # "res":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :goto_3
    const/4 v5, 0x0

    :try_start_3
    aget-object v3, v2, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v5

    move-object v3, v6

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_2

    .end local v4    # "val":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public getValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "steamID":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 68
    :goto_0
    return-object v2

    .line 67
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "steam.settings."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setValueAndCommit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;

    invoke-direct {v0, p1}, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "tr":Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;
    invoke-virtual {v0, p0, p2}, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->setValue(Lcom/valvesoftware/android/steam/community/SettingInfo;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->commit()V

    .line 126
    return-void
.end method
