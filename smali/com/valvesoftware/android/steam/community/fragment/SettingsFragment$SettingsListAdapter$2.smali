.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$2;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$2;->this$1:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->refreshListView()V

    .line 286
    return-void
.end method
