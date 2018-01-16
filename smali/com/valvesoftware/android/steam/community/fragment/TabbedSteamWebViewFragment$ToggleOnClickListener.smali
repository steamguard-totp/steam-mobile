.class Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;
.super Ljava/lang/Object;
.source "TabbedSteamWebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleOnClickListener"
.end annotation


# instance fields
.field m_clickUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "clickUrl"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;->m_clickUrl:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 131
    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    .line 132
    .local v0, "button":Landroid/widget/ToggleButton;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 133
    .local v1, "group":Landroid/widget/RadioGroup;
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    move v3, v4

    .line 134
    .local v3, "wasChecked":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 136
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;->m_clickUrl:Ljava/lang/String;

    .line 138
    .local v2, "url":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 140
    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 150
    :goto_1
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;)V

    .line 151
    return-void

    .line 133
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "wasChecked":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 147
    .restart local v2    # "url":Ljava/lang/String;
    .restart local v3    # "wasChecked":Z
    :cond_1
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment$ToggleOnClickListener;->this$0:Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;

    iget-object v4, v4, Lcom/valvesoftware/android/steam/community/fragment/TabbedSteamWebViewFragment;->m_webView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v4, v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
