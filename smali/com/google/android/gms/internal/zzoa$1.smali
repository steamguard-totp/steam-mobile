.class Lcom/google/android/gms/internal/zzoa$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzoa;->zzcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzUS:Lcom/google/android/gms/internal/zzjt;

.field final synthetic zzUT:Lcom/google/android/gms/internal/zzoa;

.field final synthetic zztt:Lcom/google/android/gms/internal/zzdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzjt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoa$1;->zzUT:Lcom/google/android/gms/internal/zzoa;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoa$1;->zztt:Lcom/google/android/gms/internal/zzdy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoa$1;->zzUS:Lcom/google/android/gms/internal/zzjt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoa$1;->zzUT:Lcom/google/android/gms/internal/zzoa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoa$1;->zztt:Lcom/google/android/gms/internal/zzdy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoa$1;->zzUS:Lcom/google/android/gms/internal/zzjt;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzoa;->zza(Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzjt;)V

    return-void
.end method
