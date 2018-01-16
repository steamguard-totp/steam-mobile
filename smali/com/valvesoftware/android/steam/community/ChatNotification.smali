.class public Lcom/valvesoftware/android/steam/community/ChatNotification;
.super Ljava/lang/Object;
.source "ChatNotification.java"


# instance fields
.field from:Ljava/lang/String;

.field message:Ljava/lang/String;

.field timeProcessed:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method matches(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 9
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/ChatNotification;->from:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/ChatNotification;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/ChatNotification;->message:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/valvesoftware/android/steam/community/ChatNotification;->timeProcessed:J

    sub-long v0, p3, v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
