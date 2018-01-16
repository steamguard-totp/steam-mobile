.class Lcom/google/android/gms/internal/zzayg$zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzayg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzbHu:Lcom/google/android/gms/internal/zzayg;

.field private final zzbHw:Lcom/google/android/gms/internal/zzbfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzbfi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHw:Lcom/google/android/gms/internal/zzbfi;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHw:Lcom/google/android/gms/internal/zzbfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi;->zzRi()Lcom/google/android/gms/internal/zzbfi$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRn()Lcom/google/android/gms/internal/zzbfr;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHw:Lcom/google/android/gms/internal/zzbfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi;->zzRj()Lcom/google/android/gms/internal/zzbfu;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzb(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzaze;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzayg;->zzl(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzazf;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/zzazf;->zza(Lcom/google/android/gms/internal/zzbfr;Lcom/google/android/gms/internal/zzbfu;)Lcom/google/android/gms/internal/zzaze;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzaze;)Lcom/google/android/gms/internal/zzaze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzd(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " loaded during runtime initialization."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzi(Lcom/google/android/gms/internal/zzayg;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzi(Lcom/google/android/gms/internal/zzayg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaym;

    const-string v5, "Evaluating tags for pending event "

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaym;->zzQp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzayg;->zzb(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzaze;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzaze;->zzb(Lcom/google/android/gms/internal/zzaym;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzb(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzaze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaze;->dispatch()V

    const-string v3, "Runtime initialized successfully for container "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzd(Lcom/google/android/gms/internal/zzayg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHw:Lcom/google/android/gms/internal/zzbfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi;->zzRi()Lcom/google/android/gms/internal/zzbfi$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRo()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzg(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzayi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayi;->zzOL()J

    move-result-wide v6

    add-long/2addr v4, v6

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzk(Lcom/google/android/gms/internal/zzayg;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHw:Lcom/google/android/gms/internal/zzbfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi;->getSource()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzm(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayg;->zzg(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzayi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzayi;->zzQn()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;J)V

    :goto_4
    return-void

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    const-wide/32 v2, 0xdbba0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayg$zze;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayg;->zzm(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;J)V

    goto :goto_4
.end method
