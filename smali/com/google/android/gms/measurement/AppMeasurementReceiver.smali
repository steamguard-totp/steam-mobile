.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;

# interfaces
.implements Lcom/google/android/gms/internal/zzatm$zza;


# instance fields
.field private zzbpD:Lcom/google/android/gms/internal/zzatm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private zzJa()Lcom/google/android/gms/internal/zzatm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzbpD:Lcom/google/android/gms/internal/zzatm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzatm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzatm;-><init>(Lcom/google/android/gms/internal/zzatm$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzbpD:Lcom/google/android/gms/internal/zzatm;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzbpD:Lcom/google/android/gms/internal/zzatm;

    return-object v0
.end method


# virtual methods
.method public doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzJa()Lcom/google/android/gms/internal/zzatm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzatm;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
