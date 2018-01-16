.class Lcom/google/android/gms/internal/zzatx$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatx$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbuS:Lcom/google/android/gms/internal/zzatx$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatx$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatx$1$1;->zzbuS:Lcom/google/android/gms/internal/zzatx$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx$1$1;->zzbuS:Lcom/google/android/gms/internal/zzatx$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatx$1;->zzbuR:Lcom/google/android/gms/internal/zzatx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatx;->zza(Lcom/google/android/gms/internal/zzatx;)Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatx$1$1;->zzbuS:Lcom/google/android/gms/internal/zzatx$1;

    iget v1, v1, Lcom/google/android/gms/internal/zzatx$1;->zzaaz:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx$1$1;->zzbuS:Lcom/google/android/gms/internal/zzatx$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatx$1;->zzbsD:Lcom/google/android/gms/internal/zzatp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatp;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzast;->zzKk()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx$1$1;->zzbuS:Lcom/google/android/gms/internal/zzatx$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatx$1;->zzbsG:Lcom/google/android/gms/internal/zzati;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Local AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
