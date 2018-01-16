.class Lcom/google/android/gms/internal/zzbfj$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbfj;->zzg(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbKo:Ljava/lang/String;

.field final synthetic zzbKq:Lcom/google/android/gms/internal/zzbfj;

.field final synthetic zzbKs:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbfj;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbfj$4;->zzbKq:Lcom/google/android/gms/internal/zzbfj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbfj$4;->zzbKo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbfj$4;->zzbKs:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfj$4;->zzbKq:Lcom/google/android/gms/internal/zzbfj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbfj$4;->zzbKo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbfj$4;->zzbKs:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbfj;->zzh(Ljava/lang/String;[B)V

    return-void
.end method
