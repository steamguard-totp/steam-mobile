.class public final Lcom/google/android/gms/internal/zzbul;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private zzcrN:I

.field private zzcrO:I

.field private zzcrP:I

.field private zzcrQ:I

.field private zzcrR:I

.field private zzcrS:I

.field private zzcrT:I

.field private zzcrU:I

.field private zzcrV:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrU:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrV:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbul;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrN:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    return-void
.end method

.method public static zzaV(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private zzacH()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrP:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrP:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrP:I

    goto :goto_0
.end method

.method public static zzad([B)Lcom/google/android/gms/internal/zzbul;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzbul;->zzb([BII)Lcom/google/android/gms/internal/zzbul;

    move-result-object v0

    return-object v0
.end method

.method public static zzb([BII)Lcom/google/android/gms/internal/zzbul;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbul;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbul;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public getPosition()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrN:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacD()I

    move-result v1

    if-gez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacS()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_0
    if-nez v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzbuw;->zzcsp:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacR()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_2
    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbul;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacG()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacF()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacD()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacS()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacR()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbul;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    sget-object v4, Lcom/google/android/gms/internal/zzbur;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    return-object v1
.end method

.method public zzE(II)[B
    .locals 4

    if-nez p2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbuw;->zzcsp:[B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrN:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbul;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbut;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacD()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrT:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrU:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacX()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbul;->zzqj(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrT:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzbut;->zzb(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzbut;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbul;->zzqg(I)V

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrT:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbul;->zzqk(I)V

    return-void
.end method

.method public zzacA()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacD()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzacC()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacE()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbul;->zzaV(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzacD()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacT()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0
.end method

.method public zzacE()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacT()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0
.end method

.method public zzacF()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public zzacG()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacK()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public zzacI()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public zzacJ()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzacK()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacR()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbul;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public zzacu()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacJ()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrR:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacD()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrR:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrR:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacU()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrR:I

    goto :goto_0
.end method

.method public zzacv()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacu()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbul;->zzqh(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public zzacw()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacE()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzacx()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacE()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzacy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacD()I

    move-result v0

    return v0
.end method

.method public zzqg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbus;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrR:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacV()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public zzqh(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbuw;->zzqA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacW()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacy()I

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacG()J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacD()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbul;->zzqm(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacv()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbuw;->zzqB(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbuw;->zzK(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbul;->zzqg(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbul;->zzacF()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public zzqj(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbus;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacS()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacR()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbul;->zzacH()V

    return v1
.end method

.method public zzqk(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbul;->zzacH()V

    return-void
.end method

.method public zzql(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrN:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcrN:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrN:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    return-void
.end method

.method public zzqm(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacS()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrS:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbul;->zzqm(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacR()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrO:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcrQ:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzbus;->zzacR()Lcom/google/android/gms/internal/zzbus;

    move-result-object v0

    throw v0
.end method
