.class public Lcom/google/android/gms/internal/zziz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzix;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private final zzGt:Lcom/google/android/gms/internal/zzqp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcK()Lcom/google/android/gms/internal/zzqr;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzec;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzec;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    move-object v8, v7

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzgf;Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzeh;->zzeO()Lcom/google/android/gms/internal/zzpx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpx;->zzkJ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzpi;->zzWR:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzqp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->destroy()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzht;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/internal/zzib;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzkp;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqp;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Z)V

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzht;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/internal/zzib;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzkp;Lcom/google/android/gms/internal/zzop;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzix$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zziz$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zziz$6;-><init>(Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzix$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/internal/zzqq$zza;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zziz$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zziz$1;-><init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zziz;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzal(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zziz$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zziz$3;-><init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zziz;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzam(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zziz$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zziz$5;-><init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zziz;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzan(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zziz$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zziz$4;-><init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zziz;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqq;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzqp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzgt()Lcom/google/android/gms/internal/zzjc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzjd;-><init>(Lcom/google/android/gms/internal/zzjb;)V

    return-object v0
.end method

.method public zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zziz$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zziz$2;-><init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zziz;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
