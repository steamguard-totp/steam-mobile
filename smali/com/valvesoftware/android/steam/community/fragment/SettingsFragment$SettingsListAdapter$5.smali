.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;
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

.field final synthetic val$myDOB:Ljava/util/Calendar;

.field final synthetic val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

.field final synthetic val$valueView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Ljava/util/Calendar;Landroid/widget/TextView;Lcom/valvesoftware/android/steam/community/SettingInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->val$myDOB:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->val$valueView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->val$settingInfo:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "btn"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v3, v3, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    .line 327
    .local v0, "context":Landroid/content/Context;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 328
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030073

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 330
    .end local v1    # "context":Landroid/content/Context;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v2, Lcom/valvesoftware/android/steam/community/SettingInfo$CustomDatePickerDialog;

    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5$1;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;)V

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;->val$myDOB:Ljava/util/Calendar;

    const v5, 0x7f08012c

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/valvesoftware/android/steam/community/SettingInfo$CustomDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;I)V

    .line 345
    .local v2, "picker":Landroid/app/DatePickerDialog;
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    .line 346
    return-void
.end method
