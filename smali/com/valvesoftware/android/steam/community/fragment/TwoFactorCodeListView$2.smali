.class Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$2;
.super Landroid/content/BroadcastReceiver;
.source "TwoFactorCodeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 62
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->syncFragments()V

    .line 66
    return-void
.end method
