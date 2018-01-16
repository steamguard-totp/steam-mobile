.class public abstract enum Lcom/google/android/gms/internal/zzbsb;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzbsb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcmO:Lcom/google/android/gms/internal/zzbsb;

.field public static final enum zzcmP:Lcom/google/android/gms/internal/zzbsb;

.field private static final synthetic zzcmQ:[Lcom/google/android/gms/internal/zzbsb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbsb$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsb$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcmO:Lcom/google/android/gms/internal/zzbsb;

    new-instance v0, Lcom/google/android/gms/internal/zzbsb$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbsb$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcmP:Lcom/google/android/gms/internal/zzbsb;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbsb;

    sget-object v1, Lcom/google/android/gms/internal/zzbsb;->zzcmO:Lcom/google/android/gms/internal/zzbsb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzbsb;->zzcmP:Lcom/google/android/gms/internal/zzbsb;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcmQ:[Lcom/google/android/gms/internal/zzbsb;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzbsb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbsb;->zzcmQ:[Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbsb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbsb;

    return-object v0
.end method
