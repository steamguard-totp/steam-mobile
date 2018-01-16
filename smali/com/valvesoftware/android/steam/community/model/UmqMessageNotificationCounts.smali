.class public Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;
.super Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;
.source "UmqMessageNotificationCounts.java"


# instance fields
.field public final notificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/model/UmqMessageBase;-><init>()V

    .line 5
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;->notificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    return-void
.end method
