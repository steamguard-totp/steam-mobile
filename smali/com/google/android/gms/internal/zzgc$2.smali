.class final Lcom/google/android/gms/internal/zzgc$2;
.super Lcom/google/android/gms/internal/zzgc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgc;-><init>()V

    return-void
.end method


# virtual methods
.method public zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method
