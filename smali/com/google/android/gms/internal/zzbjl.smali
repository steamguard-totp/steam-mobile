.class public Lcom/google/android/gms/internal/zzbjl;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzaMA:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "localId"
    .end annotation
.end field

.field private zzaPq:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "photoUrl"
    .end annotation
.end field

.field private zzaiW:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "email"
    .end annotation
.end field

.field private zzaiX:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "displayName"
    .end annotation
.end field

.field private zzaig:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "passwordHash"
    .end annotation
.end field

.field private zzbWs:Z
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "emailVerified"
    .end annotation
.end field

.field private zzbWt:Lcom/google/android/gms/internal/zzbjt;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "providerUserInfo"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbjl;->mVersionCode:I

    new-instance v0, Lcom/google/android/gms/internal/zzbjt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzbWt:Lcom/google/android/gms/internal/zzbjt;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbjt;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjl;->zzaMA:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbjl;->zzaiW:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbjl;->zzbWs:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbjl;->zzaiX:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbjl;->zzaPq:Ljava/lang/String;

    if-nez p7, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbjt;->zzUx()Lcom/google/android/gms/internal/zzbjt;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzbWt:Lcom/google/android/gms/internal/zzbjt;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbjl;->zzaig:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p7}, Lcom/google/android/gms/internal/zzbjt;->zza(Lcom/google/android/gms/internal/zzbjt;)Lcom/google/android/gms/internal/zzbjt;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzaiX:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzaiW:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzaMA:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzaig:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzbWs:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjm;->zza(Lcom/google/android/gms/internal/zzbjl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzaPq:Ljava/lang/String;

    return-object v0
.end method

.method public zzUq()Lcom/google/android/gms/internal/zzbjt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjl;->zzbWt:Lcom/google/android/gms/internal/zzbjt;

    return-object v0
.end method
