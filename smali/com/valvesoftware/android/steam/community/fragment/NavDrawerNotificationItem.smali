.class public Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
.super Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
.source "NavDrawerNotificationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;
    }
.end annotation


# instance fields
.field protected m_hideWhenCountIsZero:Z

.field protected m_notificationCount:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "nameId"    # I
    .param p3, "onClickIntent"    # Landroid/content/Intent;
    .param p4, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p5, "hideWhenCountIsZero"    # Z

    .prologue
    .line 20
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    .line 22
    iput-boolean p5, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->m_hideWhenCountIsZero:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getNotificationCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->m_notificationCount:I

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->m_hideWhenCountIsZero:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->m_notificationCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNotificationCount(I)V
    .locals 3
    .param p1, "notificationCount"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->m_notificationCount:I

    .line 29
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->m_view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->m_view:Landroid/view/View;

    const v2, 0x7f0e0112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, "navItemName":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->getNameId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->getNotificationCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 37
    .end local v0    # "navItemName":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
