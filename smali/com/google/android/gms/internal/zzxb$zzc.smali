.class Lcom/google/android/gms/internal/zzxb$zzc;
.super Lcom/google/android/gms/internal/zzxd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzasd:Lcom/google/android/gms/internal/zzxb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzxb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxb$zzc;->zzasd:Lcom/google/android/gms/internal/zzxb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxd$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzxb;Lcom/google/android/gms/internal/zzxb$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzxb$zzc;-><init>(Lcom/google/android/gms/internal/zzxb;)V

    return-void
.end method


# virtual methods
.method public zzb(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$zzc;->zzasd:Lcom/google/android/gms/internal/zzxb;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzxb;->zza(Lcom/google/android/gms/internal/zzxb;[Ljava/lang/Object;)V

    return-void
.end method

.method public zzsd()I
    .locals 1

    const v0, 0x99df70

    return v0
.end method
