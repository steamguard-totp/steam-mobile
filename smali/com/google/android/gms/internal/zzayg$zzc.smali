.class Lcom/google/android/gms/internal/zzayg$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzayg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzbHu:Lcom/google/android/gms/internal/zzayg;

.field private final zzbHv:Lcom/google/android/gms/internal/zzaym;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzayg;Lcom/google/android/gms/internal/zzaym;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v1, "Evaluating tags for event "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaym;->zzQp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzb(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/internal/zzaze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaze;->zzb(Lcom/google/android/gms/internal/zzaym;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzi(Lcom/google/android/gms/internal/zzayg;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaym;->zzQp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Added event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to pending queue."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayg;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaym;->zzQp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to evaluate tags for event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (container failed to load)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaym;->zzQs()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHu:Lcom/google/android/gms/internal/zzayg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayg;->zzj(Lcom/google/android/gms/internal/zzayg;)Lcom/google/android/gms/tagmanager/zzbb;

    move-result-object v0

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaym;->zzQp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaym;->zzQq()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaym;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzbb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaym;->zzQp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Logged passthrough event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to Firebase."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Error logging event with measurement proxy:"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v1, "Discarded non-passthrough event "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayg$zzc;->zzbHv:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaym;->zzQp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method
