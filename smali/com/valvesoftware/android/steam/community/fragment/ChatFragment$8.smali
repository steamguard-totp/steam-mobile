.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$8;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->markMessagesRead()V
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
    .line 352
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$8;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$8;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$1000(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v0

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$8;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/LocalDb;->markMessagesRead(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method
