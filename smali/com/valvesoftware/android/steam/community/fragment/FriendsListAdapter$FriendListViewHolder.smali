.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;
.super Ljava/lang/Object;
.source "FriendsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FriendListViewHolder"
.end annotation


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public avatarView:Lcom/android/volley/toolbox/NetworkImageView;

.field public avatarViewFrame:Landroid/widget/ImageView;

.field public chatBtn:Landroid/widget/ImageView;

.field public chevronView:Landroid/widget/ImageView;

.field public labelView:Landroid/widget/TextView;

.field public mobileIcon:Landroid/view/View;

.field public nameAndStatusContainer:Landroid/view/View;

.field public nameView:Landroid/widget/TextView;

.field public personaName:Ljava/lang/String;

.field public statusView:Landroid/widget/TextView;

.field public steamId:Ljava/lang/String;

.field public unreadMessageTextView:Landroid/widget/TextView;

.field public vAreaAroundChatBtn:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$1;

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;-><init>()V

    return-void
.end method
