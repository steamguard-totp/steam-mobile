.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080078

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;)V

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 77
    return-void
.end method
