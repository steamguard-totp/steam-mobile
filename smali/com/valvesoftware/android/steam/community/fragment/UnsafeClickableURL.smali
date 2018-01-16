.class public Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;
.super Landroid/text/style/URLSpan;
.source "UnsafeClickableURL.java"


# instance fields
.field private final activity:Landroid/support/v4/app/FragmentActivity;

.field private m_bShowUnsafeWarning:Z


# direct methods
.method public constructor <init>(Landroid/text/style/URLSpan;ZLandroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "other"    # Landroid/text/style/URLSpan;
    .param p2, "bShowUnsafeWarning"    # Z
    .param p3, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->m_bShowUnsafeWarning:Z

    .line 18
    iput-boolean p2, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->m_bShowUnsafeWarning:Z

    .line 19
    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 20
    return-void
.end method


# virtual methods
.method public HandleUserProcceedSelected(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 24
    :try_start_0
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-boolean v2, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->m_bShowUnsafeWarning:Z

    if-nez v2, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->HandleUserProcceedSelected(Landroid/view/View;)V

    .line 52
    :goto_0
    return-void

    .line 40
    :cond_0
    move-object v1, p1

    .line 41
    .local v1, "finalView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0800ef

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->activity:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f0800ee

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    const v2, 0x7f0800ed

    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL$1;

    invoke-direct {v3, p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    const v2, 0x7f080070

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
