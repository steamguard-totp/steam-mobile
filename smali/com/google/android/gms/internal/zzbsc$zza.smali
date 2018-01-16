.class Lcom/google/android/gms/internal/zzbsc$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbsc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzcmR:Lcom/google/android/gms/internal/zzbrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbrz",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzcmS:Lcom/google/android/gms/internal/zzbrq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbrq",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzcmW:Lcom/google/android/gms/internal/zzbth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbth",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzcmX:Z

.field private final zzcmY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbth;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzbth",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbrz;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzbrz;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmR:Lcom/google/android/gms/internal/zzbrz;

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzbrq;

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmS:Lcom/google/android/gms/internal/zzbrq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmR:Lcom/google/android/gms/internal/zzbrz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmS:Lcom/google/android/gms/internal/zzbrq;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsj;->zzas(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmW:Lcom/google/android/gms/internal/zzbth;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmX:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmY:Ljava/lang/Class;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbth;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzbsc$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbsc$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbth;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbrl;",
            "Lcom/google/android/gms/internal/zzbth",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzbsd",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmW:Lcom/google/android/gms/internal/zzbth;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmW:Lcom/google/android/gms/internal/zzbth;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbth;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmW:Lcom/google/android/gms/internal/zzbth;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbth;->zzacc()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbth;->zzacb()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbsc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmR:Lcom/google/android/gms/internal/zzbrz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmS:Lcom/google/android/gms/internal/zzbrq;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbsc;-><init>(Lcom/google/android/gms/internal/zzbrz;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbse;Lcom/google/android/gms/internal/zzbsc$1;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsc$zza;->zzcmY:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbth;->zzacb()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method
