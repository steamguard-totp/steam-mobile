.class public Lcom/google/android/gms/internal/zzlp;
.super Lcom/google/android/gms/internal/zzpd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private final zzPn:Lcom/google/android/gms/internal/zzln$zza;

.field private final zzPo:Lcom/google/android/gms/internal/zzov$zza;

.field private final zzPp:Lcom/google/android/gms/internal/zzmk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzln$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlp;->zzPn:Lcom/google/android/gms/internal/zzln$zza;

    return-void
.end method

.method private zzQ(I)Lcom/google/android/gms/internal/zzov;
    .locals 39

    new-instance v2, Lcom/google/android/gms/internal/zzov;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzov$zza;->zzSF:Lcom/google/android/gms/internal/zzmh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmh;->zzRd:Lcom/google/android/gms/internal/zzdy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget v9, v6, Lcom/google/android/gms/internal/zzmk;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget-wide v10, v6, Lcom/google/android/gms/internal/zzmk;->zzKe:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzov$zza;->zzSF:Lcom/google/android/gms/internal/zzmh;

    iget-object v12, v6, Lcom/google/android/gms/internal/zzmh;->zzRg:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmk;->zzRL:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzov$zza;->zzvj:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmk;->zzRJ:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzov$zza;->zzVv:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmk;->zzRO:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmk;->zzRP:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzov$zza;->zzVp:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzmk;->zzSc:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlp;->zzPo:Lcom/google/android/gms/internal/zzov$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmk;->zzSd:Lcom/google/android/gms/internal/zzmm;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzov;-><init>(Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzqp;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzjt;Ljava/lang/String;Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzjl;JLcom/google/android/gms/internal/zzec;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzgu$zza;Lcom/google/android/gms/internal/zzok;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmm;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlp;)Lcom/google/android/gms/internal/zzln$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPn:Lcom/google/android/gms/internal/zzln$zza;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzcm()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzQ(I)Lcom/google/android/gms/internal/zzov;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzpi;->zzWR:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzlp$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzlp$1;-><init>(Lcom/google/android/gms/internal/zzlp;Lcom/google/android/gms/internal/zzov;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
