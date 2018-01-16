.class Lcom/google/android/gms/internal/zzazj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzazj;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbIC:Lcom/google/android/gms/internal/zzazj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazj$2;->zzbIC:Lcom/google/android/gms/internal/zzazj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj$2;->zzbIC:Lcom/google/android/gms/internal/zzazj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzazj;->zza(Lcom/google/android/gms/internal/zzazj;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazj$2;->zzbIC:Lcom/google/android/gms/internal/zzazj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazj;->zze(Lcom/google/android/gms/internal/zzazj;)Lcom/google/android/gms/internal/zzays;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzays;->dispatch()V

    return-void
.end method
