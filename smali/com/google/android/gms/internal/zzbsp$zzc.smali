.class abstract Lcom/google/android/gms/internal/zzbsp$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzcnE:Lcom/google/android/gms/internal/zzbsp;

.field zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field zzcnI:Lcom/google/android/gms/internal/zzbsp$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field zzcnJ:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbsp;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbsp;->zzcnB:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnI:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    iget v0, v0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnJ:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbsp;Lcom/google/android/gms/internal/zzbsp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbsp$zzc;-><init>(Lcom/google/android/gms/internal/zzbsp;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbsp;->zzcnB:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnI:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnI:Lcom/google/android/gms/internal/zzbsp$zzd;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsp;->zza(Lcom/google/android/gms/internal/zzbsp$zzd;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnI:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    iget v0, v0, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnJ:I

    return-void
.end method

.method final zzabL()Lcom/google/android/gms/internal/zzbsp$zzd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbsp$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbsp;->zzcnB:Lcom/google/android/gms/internal/zzbsp$zzd;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    iget v1, v1, Lcom/google/android/gms/internal/zzbsp;->modCount:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnJ:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnH:Lcom/google/android/gms/internal/zzbsp$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsp$zzc;->zzcnI:Lcom/google/android/gms/internal/zzbsp$zzd;

    return-object v0
.end method
