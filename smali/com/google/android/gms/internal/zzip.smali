.class public Lcom/google/android/gms/internal/zzip;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzsD:Lcom/google/android/gms/internal/zzjs;

.field private final zzsz:Lcom/google/android/gms/ads/internal/zzd;

.field private final zztr:Lcom/google/android/gms/internal/zzqa;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip;->zzsD:Lcom/google/android/gms/internal/zzjs;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzip;->zztr:Lcom/google/android/gms/internal/zzqa;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzip;->zzsz:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzip;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzag(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzl;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/zzec;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzec;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzip;->zzsD:Lcom/google/android/gms/internal/zzjs;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzip;->zztr:Lcom/google/android/gms/internal/zzqa;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzip;->zzsz:Lcom/google/android/gms/ads/internal/zzd;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method public zzah(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzl;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzec;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzec;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzip;->zzsD:Lcom/google/android/gms/internal/zzjs;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzip;->zztr:Lcom/google/android/gms/internal/zzqa;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzip;->zzsz:Lcom/google/android/gms/ads/internal/zzd;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method public zzgi()Lcom/google/android/gms/internal/zzip;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzip;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzip;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzip;->zzsD:Lcom/google/android/gms/internal/zzjs;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzip;->zztr:Lcom/google/android/gms/internal/zzqa;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzip;->zzsz:Lcom/google/android/gms/ads/internal/zzd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzip;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method
