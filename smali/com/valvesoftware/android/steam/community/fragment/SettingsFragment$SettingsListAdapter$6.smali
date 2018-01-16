.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$6;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

.field final synthetic val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Lcom/valvesoftware/android/steam/community/SettingInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$6;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$6;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "btn"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$6;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$6;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$6;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 358
    return-void
.end method
