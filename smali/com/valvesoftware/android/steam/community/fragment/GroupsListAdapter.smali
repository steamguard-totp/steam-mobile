.class public Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupsListAdapter.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Group;",
        ">;"
    }
.end annotation


# instance fields
.field private final dummyClickListener:Landroid/view/View$OnClickListener;

.field private final groupAndLabelByStatus:Z

.field private groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

.field private groupListClickListener:Landroid/view/View$OnClickListener;

.field private groupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;"
        }
    .end annotation
.end field

.field private groupsSearchString:Ljava/lang/String;

.field private idsToGroupsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private final searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Group;

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;",
            "Landroid/support/v4/app/FragmentActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentActivity;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 4
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "groupAndLabelByStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;",
            "Landroid/support/v4/app/FragmentActivity;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsSearchString:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->idsToGroupsMap:Ljava/util/Map;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    .line 50
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 51
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsSearchString:Ljava/lang/String;

    .line 52
    iput-boolean p3, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupAndLabelByStatus:Z

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Group;

    .line 54
    .local v0, "g":Lcom/valvesoftware/android/steam/community/model/Group;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->idsToGroupsMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v0    # "g":Lcom/valvesoftware/android/steam/community/model/Group;
    :cond_0
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->dummyClickListener:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupListClickListener:Landroid/view/View$OnClickListener;

    .line 88
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->createSearchItem()Lcom/valvesoftware/android/steam/community/model/Group;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Group;

    .line 89
    return-void
.end method

.method private createSearchItem()Lcom/valvesoftware/android/steam/community/model/Group;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/Group;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/Group;-><init>()V

    .line 227
    .local v0, "group":Lcom/valvesoftware/android/steam/community/model/Group;
    const-string v1, "0"

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsSearchString:Ljava/lang/String;

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    .line 229
    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->SEARCH_ALL:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 230
    return-object v0
.end method


# virtual methods
.method public add(Lcom/valvesoftware/android/steam/community/model/Group;)V
    .locals 1
    .param p1, "group"    # Lcom/valvesoftware/android/steam/community/model/Group;

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/Group;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->add(Lcom/valvesoftware/android/steam/community/model/Group;)V

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    .line 223
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    return-object v0
.end method

.method public getItem(I)Lcom/valvesoftware/android/steam/community/model/Group;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Group;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->getItem(I)Lcom/valvesoftware/android/steam/community/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 149
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->getItem(I)Lcom/valvesoftware/android/steam/community/model/Group;

    move-result-object v2

    .line 150
    .local v2, "group":Lcom/valvesoftware/android/steam/community/model/Group;
    if-nez v2, :cond_0

    move-object v3, p2

    .line 205
    .end local p2    # "v":Landroid/view/View;
    .local v3, "v":Landroid/view/View;
    :goto_0
    return-object v3

    .line 154
    .end local v3    # "v":Landroid/view/View;
    .restart local p2    # "v":Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    .line 157
    .local v0, "appContext":Landroid/content/Context;
    if-nez p2, :cond_2

    .line 158
    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 159
    .local v4, "vi":Landroid/view/LayoutInflater;
    const v6, 0x7f030028

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 161
    new-instance v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;

    invoke-direct {v5, p0, v7}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$1;)V

    .line 162
    .local v5, "viewHolder":Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;
    const v6, 0x7f0e00da

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->labelView:Landroid/widget/TextView;

    .line 163
    const v6, 0x7f0e00de

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->nameView:Landroid/widget/TextView;

    .line 164
    const v6, 0x7f0e00e7

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->lblMembersTotal:Landroid/widget/TextView;

    .line 165
    const v6, 0x7f0e00e8

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->lblMembersOnline:Landroid/widget/TextView;

    .line 166
    const v6, 0x7f0e00db

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    iput-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarView:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    .line 167
    const v6, 0x7f0e00dc

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    .line 168
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 169
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    .end local v4    # "vi":Landroid/view/LayoutInflater;
    :goto_1
    iput-object v2, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->group:Lcom/valvesoftware/android/steam/community/model/Group;

    .line 179
    iget-boolean v6, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupAndLabelByStatus:Z

    if-eqz v6, :cond_3

    if-eqz p1, :cond_1

    iget-object v6, v2, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->getItem(I)Lcom/valvesoftware/android/steam/community/model/Group;

    move-result-object v7

    iget-object v7, v7, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    if-eq v6, v7, :cond_3

    .line 180
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v2, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    invoke-virtual {v7}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->getDisplayNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "category":Ljava/lang/String;
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->labelView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    .end local v1    # "category":Ljava/lang/String;
    :goto_2
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->dummyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/valvesoftware/android/steam/community/AndroidUtils;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 190
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Group;

    if-eq v2, v6, :cond_4

    .line 191
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarView:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    invoke-virtual {v6, v10}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setVisibility(I)V

    .line 192
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarView:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    iget-object v7, v2, Lcom/valvesoftware/android/steam/community/model/Group;->mediumAvatarUrl:Ljava/lang/String;

    iget-object v8, v2, Lcom/valvesoftware/android/steam/community/model/Group;->smallAvatarUrl:Ljava/lang/String;

    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {v6, v7, v8, v9}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setImageUrl(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 193
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarView:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    invoke-virtual {v6}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->forceLayout()V

    .line 194
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    const v7, 0x7f020054

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->lblMembersTotal:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/valvesoftware/android/steam/community/model/Group;->numUsersTotal:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080089

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->lblMembersOnline:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/valvesoftware/android/steam/community/model/Group;->numUsersOnline:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080088

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move-object v3, p2

    .line 205
    .end local p2    # "v":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 172
    .end local v3    # "v":Landroid/view/View;
    .end local v5    # "viewHolder":Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;
    .restart local p2    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;

    .restart local v5    # "viewHolder":Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;
    goto/16 :goto_1

    .line 184
    :cond_3
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->labelView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 199
    :cond_4
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    const v7, 0x7f02015a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->avatarView:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setVisibility(I)V

    .line 201
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->lblMembersTotal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->getSearchString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/valvesoftware/android/steam/community/AndroidUtils;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 202
    iget-object v6, v5, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->lblMembersOnline:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$3;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 3
    .param p1, "newSearchString"    # Ljava/lang/String;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupsList:Ljava/util/List;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Group;

    invoke-direct {v0, v1, p0, v2}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;-><init>(Ljava/util/List;Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    if-nez v0, :cond_1

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Group;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->removeFromOriginal(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Group;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->addToOriginal(Ljava/lang/Object;)V

    .line 107
    :goto_1
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchString:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->groupInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Group;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->removeFromOriginal(Ljava/lang/Object;)V

    goto :goto_1
.end method
