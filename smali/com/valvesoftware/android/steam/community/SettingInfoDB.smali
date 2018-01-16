.class public Lcom/valvesoftware/android/steam/community/SettingInfoDB;
.super Landroid/content/BroadcastReceiver;
.source "SettingInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;
    }
.end annotation


# static fields
.field public static final URL_SETTINGS_ONLINE:Ljava/lang/String;

.field public static ringToneSelectorRequestCode:I


# instance fields
.field private final m_className:Ljava/lang/String;

.field public m_settingChatsAlertLinks:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field public m_settingDOB:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field public m_settingRing:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field public m_settingSound:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field public m_settingSslUntrustedPrompt:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field public m_settingVibrate:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field private m_settingsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public m_startScreen:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field public m_usePushInBackground:Lcom/valvesoftware/android/steam/community/SettingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const/16 v0, 0x320

    sput v0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->ringToneSelectorRequestCode:I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "steammobile://opencategoryurl?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobilesettings/GetManifest/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->URL_SETTINGS_ONLINE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_className:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_className:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 91
    .local v1, "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f080104

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 92
    const v2, 0x7f080105

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid_detailed:I

    .line 93
    const-string v2, "chats_links_nonsteam"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 94
    const-string v2, "1"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 95
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->CHECK:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 96
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 97
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingChatsAlertLinks:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 98
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 105
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f08012a

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 106
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 107
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 110
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f08012f

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 112
    const/4 v2, 0x7

    new-array v0, v2, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .line 113
    .local v0, "radios":[Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v6

    .line 114
    aget-object v2, v0, v6

    sget-object v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Friends:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 115
    aget-object v2, v0, v6

    const v3, 0x7f080086

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 116
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v5

    .line 117
    aget-object v2, v0, v5

    sget-object v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Groups:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 118
    aget-object v2, v0, v5

    const v3, 0x7f08008b

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 119
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v7

    .line 120
    aget-object v2, v0, v7

    sget-object v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Catalog:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 121
    aget-object v2, v0, v7

    const v3, 0x7f080072

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 122
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v8

    .line 123
    aget-object v2, v0, v8

    sget-object v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->SteamNews:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 124
    aget-object v2, v0, v8

    const v3, 0x7f0800bf

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 125
    const/4 v2, 0x4

    new-instance v3, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v3}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v3, v0, v2

    .line 126
    const/4 v2, 0x4

    aget-object v2, v0, v2

    sget-object v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->SteamGuard:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 127
    const/4 v2, 0x4

    aget-object v2, v0, v2

    const v3, 0x7f0800ba

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 128
    const/4 v2, 0x5

    new-instance v3, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v3}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v3, v0, v2

    .line 129
    const/4 v2, 0x5

    aget-object v2, v0, v2

    sget-object v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->FriendActivity:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 130
    const/4 v2, 0x5

    aget-object v2, v0, v2

    const v3, 0x7f080082

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 131
    const/4 v2, 0x6

    new-instance v3, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v3}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v3, v0, v2

    .line 132
    const/4 v2, 0x6

    aget-object v2, v0, v2

    sget-object v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Library:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 133
    const/4 v2, 0x6

    aget-object v2, v0, v2

    const v3, 0x7f080093

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 134
    iput-object v0, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    .line 137
    const-string v2, "start_screen"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 138
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->Friends:Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;

    iget v2, v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB$StartScreen;->value:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 139
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RADIOSELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 140
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 141
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_startScreen:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 142
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 145
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f08012b

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 146
    const v2, 0x7f08012c

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid_detailed:I

    .line 147
    const-string v2, "personal_dob"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 148
    const-string v2, ""

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 149
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->DATE:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 150
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 151
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$1;-><init>(Lcom/valvesoftware/android/steam/community/SettingInfoDB;)V

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_pUpdateListener:Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;

    .line 157
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingDOB:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 158
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 161
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f08011f

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 162
    const-string v2, "notifications_ringtone"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 163
    const-string v2, "android.resource://com.valvesoftware.android.steam.community/raw/m"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 164
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RINGTONESELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 165
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 166
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingRing:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 167
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 170
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f080122

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 172
    new-array v0, v8, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .line 173
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v6

    .line 174
    aget-object v2, v0, v6

    iput v9, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 175
    aget-object v2, v0, v6

    const v3, 0x7f080123

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 176
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v5

    .line 177
    aget-object v2, v0, v5

    iput v6, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 178
    aget-object v2, v0, v5

    const v3, 0x7f080124

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 179
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v7

    .line 180
    aget-object v2, v0, v7

    iput v5, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 181
    aget-object v2, v0, v7

    const v3, 0x7f080125

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 182
    iput-object v0, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    .line 184
    const-string v2, "notifications_sound"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 185
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 186
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RADIOSELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 187
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 188
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingSound:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 189
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 192
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f080126

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 194
    new-array v0, v8, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .line 195
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v6

    .line 196
    aget-object v2, v0, v6

    iput v9, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 197
    aget-object v2, v0, v6

    const v3, 0x7f080127

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 198
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v5

    .line 199
    aget-object v2, v0, v5

    iput v6, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 200
    aget-object v2, v0, v5

    const v3, 0x7f080128

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 201
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v7

    .line 202
    aget-object v2, v0, v7

    iput v5, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 203
    aget-object v2, v0, v7

    const v3, 0x7f080129

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 204
    iput-object v0, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    .line 206
    const-string v2, "notifications_vibrate"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 207
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 208
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RADIOSELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 209
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 210
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingVibrate:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 211
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 214
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f080119

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 216
    new-array v0, v7, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .line 218
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v6

    .line 219
    aget-object v2, v0, v6

    iput v5, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 220
    aget-object v2, v0, v6

    const v3, 0x7f08011a

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 222
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v5

    .line 223
    aget-object v2, v0, v5

    iput v6, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 224
    aget-object v2, v0, v5

    const v3, 0x7f08011b

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 225
    iput-object v0, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    .line 232
    const-string v2, "notifications_im2"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 233
    const-string v2, "1"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 234
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RADIOSELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 235
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 236
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB$2;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/SettingInfoDB$2;-><init>(Lcom/valvesoftware/android/steam/community/SettingInfoDB;)V

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_pUpdateListener:Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;

    .line 242
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_usePushInBackground:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 243
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_usePushInBackground:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 249
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f08012d

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 250
    const v2, 0x7f08012e

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid_detailed:I

    .line 251
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->URL_SETTINGS_ONLINE:Ljava/lang/String;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 252
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->URI:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 253
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->VALID_ACCOUNT:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 254
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 261
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f08013d

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 263
    new-array v0, v8, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .line 264
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v6

    .line 265
    aget-object v2, v0, v6

    iput v5, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 266
    aget-object v2, v0, v6

    const v3, 0x7f08013e

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 267
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v5

    .line 268
    aget-object v2, v0, v5

    iput v6, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 269
    aget-object v2, v0, v5

    const v3, 0x7f080140

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 270
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    invoke-direct {v2}, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;-><init>()V

    aput-object v2, v0, v7

    .line 271
    aget-object v2, v0, v7

    iput v9, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    .line 272
    aget-object v2, v0, v7

    const v3, 0x7f08013f

    iput v3, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    .line 273
    iput-object v0, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    .line 275
    const-string v2, "ssl_untrusted_prompt"

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_key:Ljava/lang/String;

    .line 276
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 277
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->RADIOSELECTOR:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 278
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->CODE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    :goto_0
    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 279
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingSslUntrustedPrompt:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 280
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 286
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f0800b3

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 287
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->USER:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 288
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .end local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/SettingInfo;-><init>()V

    .line 291
    .restart local v1    # "setting":Lcom/valvesoftware/android/steam/community/SettingInfo;
    const v2, 0x7f0800b5

    iput v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    .line 293
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->MARKET:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    .line 294
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->USER:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    iput-object v2, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    .line 295
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    return-void

    .line 278
    :cond_0
    sget-object v2, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->NONE:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    goto :goto_0
.end method


# virtual methods
.method public GetSettingsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SettingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 304
    return-void
.end method

.method public usePushInBackground()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_usePushInBackground:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getIntegerValue(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v0, :cond_0

    .line 310
    :goto_0
    return v0

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    goto :goto_0
.end method
