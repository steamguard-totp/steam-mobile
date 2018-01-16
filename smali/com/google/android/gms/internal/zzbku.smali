.class public final Lcom/google/android/gms/internal/zzbku;
.super Ljava/lang/Object;


# static fields
.field public static final zzbXh:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXi:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXj:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXk:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXl:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXm:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXn:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXo:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXp:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXq:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXr:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXs:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXt:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbXu:Lcom/google/android/gms/internal/zzapn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapn",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, 0x5

    const/4 v4, 0x0

    const-string v0, "crash:enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzapn$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXh:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:gateway_url"

    const-string v1, "https://mobilecrashreporting.googleapis.com/v1/crashes:batchCreate?key="

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzapn;->zzc(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzapn$zzd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXi:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:log_buffer_capacity"

    invoke-static {v4, v0, v6}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzapn$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXj:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:log_buffer_max_total_size"

    const v1, 0x8000

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzapn$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXk:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:crash_backlog_capacity"

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzapn$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXl:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:crash_backlog_max_age"

    const-wide/32 v2, 0x240c8400

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzapn$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXm:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:starting_backoff"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzapn$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXn:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:backoff_limit"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzapn$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXo:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:retry_num_attempts"

    const/16 v1, 0xc

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzapn$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXp:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:batch_size"

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzapn$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXq:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:batch_throttle"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzapn$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXr:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:frame_depth"

    const/16 v1, 0x3c

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzapn$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXs:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:receiver_delay"

    invoke-static {v4, v0, v6}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzapn$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXt:Lcom/google/android/gms/internal/zzapn;

    const-string v0, "crash:thread_idle_timeout"

    const/16 v1, 0xa

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzapn;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzapn$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbku;->zzbXu:Lcom/google/android/gms/internal/zzapn;

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/zzapr;->zzCQ()Lcom/google/android/gms/internal/zzapo;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzapo;->initialize(Landroid/content/Context;)V

    return-void
.end method
