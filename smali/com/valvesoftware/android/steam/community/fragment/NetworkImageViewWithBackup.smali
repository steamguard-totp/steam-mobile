.class public Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;
.super Landroid/widget/ImageView;
.source "NetworkImageViewWithBackup.java"


# static fields
.field private static final badImageUrls:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackupUrl:Ljava/lang/String;

.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->badImageUrls:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->badImageUrls:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->loadImageIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;)I
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    .prologue
    .line 15
    iget v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;)I
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;

    .prologue
    .line 15
    iget v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mDefaultImageId:I

    return v0
.end method

.method private loadImageIfNecessary(Z)V
    .locals 8
    .param p1, "isInLayoutPass"    # Z

    .prologue
    const/4 v7, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->getWidth()I

    move-result v4

    .line 90
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->getHeight()I

    move-result v1

    .line 92
    .local v1, "height":I
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mUrl:Ljava/lang/String;

    .line 93
    .local v3, "url":Ljava/lang/String;
    sget-object v5, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->badImageUrls:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    sget-object v5, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->badImageUrls:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mBackupUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mBackupUrl:Ljava/lang/String;

    .line 102
    :cond_0
    :goto_0
    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 178
    :cond_1
    :goto_1
    return-void

    .line 97
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 109
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v5, :cond_4

    .line 110
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 111
    iput-object v7, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 113
    :cond_4
    invoke-virtual {p0, v7}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 118
    :cond_5
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 119
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 125
    invoke-virtual {p0, v7}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    :cond_6
    move-object v0, v3

    .line 132
    .local v0, "currentUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v6, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;

    invoke-direct {v6, p0, v0, p1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;Ljava/lang/String;Z)V

    invoke-virtual {v5, v0, v6}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v2

    .line 177
    .local v2, "newContainer":Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    iput-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 202
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->invalidate()V

    .line 203
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 192
    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 196
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 197
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 182
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->loadImageIfNecessary(Z)V

    .line 184
    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .param p1, "defaultImage"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mDefaultImageId:I

    .line 74
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .param p1, "errorImage"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mErrorImageId:I

    .line 82
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "backupUrl"    # Ljava/lang/String;
    .param p3, "imageLoader"    # Lcom/android/volley/toolbox/ImageLoader;

    .prologue
    .line 61
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mBackupUrl:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mUrl:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/NetworkImageViewWithBackup;->loadImageIfNecessary(Z)V

    .line 66
    return-void
.end method
