.class public Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendsListAdapter.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Persona;",
        ">;"
    }
.end annotation


# static fields
.field private static personaComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private friendChatClickListener:Landroid/view/View$OnClickListener;

.field private friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

.field private friendProfileClickListener:Landroid/view/View$OnClickListener;

.field private friendsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;"
        }
    .end annotation
.end field

.field private final groupAndLabelByStatus:Z

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private final searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

.field private searchString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$1;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$1;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->personaComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;",
            "Landroid/support/v4/app/FragmentActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "friends":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;-><init>(Ljava/util/Collection;Landroid/support/v4/app/FragmentActivity;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 2
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "groupAndLabelByStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;",
            "Landroid/support/v4/app/FragmentActivity;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "friends":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    sget-object v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->personaComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->context:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 74
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 75
    iput-boolean p3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->groupAndLabelByStatus:Z

    .line 76
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendProfileClickListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendChatClickListener:Landroid/view/View$OnClickListener;

    .line 114
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->createSearchItem()Lcom/valvesoftware/android/steam/community/model/Persona;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 115
    return-void
.end method

.method private createSearchItem()Lcom/valvesoftware/android/steam/community/model/Persona;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/Persona;-><init>()V

    .line 296
    .local v0, "info":Lcom/valvesoftware/android/steam/community/model/Persona;
    const-string v1, "0"

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    .line 297
    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaState;->OFFLINE:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    .line 298
    sget-object v1, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->none:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 300
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->realName:Ljava/lang/String;

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    .line 301
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/Persona;->setDisplayCategoryForSearch()V

    .line 302
    iput-boolean v3, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnMobile:Z

    .line 303
    iput-boolean v3, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnTenFoot:Z

    .line 304
    iput-boolean v3, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnWeb:Z

    .line 305
    return-object v0
.end method

