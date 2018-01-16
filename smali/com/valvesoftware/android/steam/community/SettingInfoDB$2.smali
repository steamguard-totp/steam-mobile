.class Lcom/valvesoftware/android/steam/community/SettingInfoDB$2;
.super Ljava/lang/Object;
.source "SettingInfoDB.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/SettingInfo$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/SettingInfoDB;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/SettingInfoDB;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/SettingInfoDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB$2;->this$0:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSettingInfoValueUpdate(Lcom/valvesoftware/android/steam/community/SettingInfo;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;)V
    .locals 1
    .param p1, "si"    # Lcom/valvesoftware/android/steam/community/SettingInfo;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tr"    # Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;

    .prologue
    .line 238
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v0

    .line 239
    .local v0, "umqCommunicator":Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setServerPushStateBasedOnUserPreference()V

    .line 240
    return-void
.end method
