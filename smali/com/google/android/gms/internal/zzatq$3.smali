.class Lcom/google/android/gms/internal/zzatq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatq;->zza(Lcom/google/android/gms/internal/zzatb;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbky:Ljava/lang/String;

.field final synthetic zzbtO:Lcom/google/android/gms/internal/zzatq;

.field final synthetic zzbtP:Lcom/google/android/gms/internal/zzatb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatq$3;->zzbtO:Lcom/google/android/gms/internal/zzatq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatq$3;->zzbtP:Lcom/google/android/gms/internal/zzatb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatq$3;->zzbky:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatq$3;->zzbtO:Lcom/google/android/gms/internal/zzatq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatq;->zza(Lcom/google/android/gms/internal/zzatq;)Lcom/google/android/gms/internal/zzatp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatp;->zzLL()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatq$3;->zzbtO:Lcom/google/android/gms/internal/zzatq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatq;->zza(Lcom/google/android/gms/internal/zzatq;)Lcom/google/android/gms/internal/zzatp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatq$3;->zzbtP:Lcom/google/android/gms/internal/zzatb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzatq$3;->zzbky:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatp;->zzb(Lcom/google/android/gms/internal/zzatb;Ljava/lang/String;)V

    return-void
.end method
