.class public Lcom/google/android/gms/internal/zzbjj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzafv:Z
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "registered"
    .end annotation
.end field

.field private zzbWo:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "authUri"
    .end annotation
.end field

.field private zzbWp:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "providerId"
    .end annotation
.end field

.field private zzbWq:Z
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "forExistingProvider"
    .end annotation
.end field

.field private zzbWr:Lcom/google/android/gms/internal/zzbjx;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "allProviders"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbjj;->mVersionCode:I

    invoke-static {}, Lcom/google/android/gms/internal/zzbjx;->zzUB()Lcom/google/android/gms/internal/zzbjx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWr:Lcom/google/android/gms/internal/zzbjx;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/zzbjx;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjj;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWo:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbjj;->zzafv:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWp:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWq:Z

    if-nez p6, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbjx;->zzUB()Lcom/google/android/gms/internal/zzbjx;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWr:Lcom/google/android/gms/internal/zzbjx;

    return-void

    :cond_0
    invoke-static {p6}, Lcom/google/android/gms/internal/zzbjx;->zza(Lcom/google/android/gms/internal/zzbjx;)Lcom/google/android/gms/internal/zzbjx;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWp:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbjj;->zzafv:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjk;->zza(Lcom/google/android/gms/internal/zzbjj;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWo:Ljava/lang/String;

    return-object v0
.end method

.method public zzUn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWq:Z

    return v0
.end method

.method public zzUo()Lcom/google/android/gms/internal/zzbjx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjj;->zzbWr:Lcom/google/android/gms/internal/zzbjx;

    return-object v0
.end method
