.class public final Lcom/google/android/gms/internal/zzbss;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbss$zza;
    }
.end annotation


# direct methods
.method public static zza(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbss$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbss$zza;-><init>(Ljava/lang/Appendable;Lcom/google/android/gms/internal/zzbss$1;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzbrr;Lcom/google/android/gms/internal/zzbtk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbtg;->zzcpp:Lcom/google/android/gms/internal/zzbsd;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/zzbsd;->zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzbti;)Lcom/google/android/gms/internal/zzbrr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbrv;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbti;->zzabQ()Lcom/google/android/gms/internal/zzbtj;

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzbtg;->zzcpp:Lcom/google/android/gms/internal/zzbsd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbsd;->zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrr;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/zzbtl; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbrt;->zzcmL:Lcom/google/android/gms/internal/zzbrt;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzbsa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbsa;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbsa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbsa;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbrs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbrs;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbsa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbsa;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
