.class public Lcom/google/android/gms/internal/zzazf;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbCS:Ljava/lang/String;

.field private final zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbHy:Lcom/google/android/gms/tagmanager/zzay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazf;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazf;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazf;->zzbHy:Lcom/google/android/gms/tagmanager/zzay;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzazf;->zzbCS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbfr;Lcom/google/android/gms/internal/zzbfu;)Lcom/google/android/gms/internal/zzaze;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzaze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazf;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazf;->zzbCS:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzazf;->zzbHp:Lcom/google/android/gms/tagmanager/zzbb;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzazf;->zzbHy:Lcom/google/android/gms/tagmanager/zzay;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaze;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbfr;Lcom/google/android/gms/internal/zzbfu;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V

    return-object v0
.end method
