.class public Lcom/google/android/gms/internal/zzzl;
.super Ljava/lang/Object;


# direct methods
.method private static zzH(J)J
    .locals 2

    const/16 v0, 0x2f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static zza([BII)J
    .locals 8

    const-wide/16 v2, 0x0

    const/16 v0, 0x8

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v4, p1, v0

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static zza([BJ)J
    .locals 11

    const-wide v8, -0x395b586ca42e166bL    # -2.0946245025644615E32

    array-length v0, p0

    and-int/lit8 v6, v0, -0x8

    array-length v0, p0

    and-int/lit8 v7, v0, 0x7

    array-length v0, p0

    int-to-long v0, v0

    mul-long/2addr v0, v8

    xor-long v2, p1, v0

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_0
    if-ge v2, v6, :cond_0

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzzl;->zzH(J)J

    move-result-wide v4

    mul-long/2addr v4, v8

    xor-long/2addr v0, v4

    mul-long v4, v0, v8

    add-int/lit8 v0, v2, 0x8

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-static {p0, v6, v7}, Lcom/google/android/gms/internal/zzzl;->zza([BII)J

    move-result-wide v2

    xor-long/2addr v0, v2

    mul-long/2addr v0, v8

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzzl;->zzH(J)J

    move-result-wide v0

    mul-long/2addr v0, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzzl;->zzH(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static zza([BIJJ[J)V
    .locals 12

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v2

    add-int/lit8 v4, p1, 0x10

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v4

    add-int/lit8 v6, p1, 0x18

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v6

    add-long/2addr v0, p2

    add-long v8, p4, v0

    add-long/2addr v8, v6

    const/16 v10, 0x33

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long/2addr v2, v0

    add-long/2addr v2, v4

    const/16 v4, 0x17

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v4, v8

    const/4 v8, 0x0

    add-long/2addr v2, v6

    aput-wide v2, p6, v8

    const/4 v2, 0x1

    add-long/2addr v0, v4

    aput-wide v0, p6, v2

    return-void
.end method

.method private static zzb([BI)J
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static zzc(JJ)J
    .locals 8

    const/16 v6, 0x2f

    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    xor-long v0, p2, p0

    mul-long/2addr v0, v4

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    xor-long/2addr v0, p0

    mul-long/2addr v0, v4

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    mul-long/2addr v0, v4

    return-wide v0
.end method

.method public static zzn([B)J
    .locals 8

    const-wide v4, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    array-length v0, p0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_3

    const-wide v0, -0x1364611973070723L    # -1.4877559216887398E215

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzzl;->zza([BJ)J

    move-result-wide v0

    :goto_0
    array-length v2, p0

    const/16 v3, 0x8

    if-lt v2, v3, :cond_5

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v2

    :goto_1
    array-length v6, p0

    const/16 v7, 0x9

    if-lt v6, v7, :cond_0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v4

    :cond_0
    add-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzzl;->zzc(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    :cond_1
    const-wide/16 v2, -0x2

    add-long/2addr v0, v2

    :cond_2
    return-wide v0

    :cond_3
    array-length v0, p0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_4

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzl;->zzo([B)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/internal/zzzl;->zzp([B)J

    move-result-wide v0

    goto :goto_0

    :cond_5
    move-wide v2, v4

    goto :goto_1
.end method

.method private static zzo([B)J
    .locals 18

    move-object/from16 v0, p0

    array-length v2, v0

    const/16 v3, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v6

    int-to-long v8, v2

    add-int/lit8 v3, v2, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v10

    add-long/2addr v8, v10

    const-wide v10, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long v8, v6, v4

    const/16 v3, 0x34

    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    const/16 v3, 0x25

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v10

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v12

    add-long/2addr v6, v12

    const/4 v3, 0x7

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v12

    add-long/2addr v6, v12

    add-long/2addr v4, v6

    const/16 v3, 0x1f

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    add-long/2addr v6, v8

    add-long/2addr v6, v10

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v8

    add-int/lit8 v3, v2, -0x20

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v10

    add-long/2addr v8, v10

    add-int/lit8 v3, v2, -0x8

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v10

    add-long v12, v8, v10

    const/16 v3, 0x34

    invoke-static {v12, v13, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    const/16 v3, 0x25

    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    add-int/lit8 v3, v2, -0x18

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v16

    add-long v8, v8, v16

    const/4 v3, 0x7

    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v16

    add-long v14, v14, v16

    add-int/lit8 v2, v2, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v2

    add-long/2addr v2, v8

    add-long v8, v2, v10

    const/16 v10, 0x1f

    invoke-static {v2, v3, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v12

    add-long/2addr v2, v14

    add-long/2addr v2, v4

    const-wide v4, -0x3b849161c568f12dL    # -8.096527404817815E21

    mul-long/2addr v2, v4

    add-long v4, v8, v6

    const-wide v8, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzzl;->zzH(J)J

    move-result-wide v2

    const-wide v4, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    mul-long/2addr v2, v4

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzzl;->zzH(J)J

    move-result-wide v2

    const-wide v4, -0x3b849161c568f12dL    # -8.096527404817815E21

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private static zzp([B)J
    .locals 22

    move-object/from16 v0, p0

    array-length v9, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v18

    add-int/lit8 v2, v9, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v2

    const-wide v4, -0x72a753d9501ed1b9L

    xor-long v6, v2, v4

    add-int/lit8 v2, v9, -0x38

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v2

    const-wide v4, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    xor-long v20, v2, v4

    const/4 v2, 0x2

    new-array v8, v2, [J

    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v16, v0

    add-int/lit8 v3, v9, -0x40

    int-to-long v4, v9

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/zzzl;->zza([BIJJ[J)V

    add-int/lit8 v11, v9, -0x20

    int-to-long v2, v9

    const-wide v4, -0x72a753d9501ed1b9L

    mul-long v12, v2, v4

    const-wide v14, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/zzzl;->zza([BIJJ[J)V

    const/4 v2, 0x1

    aget-wide v2, v8, v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzzl;->zzH(J)J

    move-result-wide v2

    const-wide v4, -0x72a753d9501ed1b9L

    mul-long/2addr v2, v4

    add-long v4, v20, v2

    add-long v2, v4, v18

    const/16 v10, 0x27

    invoke-static {v2, v3, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const-wide v10, -0x72a753d9501ed1b9L

    mul-long/2addr v10, v2

    const/16 v2, 0x21

    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const-wide v6, -0x72a753d9501ed1b9L

    mul-long v14, v2, v6

    add-int/lit8 v2, v9, -0x1

    and-int/lit8 v2, v2, -0x40

    const/4 v3, 0x0

    move-wide v6, v10

    move v9, v2

    :goto_0
    add-long/2addr v6, v14

    const/4 v2, 0x0

    aget-wide v10, v8, v2

    add-long/2addr v6, v10

    add-int/lit8 v2, v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v10

    add-long/2addr v6, v10

    const/16 v2, 0x25

    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    const-wide v10, -0x72a753d9501ed1b9L

    mul-long/2addr v6, v10

    const/4 v2, 0x1

    aget-wide v10, v8, v2

    add-long/2addr v10, v14

    add-int/lit8 v2, v3, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzzl;->zzb([BI)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/16 v2, 0x2a

    invoke-static {v10, v11, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v10

    const-wide v12, -0x72a753d9501ed1b9L

    mul-long/2addr v10, v12

    const/4 v2, 0x1

    aget-wide v12, v16, v2

    xor-long v18, v6, v12

    const/4 v2, 0x0

    aget-wide v6, v8, v2

    xor-long v14, v10, v6

    const/4 v2, 0x0

    aget-wide v6, v16, v2

    xor-long/2addr v4, v6

    const/16 v2, 0x21

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v20

    const/4 v2, 0x1

    aget-wide v4, v8, v2

    const-wide v6, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v6

    const/4 v2, 0x0

    aget-wide v6, v16, v2

    add-long v6, v6, v18

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/zzzl;->zza([BIJJ[J)V

    add-int/lit8 v11, v3, 0x20

    const/4 v2, 0x1

    aget-wide v4, v16, v2

    add-long v12, v20, v4

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/zzzl;->zza([BIJJ[J)V

    add-int/lit8 v3, v3, 0x40

    add-int/lit8 v2, v9, -0x40

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzzl;->zzc(JJ)J

    move-result-wide v2

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/zzzl;->zzH(J)J

    move-result-wide v4

    const-wide v6, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long v2, v2, v18

    const/4 v4, 0x1

    aget-wide v4, v8, v4

    const/4 v6, 0x1

    aget-wide v6, v16, v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzzl;->zzc(JJ)J

    move-result-wide v4

    add-long v4, v4, v20

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzzl;->zzc(JJ)J

    move-result-wide v2

    return-wide v2

    :cond_0
    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move v9, v2

    goto/16 :goto_0
.end method
