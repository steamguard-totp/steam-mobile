.class public abstract Lcom/google/android/gms/internal/zzyk;
.super Ljava/lang/Object;


# instance fields
.field private final zzakW:Ljava/lang/String;

.field protected final zzaoQ:Lcom/google/android/gms/internal/zzyu;

.field private zzauP:Lcom/google/android/gms/internal/zzyw;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzym;->zzcP(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyk;->zzakW:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzyu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzyu;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyk;->zzaoQ:Lcom/google/android/gms/internal/zzyu;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzyk;->setSessionLabel(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyk;->zzakW:Ljava/lang/String;

    return-object v0
.end method

.method public setSessionLabel(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyk;->zzaoQ:Lcom/google/android/gms/internal/zzyu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzyu;->zzcU(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzyw;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyk;->zzauP:Lcom/google/android/gms/internal/zzyw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyk;->zzauP:Lcom/google/android/gms/internal/zzyw;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyk;->zzua()V

    :cond_0
    return-void
.end method

.method protected final zza(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyk;->zzauP:Lcom/google/android/gms/internal/zzyw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyk;->zzakW:Ljava/lang/String;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzyw;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public zzb(JI)V
    .locals 0

    return-void
.end method

.method public zzcO(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zzua()V
    .locals 0

    return-void
.end method

.method protected final zzub()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyk;->zzauP:Lcom/google/android/gms/internal/zzyw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzyw;->zzsc()J

    move-result-wide v0

    return-wide v0
.end method
