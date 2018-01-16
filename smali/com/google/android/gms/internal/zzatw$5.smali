.class Lcom/google/android/gms/internal/zzatw$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatw;->zzb(Lcom/google/android/gms/internal/zzaub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbtQ:Lcom/google/android/gms/internal/zzaub;

.field final synthetic zzbuG:Lcom/google/android/gms/internal/zzatw;

.field final synthetic zzbuI:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatw;ZLcom/google/android/gms/internal/zzaub;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbuI:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbtQ:Lcom/google/android/gms/internal/zzaub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatw;->zzc(Lcom/google/android/gms/internal/zzatw;)Lcom/google/android/gms/internal/zzate;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatw;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbuI:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzatw;->zza(Lcom/google/android/gms/internal/zzate;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatw;->zzd(Lcom/google/android/gms/internal/zzatw;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$5;->zzbtQ:Lcom/google/android/gms/internal/zzaub;

    goto :goto_1
.end method
