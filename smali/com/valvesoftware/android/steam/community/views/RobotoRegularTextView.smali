.class public Lcom/valvesoftware/android/steam/community/views/RobotoRegularTextView;
.super Lcom/valvesoftware/android/steam/community/views/TypefaceTextView;
.source "RobotoRegularTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/views/RobotoRegularTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/views/RobotoRegularTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/views/TypefaceTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/RobotoRegularTextView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    :goto_0
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/views/RobotoRegularTextView;->fontName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 15
    .local v0, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/views/RobotoRegularTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method


# virtual methods
.method protected fontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "fonts/Roboto-Regular.ttf"

    return-object v0
.end method
