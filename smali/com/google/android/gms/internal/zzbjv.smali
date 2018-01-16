.class public Lcom/google/android/gms/internal/zzbjv;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzaiW:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "email"
    .end annotation
.end field

.field private zzbWB:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "newEmail"
    .end annotation
.end field

.field private zzbWC:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "requestType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbjv;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjv;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjv;->zzaiW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbjv;->zzbWB:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjv;->zzbWC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjv;->zzaiW:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjw;->zza(Lcom/google/android/gms/internal/zzbjv;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjv;->zzbWB:Ljava/lang/String;

    return-object v0
.end method

.method public zzUz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjv;->zzbWC:Ljava/lang/String;

    return-object v0
.end method
