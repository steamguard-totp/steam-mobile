.class public Lcom/google/firebase/database/connection/idl/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field final zzbZx:Z

.field final zzbZz:Ljava/lang/String;

.field final zzcaQ:Lcom/google/firebase/database/connection/idl/zzf;

.field final zzcaR:I

.field final zzcaS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzcaT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzd;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/zzd;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/firebase/database/connection/idl/zzf;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/firebase/database/connection/idl/zzf;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->versionCode:I

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaQ:Lcom/google/firebase/database/connection/idl/zzf;

    iput p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaR:I

    iput-object p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaS:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzbZx:Z

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaT:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzbZz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/connection/idl/zzd;->zza(Lcom/google/firebase/database/connection/idl/zzc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzWu()Lcom/google/android/gms/internal/zzboq$zza;
    .locals 1

    iget v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaR:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgJ:Lcom/google/android/gms/internal/zzboq$zza;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgJ:Lcom/google/android/gms/internal/zzboq$zza;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgF:Lcom/google/android/gms/internal/zzboq$zza;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgG:Lcom/google/android/gms/internal/zzboq$zza;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgH:Lcom/google/android/gms/internal/zzboq$zza;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgI:Lcom/google/android/gms/internal/zzboq$zza;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public zzWv()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaS:Ljava/util/List;

    return-object v0
.end method
