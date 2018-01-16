.class Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$3;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

.field final synthetic val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$3;->val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->access$100(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;)Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->access$100(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;)Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$3;->val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->resendMessage(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V

    .line 205
    :cond_0
    return-void
.end method
