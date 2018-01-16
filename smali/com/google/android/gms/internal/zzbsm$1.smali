.class Lcom/google/android/gms/internal/zzbsm$1;
.super Lcom/google/android/gms/internal/zzbsd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbsm;->zza(Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbsd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private zzcmC:Lcom/google/android/gms/internal/zzbsd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsd",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic zzcnt:Z

.field final synthetic zzcnu:Z

.field final synthetic zzcnv:Lcom/google/android/gms/internal/zzbrl;

.field final synthetic zzcnw:Lcom/google/android/gms/internal/zzbth;

.field final synthetic zzcnx:Lcom/google/android/gms/internal/zzbsm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbsm;ZZLcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnx:Lcom/google/android/gms/internal/zzbsm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnt:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnu:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnv:Lcom/google/android/gms/internal/zzbrl;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnw:Lcom/google/android/gms/internal/zzbth;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsd;-><init>()V

    return-void
.end method

.method private zzabG()Lcom/google/android/gms/internal/zzbsd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbsd",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnv:Lcom/google/android/gms/internal/zzbrl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnx:Lcom/google/android/gms/internal/zzbsm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnw:Lcom/google/android/gms/internal/zzbth;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrl;->zza(Lcom/google/android/gms/internal/zzbse;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbtk;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbtk;->zzaca()Lcom/google/android/gms/internal/zzbtk;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsm$1;->zzabG()Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbsd;->zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbti;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbsm$1;->zzcnt:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->skipValue()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsm$1;->zzabG()Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsd;->zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