.method private determineChatElementsState(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;)V
    .locals 1
    .param p1, "friendInfo"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "holder"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->turnOnChatElements(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->turnOffChatElements(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;)V

    goto :goto_0
.end method

.method private determineStatusAndAvatar(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;Landroid/content/Context;)V
    .locals 7
    .param p1, "friendInfo"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "holder"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;
    .param p3, "appContext"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0c006b

    const v5, 0x7f0c0069

    const v3, 0x7f0c0055

    const/4 v4, 0x0

    .line 309
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->mobileIcon:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->statusView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "inGameStatus":Ljava/lang/String;
    iget-object v2, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->statusView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->currentGameString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .end local v0    # "inGameStatus":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

    if-ne p1, v1, :cond_4

    .line 333
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarView:Lcom/android/volley/toolbox/NetworkImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/NetworkImageView;->setVisibility(I)V

    .line 334
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    const v2, 0x7f02015a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->statusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_2
    return-void

    .line 316
    .restart local v0    # "inGameStatus":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 317
    .end local v0    # "inGameStatus":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->statusView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->statusView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaState:Lcom/valvesoftware/android/steam/community/model/PersonaState;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/PersonaState;->GetDisplayString()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-boolean v1, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnMobile:Z

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->mobileIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 326
    :cond_3
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->statusView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->statusView:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->lastOnlineTime:J

    invoke-direct {p0, v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getLastOnlineString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 337
    :cond_4
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarView:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-virtual {v1, v4}, Lcom/android/volley/toolbox/NetworkImageView;->setVisibility(I)V

    .line 338
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarView:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v2, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {v1, v2, v3}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 339
    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    iput-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarUrl:Ljava/lang/String;

    .line 340
    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getLastOnlineString(J)Ljava/lang/String;
    .locals 17
    .param p1, "lastOnlineTime"    # J

    .prologue
    .line 392
    const-string v2, ""

    .line 393
    .local v2, "lastOnlineString":Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-gtz v12, :cond_0

    move-object v3, v2

    .line 422
    .end local v2    # "lastOnlineString":Ljava/lang/String;
    .local v3, "lastOnlineString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 395
    .end local v3    # "lastOnlineString":Ljava/lang/String;
    .restart local v2    # "lastOnlineString":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v0, v12, v14

    .line 397
    .local v0, "currentServerTime":J
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-eqz v12, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-eqz v12, :cond_2

    .line 398
    sub-long v10, v0, p1

    .line 399
    .local v10, "numSeconds":J
    const-wide/16 v12, 0xa

    cmp-long v12, v10, v12

    if-gez v12, :cond_1

    const-wide/16 v10, 0xa

    .line 400
    :cond_1
    const-wide/16 v12, 0x3c

    cmp-long v12, v10, v12

    if-gez v12, :cond_3

    .line 401
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080091

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "#"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .end local v10    # "numSeconds":J
    :cond_2
    :goto_1
    move-object v3, v2

    .line 422
    .end local v2    # "lastOnlineString":Ljava/lang/String;
    .restart local v3    # "lastOnlineString":Ljava/lang/String;
    goto :goto_0

    .line 403
    .end local v3    # "lastOnlineString":Ljava/lang/String;
    .restart local v2    # "lastOnlineString":Ljava/lang/String;
    .restart local v10    # "numSeconds":J
    :cond_3
    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x3c

    div-long v14, v10, v14

    add-long v8, v12, v14

    .line 404
    .local v8, "numMinutes":J
    const-wide/16 v12, 0x3c

    cmp-long v12, v8, v12

    if-gez v12, :cond_4

    .line 405
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080090

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "#"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 407
    :cond_4
    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x3c

    div-long v14, v8, v14

    add-long v6, v12, v14

    .line 408
    .local v6, "numHours":J
    const-wide/16 v12, 0x30

    cmp-long v12, v6, v12

    if-gez v12, :cond_5

    .line 409
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08008f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "#"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 411
    :cond_5
    const-wide/16 v12, 0x18

    div-long v4, v6, v12

    .line 412
    .local v4, "numDays":J
    const-wide/16 v12, 0x16d

    cmp-long v12, v4, v12

    if-gez v12, :cond_6

    .line 413
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08008e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "#"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 415
    :cond_6
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080092

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private turnOffChatElements(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;)V
    .locals 3
    .param p1, "friendInfo"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "holder"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 353
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->vAreaAroundChatBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->vAreaAroundChatBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->unreadMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

    if-ne p1, v0, :cond_0

    .line 360
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chevronView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chevronView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private turnOnChatElements(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;)V
    .locals 4
    .param p1, "friendInfo"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "holder"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 367
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chevronView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->hasSentUnreadMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 371
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->unreadMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->getUnreadMessageCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->unreadMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->unreadMessageTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    :goto_0
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->vAreaAroundChatBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->vAreaAroundChatBtn:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 387
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->vAreaAroundChatBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendChatClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendChatClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->unreadMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->unreadMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/valvesoftware/android/steam/community/model/Persona;)V
    .locals 1
    .param p1, "persona"    # Lcom/valvesoftware/android/steam/community/model/Persona;

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->add(Lcom/valvesoftware/android/steam/community/model/Persona;)V

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "additions":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    return-object v0
.end method

.method public getItem(I)Lcom/valvesoftware/android/steam/community/model/Persona;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Persona;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getItem(I)Lcom/valvesoftware/android/steam/community/model/Persona;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 197
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "friendInfo":Lcom/valvesoftware/android/steam/community/model/Persona;
    const/4 v1, 0x0

    .line 205
    .local v1, "friendInfoPrev":Lcom/valvesoftware/android/steam/community/model/Persona;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getCount()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getItem(I)Lcom/valvesoftware/android/steam/community/model/Persona;

    move-result-object v0

    .line 207
    if-lez p1, :cond_1

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getItem(I)Lcom/valvesoftware/android/steam/community/model/Persona;

    move-result-object v1

    .line 210
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    move-object v4, p2

    .line 276
    .end local p2    # "v":Landroid/view/View;
    .local v4, "v":Landroid/view/View;
    :goto_1
    return-object v4

    .end local v4    # "v":Landroid/view/View;
    .restart local p2    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v6

    .line 207
    goto :goto_0

    .line 215
    :cond_2
    if-nez p2, :cond_4

    .line 216
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030026

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 217
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;

    invoke-direct {v2, v6}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$1;)V

    .line 219
    .local v2, "holder":Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;
    const v5, 0x7f0e00da

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->labelView:Landroid/widget/TextView;

    .line 220
    const v5, 0x7f0e00de

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->nameView:Landroid/widget/TextView;

    .line 221
    const v5, 0x7f0e00df

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->statusView:Landroid/widget/TextView;

    .line 222
    const v5, 0x7f0e00db

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/volley/toolbox/NetworkImageView;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarView:Lcom/android/volley/toolbox/NetworkImageView;

    .line 223
    const v5, 0x7f0e00dc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarViewFrame:Landroid/widget/ImageView;

    .line 224
    const v5, 0x7f0e00e4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chevronView:Landroid/widget/ImageView;

    .line 225
    const v5, 0x7f0e00e2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    .line 226
    const v5, 0x7f0e00e3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->unreadMessageTextView:Landroid/widget/TextView;

    .line 227
    const v5, 0x7f0e00e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->vAreaAroundChatBtn:Landroid/view/View;

    .line 228
    const v5, 0x7f0e00e0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->mobileIcon:Landroid/view/View;

    .line 229
    const v5, 0x7f0e00dd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->nameAndStatusContainer:Landroid/view/View;

    .line 230
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    :goto_2
    iget-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->steamId:Ljava/lang/String;

    .line 236
    iget-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->personaName:Ljava/lang/String;

    .line 237
    iget-object v5, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->mediumAvatarUrl:Ljava/lang/String;

    iput-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarUrl:Ljava/lang/String;

    .line 239
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->vAreaAroundChatBtn:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 243
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/Persona;->isFriend()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 244
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendChatClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :goto_3
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarView:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v6, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->steamId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/volley/toolbox/NetworkImageView;->setTag(Ljava/lang/Object;)V

    .line 255
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarView:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/android/volley/toolbox/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-boolean v5, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->groupAndLabelByStatus:Z

    if-eqz v5, :cond_7

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 261
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/Persona;->getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    move-result-object v5

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/model/Persona;->getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    move-result-object v6

    if-eq v5, v6, :cond_7

    .line 263
    :cond_3
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/Persona;->getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->GetDisplayString()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "label":Ljava/lang/String;
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->labelView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->labelView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    .end local v3    # "label":Ljava/lang/String;
    :goto_4
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/valvesoftware/android/steam/community/AndroidUtils;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, v0, v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->determineChatElementsState(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;)V

    .line 274
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v0, v2, v5}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->determineStatusAndAvatar(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;Landroid/content/Context;)V

    move-object v4, p2

    .line 276
    .end local p2    # "v":Landroid/view/View;
    .restart local v4    # "v":Landroid/view/View;
    goto/16 :goto_1

    .line 232
    .end local v2    # "holder":Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;
    .end local v4    # "v":Landroid/view/View;
    .restart local p2    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;

    .restart local v2    # "holder":Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;
    goto/16 :goto_2

    .line 245
    :cond_5
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

    if-ne v0, v5, :cond_6

    .line 246
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->vAreaAroundChatBtn:Landroid/view/View;

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->nameAndStatusContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->nameAndStatusContainer:Landroid/view/View;

    iget-object v6, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->steamId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 251
    :cond_6
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 268
    :cond_7
    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->labelView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    sget-object v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->personaComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public remove(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "removals":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 145
    .local v2, "removalIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 146
    .local v1, "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    iget-object v4, v1, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    .end local v1    # "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    :cond_2
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    .local v0, "friends":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 152
    .restart local v1    # "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    iget-object v3, v1, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 157
    .end local v1    # "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    :cond_4
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 3
    .param p1, "newSearchString"    # Ljava/lang/String;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendsList:Ljava/util/List;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-direct {v0, v1, p0, v2}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;-><init>(Ljava/util/List;Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    if-nez v0, :cond_1

    .line 179
    :goto_0
    return-void

    .line 170
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->removeFromOriginal(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->addToOriginal(Ljava/lang/Object;)V

    .line 177
    :goto_1
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchString:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->notifyDataSetChanged()V

    .line 175
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->friendInfoFilter:Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->searchItemInfo:Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->removeFromOriginal(Ljava/lang/Object;)V

    goto :goto_1
.end method
