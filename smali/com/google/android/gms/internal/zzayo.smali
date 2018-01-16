.class Lcom/google/android/gms/internal/zzayo;
.super Ljava/lang/Object;


# instance fields
.field private final zzafh:J

.field private final zzbEk:J

.field private final zzbEl:J

.field private zzbEm:Ljava/lang/String;

.field private zzbHK:Ljava/lang/String;

.field private zzbHL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbHM:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzayo;->zzbEk:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzayo;->zzafh:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzayo;->zzbEl:J

    return-void
.end method


# virtual methods
.method zzPi()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzayo;->zzbEk:J

    return-wide v0
.end method

.method zzPj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzayo;->zzbEl:J

    return-wide v0
.end method

.method zzPk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayo;->zzbEm:Ljava/lang/String;

    return-object v0
.end method

.method zzQt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayo;->zzbHK:Ljava/lang/String;

    return-object v0
.end method

.method zzQu()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayo;->zzbHL:Ljava/util/Map;

    return-object v0
.end method

.method zzQv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayo;->zzbHM:Ljava/lang/String;

    return-object v0
.end method

.method zzam(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayo;->zzbHL:Ljava/util/Map;

    return-void
.end method

.method zzhH(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayo;->zzbHK:Ljava/lang/String;

    return-void
.end method

.method zzhI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayo;->zzbHM:Ljava/lang/String;

    return-void
.end method

.method zzhl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzayo;->zzbEm:Ljava/lang/String;

    goto :goto_0
.end method
