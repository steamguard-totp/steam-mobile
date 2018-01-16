.class Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment$1;
.super Ljava/lang/Object;
.source "SearchBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->closeSearch()V

    .line 32
    return-void
.end method
