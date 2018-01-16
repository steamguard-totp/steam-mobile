.class Lcom/google/android/gms/internal/zzayg$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbfe$zza;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzayg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzbHu:Lcom/google/android/gms/internal/zzayg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzayg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzayg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzayg$zzb;-><init>(Lcom/google/android/gms/internal/zzayg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzar(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;Z)Z

    invoke-static {}, Lcom/google/android/gms/internal/zzazc;->zzQB()Lcom/google/android/gms/internal/zzazc;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzayg;->zzd(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzazc;->zzhK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzh(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzbfe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayg;->zzd(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzayg;->zze(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzayg;->zzf(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzayg;->zzg(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzayi;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbfe;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/zzbfe$zza;Lcom/google/android/gms/internal/zzayi;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzayg;->zzg(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzayi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzayi;->zzQo()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzk(Lcom/google/android/gms/internal/zzayg;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public zza(Lcom/google/android/gms/internal/zzbfi;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzc(Lcom/google/android/gms/internal/zzayg;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzayg$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/zzayg$zze;-><init>(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzbfi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzc(Lcom/google/android/gms/internal/zzayg;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzayg$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayg$zzb;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzayg$zza;-><init>(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzayg$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
