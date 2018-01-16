.class public Lcom/valvesoftware/android/steam/community/DebugUtilRecord;
.super Ljava/lang/Object;
.source "DebugUtilRecord.java"


# instance fields
.field public id:J

.field public key:Ljava/lang/String;

.field public parent:Lcom/valvesoftware/android/steam/community/DebugUtilRecord;

.field public threadid:J

.field public timestamp:Ljava/util/Calendar;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/DebugUtilRecord;->timestamp:Ljava/util/Calendar;

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/DebugUtilRecord;->threadid:J

    .line 17
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/valvesoftware/android/steam/community/DebugUtilRecord;->id:J

    return-wide v0
.end method
