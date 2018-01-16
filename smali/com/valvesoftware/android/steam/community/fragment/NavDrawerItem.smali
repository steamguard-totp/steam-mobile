.class public Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
.super Ljava/lang/Object;
.source "NavDrawerItem.java"


# instance fields
.field protected final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private final drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final groupId:I

.field private final iconId:I

.field protected m_view:Landroid/view/View;

.field private nameId:I

.field private final onClickIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "iconId"    # I
    .param p3, "nameId"    # I
    .param p4, "onClickIntent"    # Landroid/content/Intent;
    .param p5, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->children:Ljava/util/List;

    .line 25
    iput p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->groupId:I

    .line 26
    iput p2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->iconId:I

    .line 27
    iput p3, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->nameId:I

    .line 28
    iput-object p5, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 29
    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->onClickIntent:Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->onClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->onClickIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V
    .locals 1
    .param p1, "navDrawerItem"    # Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public getChild(I)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    .locals 5
    .param p1, "childPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->children:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 87
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, "i":I
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    .line 80
    .local v1, "item":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->isHidden()Z

    move-result v4

    if-nez v4, :cond_2

    .line 82
    if-eq v0, p1, :cond_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_1

    .end local v1    # "item":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    :cond_3
    move-object v1, v2

    .line 87
    goto :goto_0
.end method

.method public getChildrenCount()I
    .locals 4

    .prologue
    .line 65
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->children:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 72
    :cond_0
    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    .local v0, "cChildren":I
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    .line 69
    .local v1, "item":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->isHidden()Z

    move-result v3

    if-nez v3, :cond_2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNameId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->nameId:I

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->getChildrenCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->onClickIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->onClickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->startActivity(Landroid/content/Intent;)V

    .line 39
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->m_view:Landroid/view/View;

    .line 99
    return-void
.end method
