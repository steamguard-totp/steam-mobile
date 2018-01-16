.class Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb$1;
.super Landroid/content/BroadcastReceiver;
.source "SteamguardFragmentWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

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
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;->access$000(Lcom/valvesoftware/android/steam/community/fragment/SteamguardFragmentWeb;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->syncFragments()V

    .line 66
    return-void
.end method
