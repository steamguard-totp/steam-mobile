.class public final Lcom/google/android/gms/internal/zztc;
.super Ljava/lang/Object;


# static fields
.field private static zzaax:Ljava/lang/Boolean;


# direct methods
.method public static zzU(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zztc;->zzaax:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zztc;->zzaax:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zztg;->zzr(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/zztc;->zzaax:Ljava/lang/Boolean;

    goto :goto_0
.end method
