.class public final Lcom/google/android/gms/internal/zzbsz;
.super Lcom/google/android/gms/internal/zzbtk;


# static fields
.field private static final zzcof:Ljava/io/Writer;

.field private static final zzcog:Lcom/google/android/gms/internal/zzbrx;


# instance fields
.field private final zzcoe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbrr;",
            ">;"
        }
    .end annotation
.end field

.field private zzcoh:Ljava/lang/String;

.field private zzcoi:Lcom/google/android/gms/internal/zzbrr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbsz$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsz$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbsz;->zzcof:Ljava/io/Writer;

    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsz;->zzcog:Lcom/google/android/gms/internal/zzbrx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbsz;->zzcof:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbtk;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/zzbrt;->zzcmL:Lcom/google/android/gms/internal/zzbrt;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoi:Lcom/google/android/gms/internal/zzbrr;

    return-void
.end method

.method private zzabV()Lcom/google/android/gms/internal/zzbrr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrr;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzbrr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoh:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrr;->zzaby()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbsz;->zzacn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsz;->zzabV()Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbru;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoh:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbru;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbrr;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoh:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoi:Lcom/google/android/gms/internal/zzbrr;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsz;->zzabV()Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbro;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/zzbro;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbro;->zzc(Lcom/google/android/gms/internal/zzbrr;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzbsz;->zzcog:Lcom/google/android/gms/internal/zzbrx;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzbtk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbsz;->zzaca()Lcom/google/android/gms/internal/zzbtk;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbsz;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbrx;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsz;->zzd(Lcom/google/android/gms/internal/zzbrr;)V

    goto :goto_0
.end method

.method public zzaU(J)Lcom/google/android/gms/internal/zzbtk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrx;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsz;->zzd(Lcom/google/android/gms/internal/zzbrr;)V

    return-object p0
.end method

.method public zzabU()Lcom/google/android/gms/internal/zzbrr;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected one JSON element but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoi:Lcom/google/android/gms/internal/zzbrr;

    return-object v0
.end method

.method public zzabW()Lcom/google/android/gms/internal/zzbtk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbro;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsz;->zzd(Lcom/google/android/gms/internal/zzbrr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzabX()Lcom/google/android/gms/internal/zzbtk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoh:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsz;->zzabV()Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbro;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public zzabY()Lcom/google/android/gms/internal/zzbtk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbru;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbru;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsz;->zzd(Lcom/google/android/gms/internal/zzbrr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzabZ()Lcom/google/android/gms/internal/zzbtk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoh:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsz;->zzabV()Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbru;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public zzaca()Lcom/google/android/gms/internal/zzbtk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbrt;->zzcmL:Lcom/google/android/gms/internal/zzbrt;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsz;->zzd(Lcom/google/android/gms/internal/zzbrr;)V

    return-object p0
.end method

.method public zzbg(Z)Lcom/google/android/gms/internal/zzbtk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrx;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsz;->zzd(Lcom/google/android/gms/internal/zzbrr;)V

    return-object p0
.end method

.method public zzjW(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbtk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoh:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsz;->zzabV()Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbru;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsz;->zzcoh:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public zzjX(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbtk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbsz;->zzaca()Lcom/google/android/gms/internal/zzbtk;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbrx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbrx;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsz;->zzd(Lcom/google/android/gms/internal/zzbrr;)V

    goto :goto_0
.end method
