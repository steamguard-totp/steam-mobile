.class public Lcom/google/android/gms/internal/zzbiz;
.super Ljava/lang/Object;


# direct methods
.method public static zzUg()Lcom/google/android/gms/internal/zzbrl;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbiy;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzbjh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbjh;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzbjg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbjg;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzbrm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbrm;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbrm;->zzf([I)Lcom/google/android/gms/internal/zzbrm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrm;->zzabr()Lcom/google/android/gms/internal/zzbrm;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/zzbrh;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/gms/internal/zzbit;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzbit;-><init>()V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbrm;->zza([Lcom/google/android/gms/internal/zzbrh;)Lcom/google/android/gms/internal/zzbrm;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/zzbjn;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzbrm;->zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbrm;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/zzbjx;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzbrm;->zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbrm;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/zzbjt;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzbrm;->zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbrm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrm;->zzabs()Lcom/google/android/gms/internal/zzbrl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzbiy;->zza(Lcom/google/android/gms/internal/zzbrl;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbjh;->zza(Lcom/google/android/gms/internal/zzbrl;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbjg;->zza(Lcom/google/android/gms/internal/zzbrl;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x8
        0x80
        0x40
    .end array-data
.end method
