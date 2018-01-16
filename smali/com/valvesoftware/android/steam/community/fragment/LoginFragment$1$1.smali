.class Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

.field final synthetic val$bottom:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iput p2, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->val$bottom:I

    iput p3, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->val$bottom:I

    iget v2, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->val$top:I

    sub-int v0, v1, v2

    .line 58
    .local v0, "height":I
    const/16 v1, 0x32

    if-gt v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$102(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;Z)Z

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    if-le v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-static {v1, v3}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$102(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;Z)Z

    .line 65
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeListView;->syncFragments()V

    goto :goto_0
.end method
