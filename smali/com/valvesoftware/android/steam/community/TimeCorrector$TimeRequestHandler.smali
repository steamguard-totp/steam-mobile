.class abstract Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;
.super Ljava/lang/Object;
.source "TimeCorrector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/TimeCorrector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TimeRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;


# direct methods
.method private constructor <init>(Lcom/valvesoftware/android/steam/community/TimeCorrector;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;->this$0:Lcom/valvesoftware/android/steam/community/TimeCorrector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/valvesoftware/android/steam/community/TimeCorrector;Lcom/valvesoftware/android/steam/community/TimeCorrector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/valvesoftware/android/steam/community/TimeCorrector;
    .param p2, "x1"    # Lcom/valvesoftware/android/steam/community/TimeCorrector$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/TimeCorrector$TimeRequestHandler;-><init>(Lcom/valvesoftware/android/steam/community/TimeCorrector;)V

    return-void
.end method


# virtual methods
.method public abstract handleResult(ZJJJ)V
.end method
