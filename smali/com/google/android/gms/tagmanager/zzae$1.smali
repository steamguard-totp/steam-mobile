.class final Lcom/google/android/gms/tagmanager/zzae$1;
.super Lcom/google/android/gms/tagmanager/zzbb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzae;->zzbH(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbEa:Lcom/google/android/gms/measurement/AppMeasurement;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzae$1;->zzbEa:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzbb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzPd()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzae$1;->zzbEa:Lcom/google/android/gms/measurement/AppMeasurement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->zzaE(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzaz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzae$1;->zzbEa:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzae$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzae$1$2;-><init>(Lcom/google/android/gms/tagmanager/zzae$1;Lcom/google/android/gms/tagmanager/zzaz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzba;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzae$1;->zzbEa:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzae$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzae$1$1;-><init>(Lcom/google/android/gms/tagmanager/zzae$1;Lcom/google/android/gms/tagmanager/zzba;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzae$1;->zzbEa:Lcom/google/android/gms/measurement/AppMeasurement;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/AppMeasurement;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
