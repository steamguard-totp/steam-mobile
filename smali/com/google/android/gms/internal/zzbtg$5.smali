.class final Lcom/google/android/gms/internal/zzbtg$5;
.super Lcom/google/android/gms/internal/zzbsd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbsd",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbtg$5;->zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbtk;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbtk;->zzjX(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbtk;

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbtg$5;->zzq(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzq(Lcom/google/android/gms/internal/zzbti;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->zzabQ()Lcom/google/android/gms/internal/zzbtj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbtj;->zzcqa:Lcom/google/android/gms/internal/zzbtj;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzbtj;->zzcpZ:Lcom/google/android/gms/internal/zzbtj;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbti;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
