.class Lcom/valvesoftware/android/steam/community/TimeCorrector$1;
.super Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;
.source "TimeCorrector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/TimeCorrector;->continueSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/TimeCorrector;)V
    .locals 1
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/TimeCorrector;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$1;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;-><init>(Lcom/valvesoftware/android/steam/community/TimeCorrector;Lcom/valvesoftware/android/steam/community/TimeCorrector$1;)V

    return-void
.end method


# virtual methods
.method public handleResult(ZJJJ)V
    .locals 8
    .param p1, "bSuccess"    # Z
    .param p2, "requestStartTime"    # J
    .param p4, "serverTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 247
    if-eqz p1, :cond_6

    .line 252
    const/4 v0, 0x1

    .line 253
    .local v0, "bUseServerTime":Z
    sub-long v2, p4, p6

    .line 256
    .local v2, "delta":J
    cmp-long v1, p6, p2

    if-gez v1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 261
    :cond_0
    const-wide/32 v4, 0x5485d8e5

    cmp-long v1, p4, v4

    if-ltz v1, :cond_1

    const-wide v4, 0xf664e780L

    cmp-long v1, p4, v4

    if-lez v1, :cond_2

    .line 262
    :cond_1
    const/4 v0, 0x0

    .line 266
    :cond_2
    sub-long v4, p6, p2

    const-wide/16 v6, 0xa

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 267
    const/4 v0, 0x0

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$1;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->access$100(Lcom/valvesoftware/android/steam/community/TimeCorrector;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 272
    const/4 v0, 0x0

    .line 275
    :cond_4
    if-nez v0, :cond_5

    .line 276
    const-wide/16 v2, 0x0

    .line 279
    :cond_5
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$1;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-static {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->access$200(Lcom/valvesoftware/android/steam/community/TimeCorrector;J)V

    .line 284
    .end local v0    # "bUseServerTime":Z
    .end local v2    # "delta":J
    :goto_0
    return-void

    .line 282
    :cond_6
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$1;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->access$300(Lcom/valvesoftware/android/steam/community/TimeCorrector;)V

    goto :goto_0
.end method
