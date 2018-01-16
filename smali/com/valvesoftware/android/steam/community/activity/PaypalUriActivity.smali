.class public Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PaypalUriActivity.java"


# static fields
.field private static s_NextActivityID:I


# instance fields
.field private m_BrowserLocationBar:Landroid/widget/TextView;

.field private m_CategoriesUrl:Ljava/lang/String;

.field protected m_residActivityLayout:I

.field private m_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->s_NextActivityID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_url:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_CategoriesUrl:Ljava/lang/String;

    .line 23
    const v0, 0x7f03005a

    iput v0, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_residActivityLayout:I

    .line 24
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_BrowserLocationBar:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public SetBrowserBarLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_BrowserLocationBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_BrowserLocationBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f0e00ea

    .line 84
    if-nez p3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v4, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->call:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "sCall":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 91
    .local v0, "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:(function(){"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";})()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0    # "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    :cond_2
    sget-object v4, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "sUrl":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 99
    .restart local v0    # "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v0    # "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    :cond_3
    const-string v4, "dialogtext"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "sDlgText":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 106
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler;->HandleSteamURI(Landroid/net/Uri;)Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;

    move-result-object v2

    .line 61
    .local v2, "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    iget-object v3, v2, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->command:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    sget-object v4, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;->openurl:Lcom/valvesoftware/android/steam/community/SteamUriHandler$Command;

    if-ne v3, v4, :cond_0

    .line 63
    sget-object v3, Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;->url:Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;->getProperty(Lcom/valvesoftware/android/steam/community/SteamUriHandler$CommandProperty;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_url:Ljava/lang/String;

    .line 67
    .end local v2    # "result":Lcom/valvesoftware/android/steam/community/SteamUriHandler$Result;
    :cond_0
    iget v3, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_residActivityLayout:I

    invoke-virtual {p0, v3}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0e00ea

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;

    .line 69
    .local v0, "fragment":Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/fragment/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    .line 70
    const v3, 0x7f0e0159

    invoke-virtual {p0, v3}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_BrowserLocationBar:Landroid/widget/TextView;

    .line 72
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->m_url:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/valvesoftware/android/steam/community/activity/PaypalUriActivity;->SetBrowserBarLocation(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 79
    return-void
.end method
