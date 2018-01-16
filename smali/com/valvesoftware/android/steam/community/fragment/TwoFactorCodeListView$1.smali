.class Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$1;
.super Ljava/lang/Object;
.source "TwoFactorCodeListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->access$000(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->update()V

    .line 40
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->access$100(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
