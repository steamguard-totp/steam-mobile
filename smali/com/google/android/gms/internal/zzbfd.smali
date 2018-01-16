.class public abstract Lcom/google/android/gms/internal/zzbfd;
.super Ljava/lang/Object;


# instance fields
.field private zzAG:I

.field protected final zzbHq:Lcom/google/android/gms/internal/zzayi;

.field protected final zzbJV:Lcom/google/android/gms/internal/zzbfh;

.field protected final zzbJW:Lcom/google/android/gms/internal/zzbff;

.field protected final zzuI:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzbfh;Lcom/google/android/gms/internal/zzbff;Lcom/google/android/gms/internal/zzayi;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzyv()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbfd;-><init>(ILcom/google/android/gms/internal/zzbfh;Lcom/google/android/gms/internal/zzbff;Lcom/google/android/gms/internal/zzayi;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/zzbfh;Lcom/google/android/gms/internal/zzbff;Lcom/google/android/gms/internal/zzayi;Lcom/google/android/gms/common/util/zze;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbfh;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzbJV:Lcom/google/android/gms/internal/zzbfh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbfh;->zzRh()Lcom/google/android/gms/internal/zzbfa;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/zzbfd;->zzAG:I

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbff;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzbJW:Lcom/google/android/gms/internal/zzbff;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzuI:Lcom/google/android/gms/common/util/zze;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbfd;->zzbHq:Lcom/google/android/gms/internal/zzayi;

    return-void
.end method


# virtual methods
.method public zzM([B)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbfd;->zzN([B)Lcom/google/android/gms/internal/zzbfi;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzbHq:Lcom/google/android/gms/internal/zzayi;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzAG:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzbHq:Lcom/google/android/gms/internal/zzayi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayi;->zzOO()V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbfi;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbfi;->zzRi()Lcom/google/android/gms/internal/zzbfi$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRn()Lcom/google/android/gms/internal/zzbfr;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/zzbfi$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbfd;->zzbJV:Lcom/google/android/gms/internal/zzbfh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbfh;->zzRh()Lcom/google/android/gms/internal/zzbfa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbfd;->zzuI:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbfi$zza;-><init>(Lcom/google/android/gms/internal/zzbfa;[BLcom/google/android/gms/internal/zzbfr;J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbfi;->zzRj()Lcom/google/android/gms/internal/zzbfu;

    move-result-object v2

    new-instance v1, Lcom/google/android/gms/internal/zzbfi;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    iget v4, p0, Lcom/google/android/gms/internal/zzbfd;->zzAG:I

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/google/android/gms/internal/zzbfi;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/zzbfi$zza;Lcom/google/android/gms/internal/zzbfu;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbfd;->zza(Lcom/google/android/gms/internal/zzbfi;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbfi;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzayj:Lcom/google/android/gms/common/api/Status;

    iget v2, p0, Lcom/google/android/gms/internal/zzbfd;->zzAG:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbfi;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    goto :goto_0
.end method

.method protected zzN([B)Lcom/google/android/gms/internal/zzbfi;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbfd;->zzbJW:Lcom/google/android/gms/internal/zzbff;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzbff;->zzO([B)Lcom/google/android/gms/internal/zzbfi;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbfb; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "Resource data is corrupted"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayx;->zzbd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzbfi;)V
.end method

.method public zzmY(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown reason"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Resource not available"

    goto :goto_0

    :pswitch_1
    const-string v0, "IOError"

    goto :goto_0

    :pswitch_2
    const-string v0, "Server error"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public zzw(II)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzbHq:Lcom/google/android/gms/internal/zzayi;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzbHq:Lcom/google/android/gms/internal/zzayi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayi;->zzON()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfd;->zzbJV:Lcom/google/android/gms/internal/zzbfh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfh;->zzRh()Lcom/google/android/gms/internal/zzbfa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfa;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbfd;->zzmY(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to fetch the container resource for the container \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbfi;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzayj:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzbfi;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbfd;->zza(Lcom/google/android/gms/internal/zzbfi;)V

    return-void
.end method
