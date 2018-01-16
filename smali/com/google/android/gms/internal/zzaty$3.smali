.class Lcom/google/android/gms/internal/zzaty$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaty;->zzMc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpI:J

.field final synthetic zzbuW:Lcom/google/android/gms/internal/zzaty;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaty;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaty$3;->zzbuW:Lcom/google/android/gms/internal/zzaty;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzaty$3;->zzbpI:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty$3;->zzbuW:Lcom/google/android/gms/internal/zzaty;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaty$3;->zzbpI:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzaty;->zza(Lcom/google/android/gms/internal/zzaty;J)V

    return-void
.end method
