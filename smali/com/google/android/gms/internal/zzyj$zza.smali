.class Lcom/google/android/gms/internal/zzyj$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzyj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzauO:Lcom/google/android/gms/internal/zzyj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzyj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyj$zza;->zzauO:Lcom/google/android/gms/internal/zzyj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzyj;Lcom/google/android/gms/internal/zzyj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyj$zza;-><init>(Lcom/google/android/gms/internal/zzyj;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyj$zza;->zzauO:Lcom/google/android/gms/internal/zzyj;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzyj;->zzauN:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyj$zza;->zzauO:Lcom/google/android/gms/internal/zzyj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzyj;->zzuI:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyj$zza;->zzauO:Lcom/google/android/gms/internal/zzyj;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzyj;->zzE(J)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyj$zza;->zzauO:Lcom/google/android/gms/internal/zzyj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzyj;->zzao(Z)V

    return-void
.end method
