.class public Lcom/google/android/gms/internal/zzxa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzxb$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzxa$zza;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final zzOZ:Landroid/content/Context;

.field private final zzarV:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzarW:Landroid/net/Uri;

.field private zzarX:Lcom/google/android/gms/internal/zzxb;

.field private zzarY:Lcom/google/android/gms/internal/zzxb$zzb;

.field private zzarZ:Z

.field private zzasa:Lcom/google/android/gms/internal/zzxa$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzxa;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxa;->zzOZ:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxa;->zzarV:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance v0, Lcom/google/android/gms/internal/zzxb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzxb$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarY:Lcom/google/android/gms/internal/zzxb$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxa;->reset()V

    return-void
.end method

.method private reset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarX:Lcom/google/android/gms/internal/zzxb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarX:Lcom/google/android/gms/internal/zzxb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxb;->cancel(Z)Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzxa;->zzarX:Lcom/google/android/gms/internal/zzxb;

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/internal/zzxa;->zzarW:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzxa;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarZ:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxa;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzasa:Lcom/google/android/gms/internal/zzxa$zza;

    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxa;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarZ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzasa:Lcom/google/android/gms/internal/zzxa$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzasa:Lcom/google/android/gms/internal/zzxa$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzxa$zza;->zzc(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarX:Lcom/google/android/gms/internal/zzxb;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzxa$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxa;->zzasa:Lcom/google/android/gms/internal/zzxa$zza;

    return-void
.end method

.method public zzo(Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxa;->reset()V

    move v4, v0

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzarW:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxa;->reset()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxa;->zzarW:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarV:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarV:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarY:Lcom/google/android/gms/internal/zzxb$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzOZ:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/zzxb$zzb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzxb$zza;)Lcom/google/android/gms/internal/zzxb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarX:Lcom/google/android/gms/internal/zzxb;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarX:Lcom/google/android/gms/internal/zzxb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzarW:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxb;->zzp(Landroid/net/Uri;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarY:Lcom/google/android/gms/internal/zzxb$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzOZ:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->zzarV:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzxa;->zzarV:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzxb$zzb;->zza(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzxb$zza;)Lcom/google/android/gms/internal/zzxb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzarX:Lcom/google/android/gms/internal/zzxb;

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzxa;->zzarZ:Z

    if-eqz v1, :cond_0

    move v4, v0

    goto :goto_0
.end method
