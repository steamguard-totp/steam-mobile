.class Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "GroupsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupViewHolder"
.end annotation


# instance fields
.field avatarView:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

.field avatarViewFrame:Landroid/widget/ImageView;

.field group:Lcom/valvesoftware/android/steam/community/model/Group;

.field labelView:Landroid/widget/TextView;

.field lblMembersOnline:Landroid/widget/TextView;

.field lblMembersTotal:Landroid/widget/TextView;

.field nameView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;


# direct methods
.method private constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;
    .param p2, "x1"    # Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$1;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;)V

    return-void
.end method
