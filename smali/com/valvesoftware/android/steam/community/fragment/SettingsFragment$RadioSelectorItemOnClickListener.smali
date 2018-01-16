.class public Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioSelectorItemOnClickListener"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field alert:Landroid/app/AlertDialog;

.field m_onRadioButtonSelected:Landroid/content/DialogInterface$OnClickListener;

.field settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/valvesoftware/android/steam/community/SettingInfo;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "si"    # Lcom/valvesoftware/android/steam/community/SettingInfo;
    .param p3, "value"    # Landroid/widget/TextView;

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->m_onRadioButtonSelected:Landroid/content/DialogInterface$OnClickListener;

    .line 419
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->activity:Landroid/app/Activity;

    .line 420
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 421
    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->valueView:Landroid/widget/TextView;

    .line 422
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "btn"    # Landroid/view/View;

    .prologue
    .line 431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->activity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 432
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget v6, v6, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 434
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v6, v6, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_extraData:Ljava/lang/Object;

    check-cast v6, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-object v4, v6

    check-cast v4, [Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .line 435
    .local v4, "radios":[Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    array-length v6, v4

    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 437
    .local v1, "builderItems":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getRadioSelectorItemValue(Landroid/content/Context;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-result-object v5

    .line 438
    .local v5, "rsiValue":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    const/4 v2, -0x1

    .line 439
    .local v2, "iCheckedItem":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v6, v4

    if-ge v3, v6, :cond_1

    .line 440
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->activity:Landroid/app/Activity;

    aget-object v7, v4, v3

    iget v7, v7, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 441
    aget-object v6, v4, v3

    if-ne v5, v6, :cond_0

    .line 442
    move v2, v3

    .line 439
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 445
    :cond_1
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->m_onRadioButtonSelected:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->alert:Landroid/app/AlertDialog;

    .line 448
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 449
    return-void
.end method

.method public onSettingChanged(Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;)V
    .locals 0
    .param p1, "sel"    # Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    .prologue
    .line 468
    return-void
.end method
