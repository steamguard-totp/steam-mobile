.class Lcom/google/android/gms/internal/zzbls$zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zze"
.end annotation


# instance fields
.field private final zzcas:Lcom/google/android/gms/internal/zzblu;

.field private final zzcat:Lcom/google/android/gms/internal/zzbls$zzc;

.field private final zzcau:Lcom/google/android/gms/internal/zzblq;

.field private final zzcav:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzblu;Lcom/google/android/gms/internal/zzbls$zzc;Ljava/lang/Long;Lcom/google/android/gms/internal/zzblq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcas:Lcom/google/android/gms/internal/zzblu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcat:Lcom/google/android/gms/internal/zzbls$zzc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcau:Lcom/google/android/gms/internal/zzblq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcav:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzblu;Lcom/google/android/gms/internal/zzbls$zzc;Ljava/lang/Long;Lcom/google/android/gms/internal/zzblq;Lcom/google/android/gms/internal/zzbls$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbls$zze;-><init>(Lcom/google/android/gms/internal/zzblu;Lcom/google/android/gms/internal/zzbls$zzc;Ljava/lang/Long;Lcom/google/android/gms/internal/zzblq;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbls$zze;)Lcom/google/android/gms/internal/zzbls$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcat:Lcom/google/android/gms/internal/zzbls$zzc;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbls$zze;)Lcom/google/android/gms/internal/zzblu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcas:Lcom/google/android/gms/internal/zzblu;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcat:Lcom/google/android/gms/internal/zzbls$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbls$zzc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcav:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (Tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzWg()Lcom/google/android/gms/internal/zzbls$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcat:Lcom/google/android/gms/internal/zzbls$zzc;

    return-object v0
.end method

.method public zzWh()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcav:Ljava/lang/Long;

    return-object v0
.end method

.method public zzWi()Lcom/google/android/gms/internal/zzblq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zze;->zzcau:Lcom/google/android/gms/internal/zzblq;

    return-object v0
.end method
