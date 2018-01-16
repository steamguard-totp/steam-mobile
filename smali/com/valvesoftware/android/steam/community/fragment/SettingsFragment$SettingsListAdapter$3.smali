.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 298
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$3;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$3;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 301
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$3;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$3;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/valvesoftware/android/steam/community/SettingInfo;->setValueAndCommit(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    return-void

    .line 301
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
