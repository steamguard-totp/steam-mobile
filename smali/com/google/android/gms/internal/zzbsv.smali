.class public final Lcom/google/android/gms/internal/zzbsv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbsv$zza;
    }
.end annotation


# instance fields
.field private final zzcmu:Lcom/google/android/gms/internal/zzbsl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbsl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsv;->zzcmu:Lcom/google/android/gms/internal/zzbsl;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;
    .locals 4
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

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbth;->zzacc()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbth;->zzacb()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbsk;->zza(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbth;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbrl;->zza(Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsv;->zzcmu:Lcom/google/android/gms/internal/zzbsl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbsl;->zzb(Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsq;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/zzbsv$zza;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbsv$zza;-><init>(Lcom/google/android/gms/internal/zzbrl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbsd;Lcom/google/android/gms/internal/zzbsq;)V

    goto :goto_0
.end method
