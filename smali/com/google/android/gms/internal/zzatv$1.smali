.class Lcom/google/android/gms/internal/zzatv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatv;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzatv$zza;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbuu:Z

.field final synthetic zzbuv:Lcom/google/android/gms/internal/zzatv$zza;

.field final synthetic zzbuw:Lcom/google/android/gms/internal/zzatv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatv;ZLcom/google/android/gms/internal/zzatv$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuw:Lcom/google/android/gms/internal/zzatv;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuu:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuv:Lcom/google/android/gms/internal/zzatv$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuw:Lcom/google/android/gms/internal/zzatv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatv;->zzbul:Lcom/google/android/gms/internal/zzatv$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuw:Lcom/google/android/gms/internal/zzatv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuw:Lcom/google/android/gms/internal/zzatv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatv;->zzbul:Lcom/google/android/gms/internal/zzatv$zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzatv;->zza(Lcom/google/android/gms/internal/zzatv;Lcom/google/android/gms/internal/zzatv$zza;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuw:Lcom/google/android/gms/internal/zzatv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuv:Lcom/google/android/gms/internal/zzatv$zza;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatv;->zzbul:Lcom/google/android/gms/internal/zzatv$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuw:Lcom/google/android/gms/internal/zzatv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatv;->zzJl()Lcom/google/android/gms/internal/zzatw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv$1;->zzbuv:Lcom/google/android/gms/internal/zzatv$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatw;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    return-void
.end method
