.class Lcom/google/android/gms/internal/zzbfe$zzb;
.super Lcom/google/android/gms/internal/zzbfd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbfe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation


# instance fields
.field private final zzbKa:Lcom/google/android/gms/internal/zzbfe$zza;

.field private final zzbKb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbKc:I

.field final synthetic zzbKd:Lcom/google/android/gms/internal/zzbfe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbfe;ILcom/google/android/gms/internal/zzbfh;Lcom/google/android/gms/internal/zzbff;Ljava/util/List;ILcom/google/android/gms/internal/zzbfe$zza;Lcom/google/android/gms/internal/zzayi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/zzbfh;",
            "Lcom/google/android/gms/internal/zzbff;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/zzbfe$zza;",
            "Lcom/google/android/gms/internal/zzayi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKd:Lcom/google/android/gms/internal/zzbfe;

    invoke-direct {p0, p2, p3, p4, p8}, Lcom/google/android/gms/internal/zzbfd;-><init>(ILcom/google/android/gms/internal/zzbfh;Lcom/google/android/gms/internal/zzbff;Lcom/google/android/gms/internal/zzayi;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKa:Lcom/google/android/gms/internal/zzbfe$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKb:Ljava/util/List;

    iput p6, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKc:I

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzbfi;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v3, :cond_7

    const-string v3, "Container resource successfully loaded from "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->zzRk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->getSource()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->zzRi()Lcom/google/android/gms/internal/zzbfi$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRm()Lcom/google/android/gms/internal/zzbfa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbfa;->zzRd()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKa:Lcom/google/android/gms/internal/zzbfe$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbfe$zza;->zza(Lcom/google/android/gms/internal/zzbfi;)V

    :goto_2
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKd:Lcom/google/android/gms/internal/zzbfe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzbfe;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzbfi$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRl()[B

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRl()[B

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKd:Lcom/google/android/gms/internal/zzbfe;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbfe;->zza(Lcom/google/android/gms/internal/zzbfe;)Lcom/google/android/gms/internal/zzbfj;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRm()Lcom/google/android/gms/internal/zzbfa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbfa;->zzRc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRl()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzbfj;->zzg(Ljava/lang/String;[B)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->zzRk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SUCCESS"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot fetch a valid resource from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Response status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "Response source: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->zzRk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbfi;->zzRi()Lcom/google/android/gms/internal/zzbfi$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbfi$zza;->zzRl()[B

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Response size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayx;->v(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKd:Lcom/google/android/gms/internal/zzbfe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbJV:Lcom/google/android/gms/internal/zzbfh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKb:Ljava/util/List;

    iget v3, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKc:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbKa:Lcom/google/android/gms/internal/zzbfe$zza;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbfe$zzb;->zzbHq:Lcom/google/android/gms/internal/zzayi;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbfe;->zza(Lcom/google/android/gms/internal/zzbfh;Ljava/util/List;ILcom/google/android/gms/internal/zzbfe$zza;Lcom/google/android/gms/internal/zzayi;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "FAILURE"

    goto/16 :goto_3

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method
