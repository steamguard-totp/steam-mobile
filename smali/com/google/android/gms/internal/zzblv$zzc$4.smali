.class Lcom/google/android/gms/internal/zzblv$zzc$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzblv$zzc;->zza(Lcom/google/android/gms/internal/zzbpq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

.field final synthetic zzcaP:Lcom/google/android/gms/internal/zzbpq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblv$zzc;Lcom/google/android/gms/internal/zzbpq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblv$zzc$4;->zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzblv$zzc$4;->zzcaP:Lcom/google/android/gms/internal/zzbpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$zzc$4;->zzcaP:Lcom/google/android/gms/internal/zzbpq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$zzc$4;->zzcaP:Lcom/google/android/gms/internal/zzbpq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpq;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$zzc$4;->zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblv$zzc;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzb(Lcom/google/android/gms/internal/zzblv;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    const-string v1, "WebSocket reached EOF."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$zzc$4;->zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblv$zzc;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zze(Lcom/google/android/gms/internal/zzblv;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$zzc$4;->zzcaN:Lcom/google/android/gms/internal/zzblv$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblv$zzc;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzb(Lcom/google/android/gms/internal/zzblv;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    const-string v1, "WebSocket error."

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblv$zzc$4;->zzcaP:Lcom/google/android/gms/internal/zzbpq;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
