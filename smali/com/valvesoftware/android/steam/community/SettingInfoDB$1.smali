.class Lcom/valvesoftware/android/steam/community/SettingInfoDB$1;
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
    .line 151
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SettingInfoDB$1;->this$0:Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSettingInfoValueUpdate(Lcom/valvesoftware/android/steam/community/SettingInfo;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;)V
    .locals 2
    .param p1, "si"    # Lcom/valvesoftware/android/steam/community/SettingInfo;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tr"    # Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;

    .prologue
    .line 153
    const-string v0, "dob"

    invoke-static {p2}, Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;->makeUnixTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->setCookie2(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Lcom/valvesoftware/android/steam/community/SettingInfo$Transaction;->markCookiesForSync()V

    .line 155
    return-void
.end method
