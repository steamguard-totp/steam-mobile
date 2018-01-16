.class Lcom/google/android/gms/internal/zzyl$zzb$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzyl$zzb;->zzb(Lcom/google/android/gms/internal/zzyg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzavn:Lcom/google/android/gms/internal/zzyl;

.field final synthetic zzavq:Lcom/google/android/gms/internal/zzyg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyl$zzb;Lcom/google/android/gms/internal/zzyl;Lcom/google/android/gms/internal/zzyg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyl$zzb$3;->zzavn:Lcom/google/android/gms/internal/zzyl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyl$zzb$3;->zzavq:Lcom/google/android/gms/internal/zzyg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyl$zzb$3;->zzavn:Lcom/google/android/gms/internal/zzyl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyl$zzb$3;->zzavq:Lcom/google/android/gms/internal/zzyg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzyl;->zza(Lcom/google/android/gms/internal/zzyl;Lcom/google/android/gms/internal/zzyg;)V

    return-void
.end method
