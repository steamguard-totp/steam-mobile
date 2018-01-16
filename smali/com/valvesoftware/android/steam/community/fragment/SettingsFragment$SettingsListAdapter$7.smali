.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;
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
    .line 388
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 397
    :try_start_1
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v3, v3, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :goto_0
    :try_start_2
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 402
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->ringToneSelectorRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 407
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 399
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    const/4 v1, 0x0

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    goto :goto_1
.end method
