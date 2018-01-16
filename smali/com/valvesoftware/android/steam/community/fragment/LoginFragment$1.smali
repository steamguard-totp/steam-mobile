.class Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;

    invoke-direct {v1, p0, p5, p3}, Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/LoginFragment$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method
