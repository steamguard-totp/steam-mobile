.class Lcom/google/android/gms/internal/zzbsl$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbsq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbsl;->zzb(Lcom/google/android/gms/internal/zzbth;)Lcom/google/android/gms/internal/zzbsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbsq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzcnh:Ljava/lang/reflect/Type;

.field final synthetic zzcni:Lcom/google/android/gms/internal/zzbsl;

.field final synthetic zzcnl:Lcom/google/android/gms/internal/zzbrn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbsl;Lcom/google/android/gms/internal/zzbrn;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsl$5;->zzcni:Lcom/google/android/gms/internal/zzbsl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbsl$5;->zzcnl:Lcom/google/android/gms/internal/zzbrn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbsl$5;->zzcnh:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzabJ()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsl$5;->zzcnl:Lcom/google/android/gms/internal/zzbrn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsl$5;->zzcnh:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
