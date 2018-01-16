.class public Lcom/google/android/gms/internal/zzdo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzdo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final url:Ljava/lang/String;

.field public final version:I

.field public final zzyA:Ljava/lang/String;

.field public final zzyB:Landroid/os/Bundle;

.field public final zzyC:Z

.field public final zzyx:J

.field public final zzyy:Ljava/lang/String;

.field public final zzyz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzdo;->version:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdo;->url:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzdo;->zzyx:J

    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/internal/zzdo;->zzyy:Ljava/lang/String;

    if-eqz p6, :cond_1

    :goto_1
    iput-object p6, p0, Lcom/google/android/gms/internal/zzdo;->zzyz:Ljava/lang/String;

    if-eqz p7, :cond_2

    :goto_2
    iput-object p7, p0, Lcom/google/android/gms/internal/zzdo;->zzyA:Ljava/lang/String;

    if-eqz p8, :cond_3

    :goto_3
    iput-object p8, p0, Lcom/google/android/gms/internal/zzdo;->zzyB:Landroid/os/Bundle;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzdo;->zzyC:Z

    return-void

    :cond_0
    const-string p5, ""

    goto :goto_0

    :cond_1
    const-string p6, ""

    goto :goto_1

    :cond_2
    const-string p7, ""

    goto :goto_2

    :cond_3
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_3
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzdp;->zza(Lcom/google/android/gms/internal/zzdo;Landroid/os/Parcel;I)V

    return-void
.end method
