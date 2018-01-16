.class public Lcom/google/android/gms/cast/framework/media/ImageHints;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/framework/media/ImageHints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzanR:I

.field private final zzaqM:I

.field private final zzaqN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/ImageHints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(IIII)V

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzanR:I

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzaqM:I

    iput p4, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzaqN:I

    return-void
.end method


# virtual methods
.method public getHeightInPixels()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzaqN:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzanR:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->mVersionCode:I

    return v0
.end method

.method public getWidthInPixels()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzaqM:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zzd;->zza(Lcom/google/android/gms/cast/framework/media/ImageHints;Landroid/os/Parcel;I)V

    return-void
.end method
