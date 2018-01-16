.class Lcom/google/android/gms/internal/zzatw$2;
.super Lcom/google/android/gms/internal/zzasv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatw;-><init>(Lcom/google/android/gms/internal/zzatp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbuG:Lcom/google/android/gms/internal/zzatw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatw;Lcom/google/android/gms/internal/zzatp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatw$2;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzasv;-><init>(Lcom/google/android/gms/internal/zzatp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatw$2;->zzbuG:Lcom/google/android/gms/internal/zzatw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatw;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLc()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V

    return-void
.end method
