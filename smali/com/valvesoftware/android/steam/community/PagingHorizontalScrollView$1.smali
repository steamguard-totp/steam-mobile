.class Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "PagingHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$1;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$1;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$002(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;Z)Z

    .line 72
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$1;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->update()V

    .line 73
    return-void
.end method
