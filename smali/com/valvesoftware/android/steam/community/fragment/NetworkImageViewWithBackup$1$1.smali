.class Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$1;
.super Ljava/lang/Object;
.source "NetworkImageViewWithBackup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->onErrorResponse(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

    iget-boolean v1, v1, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->val$isInLayoutPass:Z

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->access$200(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;Z)V

    .line 143
    return-void
.end method
