.class final enum Lcom/google/android/gms/internal/zzbpo$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzbpo$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzchX:Lcom/google/android/gms/internal/zzbpo$zza;

.field public static final enum zzchY:Lcom/google/android/gms/internal/zzbpo$zza;

.field public static final enum zzchZ:Lcom/google/android/gms/internal/zzbpo$zza;

.field public static final enum zzcia:Lcom/google/android/gms/internal/zzbpo$zza;

.field public static final enum zzcib:Lcom/google/android/gms/internal/zzbpo$zza;

.field private static final synthetic zzcic:[Lcom/google/android/gms/internal/zzbpo$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbpo$zza;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpo$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzchX:Lcom/google/android/gms/internal/zzbpo$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbpo$zza;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbpo$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzchY:Lcom/google/android/gms/internal/zzbpo$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbpo$zza;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzbpo$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzchZ:Lcom/google/android/gms/internal/zzbpo$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbpo$zza;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzbpo$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzcia:Lcom/google/android/gms/internal/zzbpo$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbpo$zza;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzbpo$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzcib:Lcom/google/android/gms/internal/zzbpo$zza;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbpo$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzchX:Lcom/google/android/gms/internal/zzbpo$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzchY:Lcom/google/android/gms/internal/zzbpo$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzchZ:Lcom/google/android/gms/internal/zzbpo$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzcia:Lcom/google/android/gms/internal/zzbpo$zza;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzcib:Lcom/google/android/gms/internal/zzbpo$zza;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzcic:[Lcom/google/android/gms/internal/zzbpo$zza;

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

.method public static values()[Lcom/google/android/gms/internal/zzbpo$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzcic:[Lcom/google/android/gms/internal/zzbpo$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbpo$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbpo$zza;

    return-object v0
.end method
