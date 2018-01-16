.class public Lcom/google/android/gms/internal/zzxb$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzxb$zza;)Lcom/google/android/gms/internal/zzxb;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzxb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzxb;-><init>(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzxb$zza;)V

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzxb$zza;)Lcom/google/android/gms/internal/zzxb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzxb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzxb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzxb$zza;)V

    return-object v0
.end method
