.class public final Lcom/google/android/gms/internal/zzbga;
.super Lcom/google/android/gms/internal/zzbfw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbfw",
        "<",
        "Lcom/google/android/gms/internal/zzbfw",
        "<*>;>;"
    }
.end annotation


# static fields
.field public static final zzbKS:Lcom/google/android/gms/internal/zzbga;

.field public static final zzbKT:Lcom/google/android/gms/internal/zzbga;

.field public static final zzbKU:Lcom/google/android/gms/internal/zzbga;

.field public static final zzbKV:Lcom/google/android/gms/internal/zzbga;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzbKW:Z

.field private final zzbKX:Lcom/google/android/gms/internal/zzbfw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbfw",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbga;

    const-string v1, "BREAK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbga;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKS:Lcom/google/android/gms/internal/zzbga;

    new-instance v0, Lcom/google/android/gms/internal/zzbga;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbga;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKT:Lcom/google/android/gms/internal/zzbga;

    new-instance v0, Lcom/google/android/gms/internal/zzbga;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbga;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKU:Lcom/google/android/gms/internal/zzbga;

    new-instance v0, Lcom/google/android/gms/internal/zzbga;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbga;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbga;->zzbKV:Lcom/google/android/gms/internal/zzbga;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbfw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbfw",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfw;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RETURN"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbga;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbga;->zzbKW:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbga;->zzbKX:Lcom/google/android/gms/internal/zzbfw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbga;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbga;->zzbKW:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbga;->zzbKX:Lcom/google/android/gms/internal/zzbfw;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbga;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic zzRF()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbga;->zzRL()Lcom/google/android/gms/internal/zzbfw;

    move-result-object v0

    return-object v0
.end method

.method public zzRL()Lcom/google/android/gms/internal/zzbfw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbga;->zzbKX:Lcom/google/android/gms/internal/zzbfw;

    return-object v0
.end method

.method public zzRM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbga;->zzbKW:Z

    return v0
.end method
