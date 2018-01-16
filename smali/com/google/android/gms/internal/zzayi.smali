.class public Lcom/google/android/gms/internal/zzayi;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbCS:Ljava/lang/String;

.field private final zzzI:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzayi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Random;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Random;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayi;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayi;->zzbCS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayi;->zzzI:Ljava/util/Random;

    return-void
.end method

.method private zzOP()Landroid/content/SharedPreferences;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayi;->mContext:Landroid/content/Context;

    const-string v0, "v5_gtmContainerRefreshPolicy_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayi;->zzbCS:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzg(JJ)J
    .locals 7

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayi;->zzOP()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FORBIDDEN_COUNT"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-string v1, "SUCCESSFUL_COUNT"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v4, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-float v0, v0

    div-float v0, v4, v0

    sub-long v2, p3, p1

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayi;->zzzI:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    long-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public zzOL()J
    .locals 6

    const-wide/32 v0, 0x2932e00

    const-wide/32 v2, 0x6ddd00

    const-wide/32 v4, 0xf731400

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzayi;->zzg(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public zzOM()J
    .locals 6

    const-wide/32 v0, 0x36ee80

    const-wide/32 v2, 0x927c0

    const-wide/32 v4, 0x5265c00

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzayi;->zzg(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public zzON()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    const-wide/16 v10, 0xa

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayi;->zzOP()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FORBIDDEN_COUNT"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "SUCCESSFUL_COUNT"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    cmp-long v0, v2, v8

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3

    :goto_0
    sub-long v2, v10, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-string v4, "FORBIDDEN_COUNT"

    invoke-interface {v6, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "SUCCESSFUL_COUNT"

    invoke-interface {v6, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzazk;->zza(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public zzOO()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    const-wide/16 v10, 0xa

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayi;->zzOP()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SUCCESSFUL_COUNT"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "FORBIDDEN_COUNT"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long v6, v10, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SUCCESSFUL_COUNT"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "FORBIDDEN_COUNT"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazk;->zza(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public zzQn()J
    .locals 6

    const-wide/16 v4, 0x2710

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayi;->zzOP()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "FORBIDDEN_COUNT"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x927c0

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/gms/internal/zzayi;->zzg(JJ)J

    move-result-wide v0

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method public zzQo()Z
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayi;->zzOP()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FORBIDDEN_COUNT"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
