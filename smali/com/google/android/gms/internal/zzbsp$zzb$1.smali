.class Lcom/google/android/gms/internal/zzbsp$zzb$1;
.super Lcom/google/android/gms/internal/zzbsp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbsp$zzb;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbsp$zzc",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic zzcnG:Lcom/google/android/gms/internal/zzbsp$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbsp$zzb;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsp$zzb$1;->zzcnG:Lcom/google/android/gms/internal/zzbsp$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbsp$zzb;->zzcnE:Lcom/google/android/gms/internal/zzbsp;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbsp$zzc;-><init>(Lcom/google/android/gms/internal/zzbsp;Lcom/google/android/gms/internal/zzbsp$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbsp$zzb$1;->zzabL()Lcom/google/android/gms/internal/zzbsp$zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbsp$zzd;->zzbYU:Ljava/lang/Object;

    return-object v0
.end method
