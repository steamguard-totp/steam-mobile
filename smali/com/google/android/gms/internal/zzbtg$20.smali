.class final Lcom/google/android/gms/internal/zzbtg$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbtg;->zza(Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbsd;)Lcom/google/android/gms/internal/zzbse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzcnw:Lcom/google/android/gms/internal/zzbth;

.field final synthetic zzcpu:Lcom/google/android/gms/internal/zzbsd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbth;Lcom/google/android/gms/internal/zzbsd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtg$20;->zzcnw:Lcom/google/android/gms/internal/zzbth;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbtg$20;->zzcpu:Lcom/google/android/gms/internal/zzbsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrl;Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsd;
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtg$20;->zzcnw:Lcom/google/android/gms/internal/zzbth;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbth;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtg$20;->zzcpu:Lcom/google/android/gms/internal/zzbsd;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
