.class Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$1;
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
    .line 45
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    iget v1, v1, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryOffset:I

    .line 49
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;->query(Ljava/lang/String;)V

    .line 50
    return-void
.end method
