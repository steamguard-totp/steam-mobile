.class Lcom/google/android/gms/internal/zzbls$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbls;->zzVT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbZZ:Z

.field final synthetic zzcaa:Lcom/google/android/gms/internal/zzbls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbls;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbls$1;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbls$1;->zzbZZ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$1;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbls;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    const-string v3, "Trying to fetch auth token"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzbop;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$1;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/android/gms/internal/zzbls;)Lcom/google/android/gms/internal/zzbls$zzb;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/zzbls$zzb;->zzcai:Lcom/google/android/gms/internal/zzbls$zzb;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Not in disconnected state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbls$1;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/android/gms/internal/zzbls;)Lcom/google/android/gms/internal/zzbls$zzb;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzblo;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$1;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    sget-object v1, Lcom/google/android/gms/internal/zzbls$zzb;->zzcaj:Lcom/google/android/gms/internal/zzbls$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbls;Lcom/google/android/gms/internal/zzbls$zzb;)Lcom/google/android/gms/internal/zzbls$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$1;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbls;->zzc(Lcom/google/android/gms/internal/zzbls;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$1;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbls;->zzd(Lcom/google/android/gms/internal/zzbls;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$1;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbls;->zzf(Lcom/google/android/gms/internal/zzbls;)Lcom/google/android/gms/internal/zzblm;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbls$1;->zzbZZ:Z

    new-instance v4, Lcom/google/android/gms/internal/zzbls$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/zzbls$1$1;-><init>(Lcom/google/android/gms/internal/zzbls$1;J)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/zzblm;->zza(ZLcom/google/android/gms/internal/zzblm$zza;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
