.class public Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "NavDrawerListAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final navigationItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "navigationItems":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->navigationItems:Ljava/util/List;

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->navigationItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v1

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->navigationItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    .line 53
    .local v0, "group":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->getChildrenCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 56
    invoke-virtual {v0, p2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->getChild(I)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->getChild(II)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 66
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 132
    move-object v3, p4

    .line 133
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->getChild(II)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    move-result-object v0

    .line 135
    .local v0, "current":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    if-nez v3, :cond_3

    .line 136
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030034

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 146
    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->setView(Landroid/view/View;)V

    .line 149
    const v4, 0x7f0e0112

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    .local v1, "navItemName":Landroid/widget/TextView;
    new-instance v4, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->getNameId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 165
    instance-of v4, v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    if-eqz v4, :cond_2

    .line 167
    const-string v4, " "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 168
    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    .end local v0    # "current":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->getNotificationCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 171
    :cond_2
    return-object v3

    .line 140
    .end local v1    # "navItemName":Landroid/widget/TextView;
    .restart local v0    # "current":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    .line 141
    .local v2, "old":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2, v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->navigationItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->navigationItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->getChildrenCount()I

    move-result v0

    goto :goto_0
.end method

.method public getGroup(I)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->navigationItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->navigationItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    goto :goto_0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->getGroup(I)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->navigationItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 76
    move-object v5, p3

    .line 77
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->getGroup(I)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    move-result-object v0

    .line 79
    .local v0, "current":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    if-nez v5, :cond_1

    .line 80
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030032

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0, v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->setView(Landroid/view/View;)V

    .line 97
    const v6, 0x7f0e0112

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    .local v2, "navItemName":Landroid/widget/TextView;
    const v6, 0x7f0e0116

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 100
    .local v1, "expandCollapseIcon":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_3

    .line 101
    new-instance v6, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;ILcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :goto_1
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_4

    .line 114
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    :goto_2
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->getNameId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 127
    return-object v5

    .line 84
    .end local v1    # "expandCollapseIcon":Landroid/widget/ImageView;
    .end local v2    # "navItemName":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    .line 85
    .local v4, "old":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    if-eqz v4, :cond_2

    .line 86
    invoke-virtual {v4, v10}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->setView(Landroid/view/View;)V

    .line 89
    :cond_2
    const v6, 0x7f0e0113

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "navNotificationCtn":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 109
    .end local v3    # "navNotificationCtn":Landroid/view/View;
    .end local v4    # "old":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    .restart local v1    # "expandCollapseIcon":Landroid/widget/ImageView;
    .restart local v2    # "navItemName":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 116
    :cond_4
    if-eqz p2, :cond_5

    .line 117
    const v6, 0x7f0200b1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :goto_3
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 119
    :cond_5
    const v6, 0x7f0200b2

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method
