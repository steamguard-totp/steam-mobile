.class Lcom/google/android/gms/internal/zzls$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzls;->zzcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzPR:Lcom/google/android/gms/internal/zzls;

.field final synthetic zzsW:Lcom/google/android/gms/internal/zzov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzls;Lcom/google/android/gms/internal/zzov;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzls$1;->zzPR:Lcom/google/android/gms/internal/zzls;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzls$1;->zzsW:Lcom/google/android/gms/internal/zzov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls$1;->zzPR:Lcom/google/android/gms/internal/zzls;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzls;->zza(Lcom/google/android/gms/internal/zzls;)Lcom/google/android/gms/internal/zzln$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzls$1;->zzsW:Lcom/google/android/gms/internal/zzov;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzln$zza;->zzb(Lcom/google/android/gms/internal/zzov;)V

    return-void
.end method
