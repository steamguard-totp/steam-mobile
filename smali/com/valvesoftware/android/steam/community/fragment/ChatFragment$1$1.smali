.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    .line 75
    return-void
.end method
