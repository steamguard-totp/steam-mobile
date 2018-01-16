.class public final enum Lcom/google/android/gms/internal/zzboq$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzboq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzboq$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcgF:Lcom/google/android/gms/internal/zzboq$zza;

.field public static final enum zzcgG:Lcom/google/android/gms/internal/zzboq$zza;

.field public static final enum zzcgH:Lcom/google/android/gms/internal/zzboq$zza;

.field public static final enum zzcgI:Lcom/google/android/gms/internal/zzboq$zza;

.field public static final enum zzcgJ:Lcom/google/android/gms/internal/zzboq$zza;

.field private static final synthetic zzcgK:[Lcom/google/android/gms/internal/zzboq$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zza;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzboq$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgF:Lcom/google/android/gms/internal/zzboq$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zza;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzboq$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgG:Lcom/google/android/gms/internal/zzboq$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zza;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzboq$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgH:Lcom/google/android/gms/internal/zzboq$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zza;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzboq$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgI:Lcom/google/android/gms/internal/zzboq$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zza;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzboq$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgJ:Lcom/google/android/gms/internal/zzboq$zza;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/zzboq$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zza;->zzcgF:Lcom/google/android/gms/internal/zzboq$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zza;->zzcgG:Lcom/google/android/gms/internal/zzboq$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zza;->zzcgH:Lcom/google/android/gms/internal/zzboq$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zza;->zzcgI:Lcom/google/android/gms/internal/zzboq$zza;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zza;->zzcgJ:Lcom/google/android/gms/internal/zzboq$zza;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgK:[Lcom/google/android/gms/internal/zzboq$zza;

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

.method public static values()[Lcom/google/android/gms/internal/zzboq$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzboq$zza;->zzcgK:[Lcom/google/android/gms/internal/zzboq$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzboq$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzboq$zza;

    return-object v0
.end method
