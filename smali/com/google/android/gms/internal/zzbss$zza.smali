.class final Lcom/google/android/gms/internal/zzbss$zza;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbss$zza$zza;
    }
.end annotation


# instance fields
.field private final zzcnQ:Ljava/lang/Appendable;

.field private final zzcnR:Lcom/google/android/gms/internal/zzbss$zza$zza;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbss$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbss$zza$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbss$zza;->zzcnR:Lcom/google/android/gms/internal/zzbss$zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbss$zza;->zzcnQ:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/google/android/gms/internal/zzbss$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbss$zza;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbss$zza;->zzcnQ:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbss$zza;->zzcnR:Lcom/google/android/gms/internal/zzbss$zza$zza;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbss$zza$zza;->zzcnS:[C

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbss$zza;->zzcnQ:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbss$zza;->zzcnR:Lcom/google/android/gms/internal/zzbss$zza$zza;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method
