.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 454
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    check-cast v1, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-object v0, v1

    check-cast v0, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .line 455
    .local v0, "radios":[Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    if-ltz p2, :cond_1

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->valueView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->valueView:Landroid/widget/TextView;

    aget-object v2, v0, p2

    iget v2, v2, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, v0, p2

    iget v3, v3, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SettingInfo;->setValueAndCommit(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 461
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->onSettingChanged(Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;)V

    .line 463
    :cond_1
    return-void
.end method
