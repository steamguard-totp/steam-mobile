.class public abstract Lcom/google/android/gms/internal/zzyj;
.super Lcom/google/android/gms/internal/zzyk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzyj$zza;
    }
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected final zzauL:J

.field protected final zzauM:Ljava/lang/Runnable;

.field protected zzauN:Z

.field protected final zzuI:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/internal/zzyk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyj;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyj;->zzuI:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Lcom/google/android/gms/internal/zzyj$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzyj$zza;-><init>(Lcom/google/android/gms/internal/zzyj;Lcom/google/android/gms/internal/zzyj$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyj;->zzauM:Ljava/lang/Runnable;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzyj;->zzauL:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzyj;->zzao(Z)V

    return-void
.end method


# virtual methods
.method protected abstract zzE(J)Z
.end method

.method protected final zzao(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzyj;->zzauN:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzyj;->zzauN:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyj;->zzauM:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzyj;->zzauL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyj;->zzauM:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public zzua()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzyj;->zzao(Z)V

    return-void
.end method
