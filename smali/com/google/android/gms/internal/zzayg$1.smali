.class Lcom/google/android/gms/internal/zzayg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzayg;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbHu:Lcom/google/android/gms/internal/zzayg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayg$1;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$1;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$1;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzb(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzaze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaze;->dispatch()V

    :cond_0
    return-void
.end method
