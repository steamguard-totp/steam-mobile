.class public Lcom/google/android/gms/internal/zzpp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpp$zzc;,
        Lcom/google/android/gms/internal/zzpp$zzb;,
        Lcom/google/android/gms/internal/zzpp$zza;
    }
.end annotation


# static fields
.field private static zzXw:Lcom/google/android/gms/internal/zzl;

.field private static final zzXx:Ljava/lang/Object;

.field public static final zzXy:Lcom/google/android/gms/internal/zzpp$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpp$zza",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpp;->zzXx:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzpp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpp$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpp;->zzXy:Lcom/google/android/gms/internal/zzpp$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpp;->zzN(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    return-void
.end method

.method private static zzN(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzpp;->zzXx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzpp;->zzXw:Lcom/google/android/gms/internal/zzl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzac;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpp;->zzXw:Lcom/google/android/gms/internal/zzl;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzpp;->zzXw:Lcom/google/android/gms/internal/zzl;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzpp$zza;)Lcom/google/android/gms/internal/zzqf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpp$zza",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzqf",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpp$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzpp$zzc;-><init>(Lcom/google/android/gms/internal/zzpp;Lcom/google/android/gms/internal/zzpp$1;)V

    sget-object v1, Lcom/google/android/gms/internal/zzpp;->zzXw:Lcom/google/android/gms/internal/zzl;

    new-instance v2, Lcom/google/android/gms/internal/zzpp$zzb;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/zzpp$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzpp$zza;Lcom/google/android/gms/internal/zzm$zzb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    return-object v0
.end method
