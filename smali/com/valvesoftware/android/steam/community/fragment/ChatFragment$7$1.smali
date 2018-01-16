.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7$1;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7$1;->val$messages:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$1100(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/util/List;)V

    .line 325
    return-void
.end method
