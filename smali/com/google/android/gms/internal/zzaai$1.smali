.class Lcom/google/android/gms/internal/zzaai$1;
.super Lcom/google/android/gms/internal/zzaan$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaai;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzazM:Lcom/google/android/gms/internal/zzaai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/internal/zzaam;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaai$1;->zzazM:Lcom/google/android/gms/internal/zzaai;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaan$zza;-><init>(Lcom/google/android/gms/internal/zzaam;)V

    return-void
.end method


# virtual methods
.method public zzvA()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$1;->zzazM:Lcom/google/android/gms/internal/zzaai;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaai;->onConnectionSuspended(I)V

    return-void
.end method
