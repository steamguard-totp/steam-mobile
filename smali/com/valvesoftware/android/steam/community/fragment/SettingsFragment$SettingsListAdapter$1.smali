.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;
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

.field final synthetic val$chevronView:Landroid/widget/ImageView;

.field final synthetic val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field final synthetic val$valueView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Landroid/widget/TextView;Lcom/valvesoftware/android/steam/community/SettingInfo;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->val$valueView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->val$chevronView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "btn"    # Landroid/view/View;

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "market://details?id=com.valvesoftware.android.steam.community"

    .line 258
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->val$valueView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "http://store.steampowered.com/mobile"

    .line 264
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 267
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;->val$chevronView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
