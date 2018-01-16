.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->switchToPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->usePushInBackground()Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    new-instance v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;-><init>()V

    .line 88
    .local v0, "gcmRegistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->getStoredRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "regId":Ljava/lang/String;
    if-nez v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    const/4 v3, 0x1

    new-instance v4, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;

    invoke-direct {v4, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;)V

    invoke-static {v2, v3, v4}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$400(Lcom/valvesoftware/android/steam/community/UmqCommunicator;ZLcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    goto :goto_0
.end method
