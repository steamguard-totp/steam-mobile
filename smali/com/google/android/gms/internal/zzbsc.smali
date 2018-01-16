.class final Lcom/google/android/gms/internal/zzbsc;
.super Lcom/google/android/gms/internal/zzbsd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbsc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
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

.field private final zzcmR:Lcom/google/android/gms/internal/zzbrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbrz",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcmS:Lcom/google/android/gms/internal/zzbrq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbrq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcmT:Lcom/google/android/gms/internal/zzbrl;

.field private final zzcmU:Lcom/google/android/gms/internal/zzbth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbth",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcmV:Lcom/google/android/gms/internal/zzbse;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbrz;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrz",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzbrq",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzbrl;",
            "Lcom/google/android/gms/internal/zzbth",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzbse;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmR:Lcom/google/android/gms/internal/zzbrz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmS:Lcom/google/android/gms/internal/zzbrq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmT:Lcom/google/android/gms/internal/zzbrl;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmU:Lcom/google/android/gms/internal/zzbth;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmV:Lcom/google/android/gms/internal/zzbse;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbrz;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbse;Lcom/google/android/gms/internal/zzbsc$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzbsc;-><init>(Lcom/google/android/gms/internal/zzbrz;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbse;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbth;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbth",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzbse;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbsc$zza;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbsc$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbth;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzbsc$1;)V

    return-object v0
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmT:Lcom/google/android/gms/internal/zzbrl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmV:Lcom/google/android/gms/internal/zzbse;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmU:Lcom/google/android/gms/internal/zzbth;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrl;->zza(Lcom/google/android/gms/internal/zzbse;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmC:Lcom/google/android/gms/internal/zzbsd;

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzbth;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbth",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzbse;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbth;->zzacc()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbth;->zzacb()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzbsc$zza;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbsc$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbth;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzbsc$1;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V
    .locals 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmR:Lcom/google/android/gms/internal/zzbrz;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsc;->zzabG()Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbsd;->zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbtk;->zzaca()Lcom/google/android/gms/internal/zzbtk;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmR:Lcom/google/android/gms/internal/zzbrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmU:Lcom/google/android/gms/internal/zzbth;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbth;->zzacc()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmT:Lcom/google/android/gms/internal/zzbrl;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbrl;->zzcmA:Lcom/google/android/gms/internal/zzbry;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzbrz;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbry;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbss;->zzb(Lcom/google/android/gms/internal/zzbrr;Lcom/google/android/gms/internal/zzbtk;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;
    .locals 4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmS:Lcom/google/android/gms/internal/zzbrq;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsc;->zzabG()Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsd;->zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbss;->zzh(Lcom/google/android/gms/internal/zzbti;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrr;->zzaby()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmS:Lcom/google/android/gms/internal/zzbrq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmU:Lcom/google/android/gms/internal/zzbth;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbth;->zzacc()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbsc;->zzcmT:Lcom/google/android/gms/internal/zzbrl;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzbrl;->zzcmz:Lcom/google/android/gms/internal/zzbrp;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbrq;->zzb(Lcom/google/android/gms/internal/zzbrr;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbrp;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbrv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbrv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbrv;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
