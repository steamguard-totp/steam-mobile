.class public interface abstract Lcom/valvesoftware/android/steam/community/ChatStateListener;
.super Ljava/lang/Object;
.source "ChatStateListener.java"


# virtual methods
.method public abstract isTypingMessageReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listenerWillHandleAllVisualChatNotifications()Z
.end method

.method public abstract listenerWillHandleVisualChatNotificationForSteamId(Ljava/lang/String;)Z
.end method

.method public abstract messageSendFailed(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V
.end method

.method public abstract messageSent(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V
.end method

.method public abstract newMessagesSaved(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract personaStateChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract relationshipStateChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
