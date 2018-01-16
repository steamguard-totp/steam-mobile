.class Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private maxTimeForSortingPurposes:J

.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;)V
    .locals 2
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;->maxTimeForSortingPurposes:J

    return-void
.end method


# virtual methods
.method public compare(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Lcom/valvesoftware/android/steam/community/model/UmqMessage;)I
    .locals 8
    .param p1, "lhs"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    .param p2, "rhs"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .prologue
    const-wide/16 v6, 0x0

    .line 48
    iget-wide v4, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;->maxTimeForSortingPurposes:J

    .line 49
    .local v0, "lhsTimeStamp":J
    :goto_0
    iget-wide v4, p2, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-wide v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;->maxTimeForSortingPurposes:J

    .line 50
    .local v2, "rhsTimeStamp":J
    :goto_1
    sub-long v4, v0, v2

    long-to-int v4, v4

    return v4

    .line 48
    .end local v0    # "lhsTimeStamp":J
    .end local v2    # "rhsTimeStamp":J
    :cond_0
    iget-wide v0, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    goto :goto_0

    .line 49
    .restart local v0    # "lhsTimeStamp":J
    :cond_1
    iget-wide v2, p2, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    check-cast p2, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-virtual {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;->compare(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Lcom/valvesoftware/android/steam/community/model/UmqMessage;)I

    move-result v0

    return v0
.end method
