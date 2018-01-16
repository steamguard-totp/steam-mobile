.class public Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;
.super Landroid/view/View;
.source "TwoFactorCodeThermometerView.java"


# instance fields
.field mAlertPaint:Landroid/graphics/Paint;

.field mBackgroundPaint:Landroid/graphics/Paint;

.field mDanger:Z

.field mNormalPaint:Landroid/graphics/Paint;

.field mOutlinePaint:Landroid/graphics/Paint;

.field mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 28
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mNormalPaint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mNormalPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mAlertPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mAlertPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mAlertPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v8, v0, 0x3

    .line 58
    .local v8, "barWidth":I
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 59
    .local v6, "barCenterX":I
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 63
    .local v7, "barCenterY":I
    div-int/lit8 v0, v8, 0x2

    sub-int v0, v6, v0

    int-to-float v1, v0

    add-int/lit8 v0, v7, -0xa

    int-to-float v2, v0

    div-int/lit8 v0, v8, 0x2

    add-int/2addr v0, v6

    int-to-float v3, v0

    add-int/lit8 v0, v7, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    div-int/lit8 v0, v8, 0x2

    sub-int v0, v6, v0

    int-to-float v1, v0

    add-int/lit8 v0, v7, -0xa

    int-to-float v2, v0

    div-int/lit8 v0, v8, 0x2

    add-int/2addr v0, v6

    int-to-float v3, v0

    add-int/lit8 v0, v7, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mDanger:Z

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mAlertPaint:Landroid/graphics/Paint;

    .line 72
    .local v5, "fillPaint":Landroid/graphics/Paint;
    :goto_0
    int-to-float v0, v8

    iget v1, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mValue:I

    int-to-float v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 74
    .local v9, "fuseLength":I
    div-int/lit8 v0, v9, 0x2

    sub-int v0, v6, v0

    int-to-float v1, v0

    add-int/lit8 v0, v7, -0xa

    int-to-float v2, v0

    div-int/lit8 v0, v9, 0x2

    add-int/2addr v0, v6

    int-to-float v3, v0

    add-int/lit8 v0, v7, 0xa

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    return-void

    .line 70
    .end local v5    # "fillPaint":Landroid/graphics/Paint;
    .end local v9    # "fuseLength":I
    :cond_0
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mNormalPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public setValue(IZ)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "danger"    # Z

    .prologue
    .line 48
    iput p1, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mValue:I

    .line 49
    iput-boolean p2, p0, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->mDanger:Z

    .line 50
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->invalidate()V

    .line 51
    return-void
.end method
