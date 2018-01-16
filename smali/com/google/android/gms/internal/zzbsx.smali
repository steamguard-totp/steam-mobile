.class public final Lcom/google/android/gms/internal/zzbsx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbse;


# instance fields
.field private final zzcmu:Lcom/google/android/gms/internal/zzbsl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbsl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsx;->zzcmu:Lcom/google/android/gms/internal/zzbsl;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzbsl;Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbsf;)Lcom/google/android/gms/internal/zzbsd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsl;",
            "Lcom/google/android/gms/internal/zzbrl;",
            "Lcom/google/android/gms/internal/zzbth",
            "<*>;",
            "Lcom/google/android/gms/internal/zzbsf;",
            ")",
            "Lcom/google/android/gms/internal/zzbsd",
            "<*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbsf;->value()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzbsd;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbth;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbsl;->zzb(Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsq;->zzabJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsd;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/google/android/gms/internal/zzbse;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbth;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbth;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbsl;->zzb(Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsq;->zzabJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbse;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbse;->zza(Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const-class v1, Lcom/google/android/gms/internal/zzbsf;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsx;->zzcmu:Lcom/google/android/gms/internal/zzbsl;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzbsx;->zza(Lcom/google/android/gms/internal/zzbsl;Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbsf;)Lcom/google/android/gms/internal/zzbsd;

    move-result-object v0

    goto :goto_0
.end method
