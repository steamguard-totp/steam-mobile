.class public Lcom/google/android/gms/internal/zzbjr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzaPq:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "photoUrl"
    .end annotation
.end field

.field private zzaiX:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "displayName"
    .end annotation
.end field

.field private zzbWp:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "providerId"
    .end annotation
.end field

.field private zzbWy:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "federatedId"
    .end annotation
.end field

.field private zzbWz:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "rawUserInfo"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbjr;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjr;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjr;->zzbWy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbjr;->zzaiX:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjr;->zzaPq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbjr;->zzbWp:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbjr;->zzbWz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjr;->zzaiX:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjr;->zzbWp:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjr;->zzbWz:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjs;->zza(Lcom/google/android/gms/internal/zzbjr;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjr;->zzaPq:Ljava/lang/String;

    return-object v0
.end method

.method public zzUw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjr;->zzbWy:Ljava/lang/String;

    return-object v0
.end method
