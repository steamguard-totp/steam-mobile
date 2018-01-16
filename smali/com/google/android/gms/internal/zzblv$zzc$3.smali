.class Lcom/google/android/gms/internal/zzblv$zzc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzblv$zzc;->onClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblv$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblv$zzc$3;->zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$zzc$3;->zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblv$zzc;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzb(Lcom/google/android/gms/internal/zzblv;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbop;->zzYT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$zzc$3;->zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblv$zzc;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzb(Lcom/google/android/gms/internal/zzblv;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    const-string v1, "closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$zzc$3;->zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblv$zzc;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zze(Lcom/google/android/gms/internal/zzblv;)V

    return-void
.end method
