.class Lcom/google/android/gms/internal/zzpd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzWz:Lcom/google/android/gms/internal/zzpd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpd$1;->zzWz:Lcom/google/android/gms/internal/zzpd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd$1;->zzWz:Lcom/google/android/gms/internal/zzpd;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpd;->zza(Lcom/google/android/gms/internal/zzpd;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd$1;->zzWz:Lcom/google/android/gms/internal/zzpd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpd;->zzcm()V

    return-void
.end method
