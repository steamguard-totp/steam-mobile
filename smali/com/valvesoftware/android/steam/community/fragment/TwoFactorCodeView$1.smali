.class Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView$1;
.super Ljava/lang/Object;
.source "TwoFactorCodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->access$000(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->update()V

    .line 48
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->access$100(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
