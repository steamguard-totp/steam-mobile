.class public Lcom/google/android/gms/internal/zzbjg;
.super Lcom/google/android/gms/internal/zzbsd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbsd",
        "<",
        "Lcom/google/android/gms/internal/zzbjt;",
        ">;"
    }
.end annotation


# instance fields
.field private zzbVW:Lcom/google/android/gms/internal/zzbrl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsd;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrl;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjg;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbtk;Lcom/google/android/gms/internal/zzbjt;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbtk;->zzaca()Lcom/google/android/gms/internal/zzbtk;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjg;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    const-class v1, Lcom/google/android/gms/internal/zzbjr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrl;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbtk;->zzabW()Lcom/google/android/gms/internal/zzbtk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbjt;->zzUp()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjr;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/zzbsd;->zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbtk;->zzabX()Lcom/google/android/gms/internal/zzbtk;

    goto :goto_0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/zzbjt;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjg;->zza(Lcom/google/android/gms/internal/zzbtk;Lcom/google/android/gms/internal/zzbjt;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjg;->zzc(Lcom/google/android/gms/internal/zzbti;)Lcom/google/android/gms/internal/zzbjt;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbti;)Lcom/google/android/gms/internal/zzbjt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->zzabQ()Lcom/google/android/gms/internal/zzbtj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbtj;->zzcqa:Lcom/google/android/gms/internal/zzbtj;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzbjt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbjt;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjg;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    const-class v2, Lcom/google/android/gms/internal/zzbjr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbrl;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzbsd;->zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbjt;->zzUp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->endArray()V

    move-object v0, v1

    goto :goto_0
.end method
