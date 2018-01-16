.class Lcom/google/android/gms/internal/zzbsl$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbsq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbsl;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbsq;
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
.field final synthetic zzcni:Lcom/google/android/gms/internal/zzbsl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbsl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsl$11;->zzcni:Lcom/google/android/gms/internal/zzbsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzabJ()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
