.class Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$2;
.super Ljava/lang/Object;
.source "NetworkImageViewWithBackup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

.field final synthetic val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$2;->this$1:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$2;->val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$2;->this$1:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$2;->val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 163
    return-void
.end method
