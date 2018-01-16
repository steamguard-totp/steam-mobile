.class public Lcom/google/android/gms/internal/zzbjz;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzHF:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "postBody"
    .end annotation
.end field

.field private zzaiW:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzaix:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzbBR:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzbWE:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "requestUri"
    .end annotation
.end field

.field private zzbWF:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "idToken"
    .end annotation
.end field

.field private zzbWG:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "oauthTokenSecret"
    .end annotation
.end field

.field private zzbWH:Z
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "returnSecureToken"
    .end annotation
.end field

.field private zzbWp:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbka;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzbjz;->mVersionCode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWH:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjz;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWE:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWF:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjz;->zzaix:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbjz;->zzbBR:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWp:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbjz;->zzaiW:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbjz;->zzHF:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWG:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWH:Z

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbBR:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzaiW:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzaix:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWp:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbka;->zza(Lcom/google/android/gms/internal/zzbjz;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWE:Ljava/lang/String;

    return-object v0
.end method

.method public zzUD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWF:Ljava/lang/String;

    return-object v0
.end method

.method public zzUE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWG:Ljava/lang/String;

    return-object v0
.end method

.method public zzUF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzbWH:Z

    return v0
.end method

.method public zzgc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzHF:Ljava/lang/String;

    return-object v0
.end method
