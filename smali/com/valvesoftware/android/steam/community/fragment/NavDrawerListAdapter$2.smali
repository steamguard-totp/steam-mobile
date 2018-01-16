.class Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$2;
.super Ljava/lang/Object;
.source "NavDrawerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

.field final synthetic val$current:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$2;->val$current:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter$2;->val$current:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->onClick()V

    .line 156
    return-void
.end method
