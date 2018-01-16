.class Lcom/google/android/gms/internal/zzyl$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzyl$zzb;->onApplicationDisconnected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzavn:Lcom/google/android/gms/internal/zzyl;

.field final synthetic zzavo:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyl$zzb;Lcom/google/android/gms/internal/zzyl;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyl$zzb$1;->zzavn:Lcom/google/android/gms/internal/zzyl;

    iput p3, p0, Lcom/google/android/gms/internal/zzyl$zzb$1;->zzavo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyl$zzb$1;->zzavn:Lcom/google/android/gms/internal/zzyl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyl;->zzd(Lcom/google/android/gms/internal/zzyl;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzyl$zzb$1;->zzavo:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    return-void
.end method
