.class Lcom/google/android/gms/internal/zzzw$zza$1;
.super Lcom/google/android/gms/internal/zzaar$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzzw$zza;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzayL:Landroid/app/Dialog;

.field final synthetic zzayM:Lcom/google/android/gms/internal/zzzw$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzw$zza;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzw$zza$1;->zzayM:Lcom/google/android/gms/internal/zzzw$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzw$zza$1;->zzayL:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzvb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzw$zza$1;->zzayM:Lcom/google/android/gms/internal/zzzw$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzzw$zza;->zzayK:Lcom/google/android/gms/internal/zzzw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzw;->zzva()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzw$zza$1;->zzayL:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzw$zza$1;->zzayL:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
