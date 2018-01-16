.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5$1;->this$2:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 333
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5$1;->this$2:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->val$myDOB:Ljava/util/Calendar;

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 335
    invoke-static {p2, p3, p4}, Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;->makeValue(III)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "sValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5$1;->this$2:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->val$valueView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5$1;->this$2:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5$1;->this$2:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/valvesoftware/android/steam/community/SettingInfo;->setValueAndCommit(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    return-void
.end method
