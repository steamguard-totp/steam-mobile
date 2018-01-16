.class Lcom/google/android/gms/internal/zzblv$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzblv;->zzWq()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaL:Lcom/google/android/gms/internal/zzblv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblv$2;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$2;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzg(Lcom/google/android/gms/internal/zzblv;)Lcom/google/android/gms/internal/zzblv$zzb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$2;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzg(Lcom/google/android/gms/internal/zzblv;)Lcom/google/android/gms/internal/zzblv$zzb;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzblv$zzb;->zziT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv$2;->zzcaL:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzc(Lcom/google/android/gms/internal/zzblv;)V

    :cond_0
    return-void
.end method
