.class Lcom/google/android/gms/internal/zzatu$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatu;->zzaI(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbua:Lcom/google/android/gms/internal/zzatu;

.field final synthetic zzbuj:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzbuk:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatu;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatu$6;->zzbua:Lcom/google/android/gms/internal/zzatu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatu$6;->zzbuj:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzatu$6;->zzbuk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatu$6;->zzbua:Lcom/google/android/gms/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzJl()Lcom/google/android/gms/internal/zzatw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatu$6;->zzbuj:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzatu$6;->zzbuk:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatw;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
