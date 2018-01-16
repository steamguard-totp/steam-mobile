.class public Lcom/google/android/gms/internal/zzbft$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzbKC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbfs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbKD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbfs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbKE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbfs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbKF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbfs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKC:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKD:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKE:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKF:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public zzRz()Lcom/google/android/gms/internal/zzbft;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzbft;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKC:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKD:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKE:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKF:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbft;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzbft$1;)V

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzbfs;)Lcom/google/android/gms/internal/zzbft$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zze(Lcom/google/android/gms/internal/zzbfs;)Lcom/google/android/gms/internal/zzbft$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzbfs;)Lcom/google/android/gms/internal/zzbft$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbfs;)Lcom/google/android/gms/internal/zzbft$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbft$zza;->zzbKF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
