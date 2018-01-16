.class Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PagingHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagingGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x43960000    # 300.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 154
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 156
    .local v0, "featureWidth":I
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v3

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_0
    invoke-static {v4, v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$202(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;I)I

    .line 157
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v4

    mul-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->smoothScrollTo(II)V

    .line 158
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->update()V

    .line 171
    .end local v0    # "featureWidth":I
    :goto_1
    return v1

    .line 156
    .restart local v0    # "featureWidth":I
    :cond_0
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 160
    .end local v0    # "featureWidth":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 161
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 163
    .restart local v0    # "featureWidth":I
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    invoke-static {v4, v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$202(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;I)I

    .line 164
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v4

    mul-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->smoothScrollTo(II)V

    .line 165
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "featureWidth":I
    :catch_0
    move-exception v1

    :cond_2
    move v1, v2

    .line 171
    goto :goto_1

    .restart local v0    # "featureWidth":I
    :cond_3
    move v3, v2

    .line 163
    goto :goto_2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 179
    .local v0, "featureWidth":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v4, v1

    int-to-double v6, v0

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    .line 180
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v1

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v4, v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$202(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;I)I

    .line 181
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v4

    mul-int/2addr v4, v0

    invoke-virtual {v1, v4, v2}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->smoothScrollTo(II)V

    .line 182
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->update()V

    move v2, v3

    .line 194
    :cond_0
    :goto_1
    return v2

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v4, v1

    int-to-double v6, v0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v8

    cmpg-double v1, v4, v6

    if-gez v1, :cond_0

    .line 188
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    invoke-static {v4, v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$202(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;I)I

    .line 189
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->access$200(Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;)I

    move-result v4

    mul-int/2addr v4, v0

    invoke-virtual {v1, v4, v2}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->smoothScrollTo(II)V

    .line 190
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView$PagingGestureDetector;->this$0:Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/PagingHorizontalScrollView;->update()V

    move v2, v3

    .line 191
    goto :goto_1

    :cond_3
    move v1, v2

    .line 188
    goto :goto_2
.end method
