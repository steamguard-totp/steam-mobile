.class Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;
.super Ljava/lang/Object;
.source "PagingHorizontalScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->init()V
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
    .line 88
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$100(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)Landroid/view/GestureDetector;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    :goto_0
    return v3

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 97
    :cond_1
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->getScrollX()I

    move-result v2

    .line 98
    .local v2, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 99
    .local v0, "featureWidth":I
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    div-int/2addr v6, v0

    invoke-static {v5, v6}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$202(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;I)I

    .line 100
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v5

    mul-int v1, v5, v0

    .line 101
    .local v1, "scrollTo":I
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v5, v1, v4}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->smoothScrollTo(II)V

    .line 102
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$2;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->update()V

    goto :goto_0

    .end local v0    # "featureWidth":I
    .end local v1    # "scrollTo":I
    .end local v2    # "scrollX":I
    :cond_2
    move v3, v4

    .line 105
    goto :goto_0
.end method
