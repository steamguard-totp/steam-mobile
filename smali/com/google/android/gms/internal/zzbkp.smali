.class public Lcom/google/android/gms/internal/zzbkp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbkp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private zzbUL:Ljava/lang/String;

.field private zzbXc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkp;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkp;->zzbXc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkp;->zzbUL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbkp;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkp;->zzbXc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkp;->zzbUL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkp;->zzbUL:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkq;->zza(Lcom/google/android/gms/internal/zzbkp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkp;->zzbXc:Ljava/lang/String;

    return-object v0
.end method
