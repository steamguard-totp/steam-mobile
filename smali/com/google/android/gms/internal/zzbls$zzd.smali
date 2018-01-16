.class Lcom/google/android/gms/internal/zzbls$zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzcao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcaq:Ljava/lang/String;

.field private final zzcar:Lcom/google/android/gms/internal/zzblu;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzblu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzblu;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbls$zzd;->zzcaq:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbls$zzd;->zzcao:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbls$zzd;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbls$zzd;->zzcar:Lcom/google/android/gms/internal/zzblu;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzblu;Lcom/google/android/gms/internal/zzbls$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbls$zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbls$zzd;)Lcom/google/android/gms/internal/zzblu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzd;->zzcar:Lcom/google/android/gms/internal/zzblu;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzd;->zzcaq:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzd;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public zzWe()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzd;->zzcao:Ljava/util/List;

    return-object v0
.end method

.method public zzWf()Lcom/google/android/gms/internal/zzblu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzd;->zzcar:Lcom/google/android/gms/internal/zzblu;

    return-object v0
.end method
