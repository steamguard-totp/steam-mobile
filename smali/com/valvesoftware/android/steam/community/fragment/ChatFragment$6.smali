.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$6;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->setupControls(Landroid/view/View;)V
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
    .line 259
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$900(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 263
    return-void
.end method
