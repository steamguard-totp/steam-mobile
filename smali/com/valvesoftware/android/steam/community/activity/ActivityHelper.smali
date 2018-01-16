.class public Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# direct methods
.method public static UpdateToggleButtonStyles(Landroid/widget/ToggleButton;)V
    .locals 4
    .param p0, "btn"    # Landroid/widget/ToggleButton;

    .prologue
    .line 28
    const v2, 0x7f0c0076

    .line 29
    .local v2, "residColor":I
    const v1, 0x7f0c0081

    .line 30
    .local v1, "residBgColor":I
    const/4 v0, 0x0

    .line 32
    .local v0, "fontStyle":I
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const v2, 0x7f0c0075

    .line 34
    const v1, 0x7f0c0072

    .line 35
    const/4 v0, 0x1

    .line 38
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 39
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ToggleButton;->setBackgroundColor(I)V

    .line 40
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 41
    return-void
.end method

.method public static fragmentIsActive(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 61
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fragmentOrActivityIsActive(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "activityOrFragment"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 80
    .end local p0    # "activityOrFragment":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 72
    .restart local p0    # "activityOrFragment":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 73
    check-cast v0, Landroid/app/Activity;

    .line 74
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v2, v1

    .line 77
    goto :goto_0

    .line 80
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    instance-of v3, p0, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_4

    check-cast p0, Landroid/support/v4/app/Fragment;

    .end local p0    # "activityOrFragment":Ljava/lang/Object;
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static hideKeyboard(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 48
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 49
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 57
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method
