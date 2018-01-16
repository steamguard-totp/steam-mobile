.class Lcom/google/firebase/database/connection/idl/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field final zzaFs:Ljava/lang/String;

.field final zzbZA:Ljava/lang/String;

.field final zzbZB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzg;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/zzg;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/firebase/database/connection/idl/zzf;->versionCode:I

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzbZA:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzaFs:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzbZB:Z

    return-void
.end method

.method public static zza(Lcom/google/firebase/database/connection/idl/zzf;)Lcom/google/android/gms/internal/zzblp;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzblp;

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzbZA:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzaFs:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzbZB:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzblp;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/connection/idl/zzg;->zza(Lcom/google/firebase/database/connection/idl/zzf;Landroid/os/Parcel;I)V

    return-void
.end method
