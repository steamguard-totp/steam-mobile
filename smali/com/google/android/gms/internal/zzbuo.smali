.class public Lcom/google/android/gms/internal/zzbuo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzbun",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final tag:I

.field protected final type:I

.field protected final zzciF:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final zzcrY:Z


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbuo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzbuo;

    iget v2, p0, Lcom/google/android/gms/internal/zzbuo;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbuo;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbuo;->zzciF:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbuo;->zzciF:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzbuo;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbuo;->tag:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbuo;->zzcrY:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzbuo;->zzcrY:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbuo;->type:I

    add-int/lit16 v0, v0, 0x47b

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbuo;->zzciF:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbuo;->tag:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbuo;->zzcrY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbuo;->zzcrY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbuo;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbum;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbuo;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbum;)V

    goto :goto_0
.end method

.method zzaR(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbuo;->zzcrY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbuo;->zzaS(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbuo;->zzaT(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected zzaS(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbuo;->zzaT(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected zzaT(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzbuo;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbuw;->zzqB(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbuo;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzbuo;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/zzbut;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbum;->zzb(ILcom/google/android/gms/internal/zzbut;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzbut;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbum;->zzc(ILcom/google/android/gms/internal/zzbut;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbum;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbuo;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbum;->zzqt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzbuo;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzbuo;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    :try_start_1
    check-cast p1, Lcom/google/android/gms/internal/zzbut;

    iget v0, p0, Lcom/google/android/gms/internal/zzbuo;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbuw;->zzqB(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbum;->zzb(Lcom/google/android/gms/internal/zzbut;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzbum;->zzJ(II)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzbut;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbum;->zzc(Lcom/google/android/gms/internal/zzbut;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbum;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/zzbuo;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbum;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
