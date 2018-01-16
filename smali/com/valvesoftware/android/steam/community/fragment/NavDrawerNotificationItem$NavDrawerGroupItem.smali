.class public Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;
.super Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
.source "NavDrawerNotificationItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavDrawerGroupItem"
.end annotation


# direct methods
.method public constructor <init>(IILandroid/support/v4/widget/DrawerLayout;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "nameId"    # I
    .param p3, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 53
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public setNotificationCount(I)V
    .locals 4
    .param p1, "notificationCount"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;->m_notificationCount:I

    .line 66
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;->m_view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;->m_view:Landroid/view/View;

    const v3, 0x7f0e0115

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "navNotificationCount":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;->m_view:Landroid/view/View;

    const v3, 0x7f0e0113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "navNotificationCtn":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;->getNotificationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;->m_notificationCount:I

    if-lez v2, :cond_1

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .end local v0    # "navNotificationCount":Landroid/widget/TextView;
    .end local v1    # "navNotificationCtn":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0    # "navNotificationCount":Landroid/widget/TextView;
    .restart local v1    # "navNotificationCtn":Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->setView(Landroid/view/View;)V

    .line 60
    iget v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;->m_notificationCount:I

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;->setNotificationCount(I)V

    .line 61
    return-void
.end method
