.class Lcom/google/android/gms/internal/zzazn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzazn;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzayu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbIY:Ljava/lang/String;

.field final synthetic zzbIZ:Ljava/lang/String;

.field final synthetic zzbJa:Ljava/lang/String;

.field final synthetic zzbJi:Lcom/google/android/gms/internal/zzayu;

.field final synthetic zzbJj:Lcom/google/android/gms/internal/zzazn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzayu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJj:Lcom/google/android/gms/internal/zzazn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbIY:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbIZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJa:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJi:Lcom/google/android/gms/internal/zzayu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJj:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazn;->zza(Lcom/google/android/gms/internal/zzazn;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbIY:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJi:Lcom/google/android/gms/internal/zzayu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJi:Lcom/google/android/gms/internal/zzayu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbIY:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzayu;->zza(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJj:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazn;->zzb(Lcom/google/android/gms/internal/zzazn;)Lcom/google/android/gms/internal/zzayh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbIY:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbIZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJa:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzayh;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzayg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbJj:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzazn;->zza(Lcom/google/android/gms/internal/zzazn;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzazn$1;->zzbIY:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error relaying callback"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzayx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
