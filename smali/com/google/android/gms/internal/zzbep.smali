.class public Lcom/google/android/gms/internal/zzbep;
.super Lcom/google/android/gms/internal/zzbet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbet;-><init>()V

    return-void
.end method


# virtual methods
.method protected zzf(DD)Z
    .locals 1

    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
