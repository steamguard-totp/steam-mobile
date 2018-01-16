.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->onResume()V
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
    .line 187
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loggedIn()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$600(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$600(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public loggedOff()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$600(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$600(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
