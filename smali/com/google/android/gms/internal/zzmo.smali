.class public Lcom/google/android/gms/internal/zzmo;
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
            "Lcom/google/android/gms/internal/zzmo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzSk:Z

.field public final zzSl:Z

.field public final zzSm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzmp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzmo;->versionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzmo;->zzSk:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzmo;->zzSl:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzmo;->zzSm:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzmo;-><init>(IZZZ)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iap_supported"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmo;->zzSk:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "default_iap_supported"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmo;->zzSl:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "app_streaming_supported"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmo;->zzSm:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzmp;->zza(Lcom/google/android/gms/internal/zzmo;Landroid/os/Parcel;I)V

    return-void
.end method
