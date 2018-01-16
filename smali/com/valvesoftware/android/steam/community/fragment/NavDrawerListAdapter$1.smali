.class Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;
.super Ljava/lang/Object;
.source "NavDrawerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

.field final synthetic val$current:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;ILcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    iput p2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;->val$groupPosition:I

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;->val$current:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position: %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;->val$groupPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->access$000(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;->val$current:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->getNameId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$1;->val$current:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->onClick()V

    .line 106
    return-void
.end method
