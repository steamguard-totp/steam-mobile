.class Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$2;
.super Ljava/lang/Object;
.source "BaseSearchListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    iget v2, v2, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    add-int/lit8 v2, v2, -0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    .line 57
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->query(Ljava/lang/String;)V

    .line 58
    return-void
.end method
