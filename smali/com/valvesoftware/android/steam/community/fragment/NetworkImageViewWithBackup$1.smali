.class Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;
.super Ljava/lang/Object;
.source "NetworkImageViewWithBackup.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

.field final synthetic val$currentUrl:Ljava/lang/String;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->val$currentUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 136
    invoke-static {}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->access$000()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->val$currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->val$currentUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->access$100(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->access$300(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->access$300(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setImageResource(I)V

    goto :goto_0
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 158
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->val$isInLayoutPass:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$2;

    invoke-direct {v1, p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->access$400(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->access$400(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setImageResource(I)V

    goto :goto_0
.end method
