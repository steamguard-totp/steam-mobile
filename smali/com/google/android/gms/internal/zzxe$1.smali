.class Lcom/google/android/gms/internal/zzxe$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzxa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxe;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzwz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzasl:Lcom/google/android/gms/internal/zzxe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxe$1;->zzasl:Lcom/google/android/gms/internal/zzxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzxe;->zzd(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxe$1;->zzasl:Lcom/google/android/gms/internal/zzxe;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzxe;->zza(Lcom/google/android/gms/internal/zzxe;Landroid/graphics/Bitmap;I)V

    return-void
.end method
