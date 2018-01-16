.class final Lcom/google/android/gms/internal/zzbtg$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbrl;",
            "Lcom/google/android/gms/internal/zzbth",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzbsd",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbth;->zzacb()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbrl;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzbtg$15$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbtg$15$1;-><init>(Lcom/google/android/gms/internal/zzbtg$15;Lcom/google/android/gms/internal/zzbsd;)V

    goto :goto_0
.end method
