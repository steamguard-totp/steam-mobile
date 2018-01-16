.class Lcom/google/android/gms/internal/zzatu$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatu;->zzfS(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbua:Lcom/google/android/gms/internal/zzatu;

.field final synthetic zzbuj:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatu;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatu$7;->zzbua:Lcom/google/android/gms/internal/zzatu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatu$7;->zzbuj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatu$7;->zzbua:Lcom/google/android/gms/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzJl()Lcom/google/android/gms/internal/zzatw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatu$7;->zzbuj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatw;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
