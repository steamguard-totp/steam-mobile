.class final enum Lcom/google/android/gms/internal/zzbll$zzc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzbll$zzc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzbZr:Lcom/google/android/gms/internal/zzbll$zzc;

.field public static final enum zzbZs:Lcom/google/android/gms/internal/zzbll$zzc;

.field public static final enum zzbZt:Lcom/google/android/gms/internal/zzbll$zzc;

.field private static final synthetic zzbZu:[Lcom/google/android/gms/internal/zzbll$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbll$zzc;

    const-string v1, "REALTIME_CONNECTING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbll$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbll$zzc;->zzbZr:Lcom/google/android/gms/internal/zzbll$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzbll$zzc;

    const-string v1, "REALTIME_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbll$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbll$zzc;->zzbZs:Lcom/google/android/gms/internal/zzbll$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzbll$zzc;

    const-string v1, "REALTIME_DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzbll$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbll$zzc;->zzbZt:Lcom/google/android/gms/internal/zzbll$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbll$zzc;

    sget-object v1, Lcom/google/android/gms/internal/zzbll$zzc;->zzbZr:Lcom/google/android/gms/internal/zzbll$zzc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzbll$zzc;->zzbZs:Lcom/google/android/gms/internal/zzbll$zzc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzbll$zzc;->zzbZt:Lcom/google/android/gms/internal/zzbll$zzc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/zzbll$zzc;->zzbZu:[Lcom/google/android/gms/internal/zzbll$zzc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzbll$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbll$zzc;->zzbZu:[Lcom/google/android/gms/internal/zzbll$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbll$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbll$zzc;

    return-object v0
.end method
