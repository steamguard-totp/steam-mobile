.class public Lcom/google/android/gms/internal/zzbfi$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbfi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzbIk:Lcom/google/android/gms/internal/zzbfr;

.field private final zzbKk:[B

.field private final zzbKl:J

.field private final zzbKm:Lcom/google/android/gms/internal/zzbfa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbfa;[BLcom/google/android/gms/internal/zzbfr;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbfi$zza;->zzbKm:Lcom/google/android/gms/internal/zzbfa;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbfi$zza;->zzbKk:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbfi$zza;->zzbIk:Lcom/google/android/gms/internal/zzbfr;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzbfi$zza;->zzbKl:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbfr;)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbfi$zza;-><init>(Lcom/google/android/gms/internal/zzbfa;[BLcom/google/android/gms/internal/zzbfr;J)V

    return-void
.end method


# virtual methods
.method public zzRl()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfi$zza;->zzbKk:[B

    return-object v0
.end method

.method public zzRm()Lcom/google/android/gms/internal/zzbfa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfi$zza;->zzbKm:Lcom/google/android/gms/internal/zzbfa;

    return-object v0
.end method

.method public zzRn()Lcom/google/android/gms/internal/zzbfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfi$zza;->zzbIk:Lcom/google/android/gms/internal/zzbfr;

    return-object v0
.end method

.method public zzRo()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbfi$zza;->zzbKl:J

    return-wide v0
.end method
