.class Lcom/google/android/gms/internal/zzbls$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbls$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/android/gms/internal/zzbls$zze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaa:Lcom/google/android/gms/internal/zzbls;

.field final synthetic zzcah:Lcom/google/android/gms/internal/zzbls$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbls;Lcom/google/android/gms/internal/zzbls$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcah:Lcom/google/android/gms/internal/zzbls$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzaz(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "w"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "w"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcah:Lcom/google/android/gms/internal/zzbls$zze;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbls$zze;->zzc(Lcom/google/android/gms/internal/zzbls$zze;)Lcom/google/android/gms/internal/zzbls$zzc;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbls;Ljava/util/List;Lcom/google/android/gms/internal/zzbls$zzc;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbls;->zzo(Lcom/google/android/gms/internal/zzbls;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcah:Lcom/google/android/gms/internal/zzbls$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbls$zze;->zzWg()Lcom/google/android/gms/internal/zzbls$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbls$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcah:Lcom/google/android/gms/internal/zzbls$zze;

    if-ne v1, v2, :cond_1

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcaa:Lcom/google/android/gms/internal/zzbls;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcah:Lcom/google/android/gms/internal/zzbls$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbls$zze;->zzWg()Lcom/google/android/gms/internal/zzbls$zzc;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbls;Lcom/google/android/gms/internal/zzbls$zzc;)Lcom/google/android/gms/internal/zzbls$zze;

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcah:Lcom/google/android/gms/internal/zzbls$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbls$zze;->zzd(Lcom/google/android/gms/internal/zzbls$zze;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzblu;->zzan(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$5;->zzcah:Lcom/google/android/gms/internal/zzbls$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbls$zze;->zzd(Lcom/google/android/gms/internal/zzbls$zze;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v0

    invoke-interface {v0, v4, v4}, Lcom/google/android/gms/internal/zzblu;->zzan(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
