.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$4;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$4;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$4;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$400(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    .line 232
    return-void
.end method
