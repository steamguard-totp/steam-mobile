.class public Lcom/google/android/gms/cast/MediaQueueItem;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field zzalH:Ljava/lang/String;

.field private zzalI:Lorg/json/JSONObject;

.field private zzans:Lcom/google/android/gms/cast/MediaInfo;

.field private zzant:I

.field private zzanu:Z

.field private zzanv:D

.field private zzanw:D

.field private zzanx:D

.field private zzany:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzans:Lcom/google/android/gms/cast/MediaInfo;

    iput p3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    iput-boolean p4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanu:Z

    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    iput-wide p7, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    iput-wide p9, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    iput-object p11, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    iput-object p12, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalH:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalH:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v1, p0

    move-object v3, p1

    move v5, v2

    move-wide v10, v6

    move-object v13, v12

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(ILcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueItem$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v1, p0

    move v5, v2

    move-wide v10, v6

    move-object v12, v3

    move-object v13, v3

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(ILcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->zzo(Lorg/json/JSONObject;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/cast/MediaQueueItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/google/android/gms/common/util/zzp;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzans:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzans:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzym;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanu:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzanu:Z

    if-ne v0, v3, :cond_5

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    iget-wide v6, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_5

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    iget-wide v6, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_5

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    iget-wide v6, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public getActiveTrackIds()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    return-object v0
.end method

.method public getAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanu:Z

    return v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    return v0
.end method

.method public getMedia()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzans:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    return-wide v0
.end method

.method public getPreloadTime()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    return-wide v0
.end method

.method public getStartTime()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzans:Lcom/google/android/gms/cast/MediaInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "media"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzans:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    if-eqz v0, :cond_0

    const-string v0, "itemId"

    iget v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "autoplay"

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanu:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-string v0, "playbackDuration"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "preloadTime"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    if-eqz v0, :cond_3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-wide v6, v3, v0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    const-string v0, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalH:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzk;->zza(Lcom/google/android/gms/cast/MediaQueueItem;Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zzo(Lorg/json/JSONObject;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "media"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/android/gms/cast/MediaInfo;

    const-string v3, "media"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzans:Lcom/google/android/gms/cast/MediaInfo;

    move v0, v1

    :goto_0
    const-string v3, "itemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "itemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    if-eq v4, v3, :cond_0

    iput v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzant:I

    move v0, v1

    :cond_0
    const-string v3, "autoplay"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "autoplay"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanu:Z

    if-eq v4, v3, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanu:Z

    move v0, v1

    :cond_1
    const-string v3, "startTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "startTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_2

    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    move v0, v1

    :cond_2
    const-string v3, "playbackDuration"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "playbackDuration"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_3

    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    move v0, v1

    :cond_3
    const-string v3, "preloadTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "preloadTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_4

    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    move v0, v1

    :cond_4
    const/4 v3, 0x0

    const-string v4, "activeTrackIds"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v3, "activeTrackIds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v3, v6, [J

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_5

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    if-nez v4, :cond_7

    move-object v2, v3

    move v3, v1

    :goto_2
    if-eqz v3, :cond_6

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    move v0, v1

    :cond_6
    const-string v2, "customData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "customData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzalI:Lorg/json/JSONObject;

    :goto_3
    return v1

    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    array-length v4, v4

    if-eq v4, v6, :cond_8

    move-object v2, v3

    move v3, v1

    goto :goto_2

    :cond_8
    move v4, v2

    :goto_4
    if-ge v4, v6, :cond_b

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzany:[J

    aget-wide v8, v5, v4

    aget-wide v10, v3, v4

    cmp-long v5, v8, v10

    if-eqz v5, :cond_9

    move-object v2, v3

    move v3, v1

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    move v1, v0

    goto :goto_3

    :cond_b
    move-object v12, v3

    move v3, v2

    move-object v2, v12

    goto :goto_2

    :cond_c
    move-object v12, v3

    move v3, v2

    move-object v2, v12

    goto :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method

.method zzrZ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzans:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanv:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startTime cannot be negative or NaN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanw:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playbackDuration cannot be NaN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzanx:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "preloadTime cannot be negative or Nan."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method
