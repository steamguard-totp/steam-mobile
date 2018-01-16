.class Lcom/google/android/gms/internal/zzazn$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzazn;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbJj:Lcom/google/android/gms/internal/zzazn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazn$3;->zzbJj:Lcom/google/android/gms/internal/zzazn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazn$3;->zzbJj:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazn;->zza(Lcom/google/android/gms/internal/zzazn;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TagManagerBackend dispatch called without loaded container."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->zzbe(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazn$3;->zzbJj:Lcom/google/android/gms/internal/zzazn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazn;->zza(Lcom/google/android/gms/internal/zzazn;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayg;->dispatch()V

    goto :goto_0
.end method
