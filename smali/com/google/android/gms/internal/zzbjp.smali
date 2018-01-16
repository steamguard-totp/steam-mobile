.class public Lcom/google/android/gms/internal/zzbjp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I
    .annotation runtime Lcom/google/android/gms/internal/zzbjd;
    .end annotation
.end field

.field private zzbBR:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "access_token"
    .end annotation
.end field

.field private zzbVO:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "refresh_token"
    .end annotation
.end field

.field private zzbWv:Ljava/lang/Long;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "expires_in"
    .end annotation
.end field

.field private zzbWw:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "token_type"
    .end annotation
.end field

.field private zzbWx:Ljava/lang/Long;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "issued_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbjp;->mVersionCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzbWx:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjp;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjp;->zzbVO:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbjp;->zzbBR:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjp;->zzbWv:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbjp;->zzbWw:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbjp;->zzbWx:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzbBR:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjq;->zza(Lcom/google/android/gms/internal/zzbjp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzbVO:Ljava/lang/String;

    return-object v0
.end method

.method public zzUt()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzbWv:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzbWv:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public zzUu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzbWw:Ljava/lang/String;

    return-object v0
.end method

.method public zzUv()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzbWx:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
