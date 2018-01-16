.class final Lcom/google/android/gms/internal/zzbfg$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbff;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzO([B)Lcom/google/android/gms/internal/zzbfi;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbfb;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbfb;

    const-string v1, "Cannot parse a null byte[]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbfb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbfb;

    const-string v1, "Cannot parse a 0 length byte[]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbfb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbfc;->zzhU(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfu;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "The runtime configuration was successfully parsed from the resource"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/zzbfb; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzbfi;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzbfi;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/zzbfi$zza;Lcom/google/android/gms/internal/zzbfu;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzbfb;

    const-string v1, "The resource data is corrupted. The runtime configuration cannot be extracted from the JSON data"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbfb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzbfb;

    const-string v1, "The resource data is invalid. The runtime  configuration cannot be extracted from the JSON data"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbfb;-><init>(Ljava/lang/String;)V

    throw v0
.end method
