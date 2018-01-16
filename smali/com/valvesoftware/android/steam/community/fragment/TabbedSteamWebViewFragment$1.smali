.class Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$1;
.super Ljava/lang/Object;
.source "TabbedSteamWebViewFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 159
    .local v1, "view":Landroid/widget/ToggleButton;
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v2

    if-ne v2, p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 161
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-static {v2, v0}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->access$102(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;I)I

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 165
    .end local v1    # "view":Landroid/widget/ToggleButton;
    :cond_2
    return-void
.end method
