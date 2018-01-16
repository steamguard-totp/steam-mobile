.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->isTypingMessageReceived(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$500(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->hideIsTyping()V

    .line 172
    return-void
.end method
