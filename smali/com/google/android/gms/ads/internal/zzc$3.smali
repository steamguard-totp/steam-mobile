.class Lcom/google/android/gms/ads/internal/zzc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzgf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsH:Lcom/google/android/gms/ads/internal/zzc;

.field final synthetic zzsI:Lcom/google/android/gms/internal/zzov$zza;

.field final synthetic zzsJ:Lcom/google/android/gms/internal/zzop;

.field final synthetic zzsK:Lcom/google/android/gms/internal/zzgf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzop;Lcom/google/android/gms/internal/zzgf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsJ:Lcom/google/android/gms/internal/zzop;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsK:Lcom/google/android/gms/internal/zzgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvz:Lcom/google/android/gms/internal/zzgj;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->zzNb:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->zzNb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpi;->zzaV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzgg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmk;->body:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzgg;-><init>(Lcom/google/android/gms/ads/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iput v5, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvF:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsu:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvz:Lcom/google/android/gms/internal/zzgj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgj;->zza(Lcom/google/android/gms/internal/zzgi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iput-boolean v5, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsu:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzov$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsJ:Lcom/google/android/gms/internal/zzop;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzop;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$1;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zzqp;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$2;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zzqp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iput v4, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvF:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcI()Lcom/google/android/gms/internal/zzln;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzc;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzw;->zzve:Lcom/google/android/gms/internal/zzav;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzc;->zzsD:Lcom/google/android/gms/internal/zzjs;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsK:Lcom/google/android/gms/internal/zzgf;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzln;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzln$zza;Lcom/google/android/gms/internal/zzgf;)Lcom/google/android/gms/internal/zzpk;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzw;->zzvi:Lcom/google/android/gms/internal/zzpk;

    goto :goto_0
.end method
