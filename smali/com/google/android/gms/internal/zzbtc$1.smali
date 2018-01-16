.class Lcom/google/android/gms/internal/zzbtc$1;
.super Lcom/google/android/gms/internal/zzbtc$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbtc;->zza(Lcom/google/android/gms/internal/zzbrl;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzbth;ZZ)Lcom/google/android/gms/internal/zzbtc$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final zzcoo:Lcom/google/android/gms/internal/zzbsd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsd",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic zzcop:Lcom/google/android/gms/internal/zzbrl;

.field final synthetic zzcoq:Ljava/lang/reflect/Field;

.field final synthetic zzcor:Lcom/google/android/gms/internal/zzbth;

.field final synthetic zzcos:Z

.field final synthetic zzcot:Lcom/google/android/gms/internal/zzbtc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbtc;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzbrl;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzbth;Z)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcot:Lcom/google/android/gms/internal/zzbtc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcop:Lcom/google/android/gms/internal/zzbrl;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcoq:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcor:Lcom/google/android/gms/internal/zzbth;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcos:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzbtc$zzb;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcot:Lcom/google/android/gms/internal/zzbtc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcop:Lcom/google/android/gms/internal/zzbrl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcoq:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcor:Lcom/google/android/gms/internal/zzbth;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbtc;->zza(Lcom/google/android/gms/internal/zzbtc;Lcom/google/android/gms/internal/zzbrl;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcoo:Lcom/google/android/gms/internal/zzbsd;

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzbti;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcoo:Lcom/google/android/gms/internal/zzbsd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsd;->zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcos:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcoq:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcoq:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbtf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcop:Lcom/google/android/gms/internal/zzbrl;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcoo:Lcom/google/android/gms/internal/zzbsd;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcor:Lcom/google/android/gms/internal/zzbth;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbth;->zzacc()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbtf;-><init>(Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbsd;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzbsd;->zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V

    return-void
.end method

.method public zzaQ(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcov:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtc$1;->zzcoq:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
