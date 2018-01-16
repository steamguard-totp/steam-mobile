.class Lcom/google/android/gms/internal/zzbls$zzf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzf"
.end annotation


# instance fields
.field private zzcaq:Ljava/lang/String;

.field private zzcar:Lcom/google/android/gms/internal/zzblu;

.field private zzcaw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzcax:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzblu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzblu;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcaq:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcaw:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcar:Lcom/google/android/gms/internal/zzblu;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzblu;Lcom/google/android/gms/internal/zzbls$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbls$zzf;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbls$zzf;)Lcom/google/android/gms/internal/zzblu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcar:Lcom/google/android/gms/internal/zzblu;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcaq:Ljava/lang/String;

    return-object v0
.end method

.method public zzWf()Lcom/google/android/gms/internal/zzblu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcar:Lcom/google/android/gms/internal/zzblu;

    return-object v0
.end method

.method public zzWj()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcaw:Ljava/util/Map;

    return-object v0
.end method

.method public zzWk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcax:Z

    return-void
.end method

.method public zzWl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbls$zzf;->zzcax:Z

    return v0
.end method
