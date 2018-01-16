.class Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$1;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    .line 96
    return-void
.end method
