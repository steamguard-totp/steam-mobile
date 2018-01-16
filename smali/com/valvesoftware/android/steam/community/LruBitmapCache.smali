.class public Lcom/valvesoftware/android/steam/community/LruBitmapCache;
.super Landroid/support/v4/util/LruCache;
.source "LruBitmapCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/android/volley/toolbox/ImageLoader$ImageCache;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 14
    return-void
.end method

.method public static getCacheSize(Landroid/content/Context;)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 41
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    .local v3, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 45
    .local v2, "screenHeight":I
    mul-int v4, v3, v2

    mul-int/lit8 v1, v4, 0x4

    .line 47
    .local v1, "screenBytes":I
    mul-int/lit8 v4, v1, 0x3

    return v4
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/LruBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/LruBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/LruBitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
