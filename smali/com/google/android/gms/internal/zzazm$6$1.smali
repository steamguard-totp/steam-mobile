.class Lcom/google/android/gms/internal/zzazm$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzazm$6;->onTrimMemory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbJc:Lcom/google/android/gms/internal/zzazm$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazm$6;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazm$6$1;->zzbJc:Lcom/google/android/gms/internal/zzazm$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "App\'s UI deactivated. Dispatching hits."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm$6$1;->zzbJc:Lcom/google/android/gms/internal/zzazm$6;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzazm$6;->zzbIR:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazm;->zzb(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzazp;->dispatch()V

    return-void
.end method
