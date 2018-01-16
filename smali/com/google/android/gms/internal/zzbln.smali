.class public Lcom/google/android/gms/internal/zzbln;
.super Ljava/lang/Object;


# instance fields
.field private final zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbZv:Lcom/google/android/gms/internal/zzblm;

.field private final zzbZw:Lcom/google/android/gms/internal/zzboq;

.field private final zzbZx:Z

.field private final zzbZy:Ljava/lang/String;

.field private final zzbZz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzblm;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbln;->zzbZw:Lcom/google/android/gms/internal/zzboq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbln;->zzbZv:Lcom/google/android/gms/internal/zzblm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbln;->zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbln;->zzbZx:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbln;->zzbZy:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbln;->zzbZz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zzVH()Lcom/google/android/gms/internal/zzboq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbln;->zzbZw:Lcom/google/android/gms/internal/zzboq;

    return-object v0
.end method

.method public zzVI()Lcom/google/android/gms/internal/zzblm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbln;->zzbZv:Lcom/google/android/gms/internal/zzblm;

    return-object v0
.end method

.method public zzVJ()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbln;->zzbYl:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public zzVK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbln;->zzbZx:Z

    return v0
.end method

.method public zzVL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbln;->zzbZy:Ljava/lang/String;

    return-object v0
.end method

.method public zzjQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbln;->zzbZz:Ljava/lang/String;

    return-object v0
.end method
