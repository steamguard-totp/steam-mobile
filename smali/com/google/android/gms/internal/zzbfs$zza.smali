.class public Lcom/google/android/gms/internal/zzbfs$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzbKA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbfv;",
            ">;"
        }
    .end annotation
.end field

.field private zzbKB:Lcom/google/android/gms/internal/zzbfv;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbfs$zza;->zzbKA:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zzRu()Lcom/google/android/gms/internal/zzbfs;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbfs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbfs$zza;->zzbKA:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbfs$zza;->zzbKB:Lcom/google/android/gms/internal/zzbfv;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfs;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbfv;Lcom/google/android/gms/internal/zzbfs$1;)V

    return-object v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbfv;)Lcom/google/android/gms/internal/zzbfs$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfs$zza;->zzbKA:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbfv;)Lcom/google/android/gms/internal/zzbfs$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbfs$zza;->zzbKB:Lcom/google/android/gms/internal/zzbfv;

    return-object p0
.end method
