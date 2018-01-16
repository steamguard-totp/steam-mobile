.class public Lcom/google/android/gms/internal/zzgl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgl$zza;
    }
.end annotation


# instance fields
.field private zzFA:Landroid/support/customtabs/CustomTabsSession;

.field private zzFB:Landroid/support/customtabs/CustomTabsClient;

.field private zzFC:Landroid/support/customtabs/CustomTabsServiceConnection;

.field private zzFD:Lcom/google/android/gms/internal/zzgl$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzn(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.example.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbuz;->zzcf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzgl$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgl;->zzFD:Lcom/google/android/gms/internal/zzgl$zza;

    return-void
.end method

.method public zzd(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzFC:Landroid/support/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzFC:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzgl;->zzFB:Landroid/support/customtabs/CustomTabsClient;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzgl;->zzFA:Landroid/support/customtabs/CustomTabsSession;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzgl;->zzFC:Landroid/support/customtabs/CustomTabsServiceConnection;

    goto :goto_0
.end method

.method public zze(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzFB:Landroid/support/customtabs/CustomTabsClient;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbuz;->zzcf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzbva;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbva;-><init>(Lcom/google/android/gms/internal/zzbvb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzgl;->zzFC:Landroid/support/customtabs/CustomTabsServiceConnection;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgl;->zzFC:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z

    goto :goto_0
.end method

.method public zzfC()Landroid/support/customtabs/CustomTabsSession;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzFB:Landroid/support/customtabs/CustomTabsClient;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzgl;->zzFA:Landroid/support/customtabs/CustomTabsSession;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzFA:Landroid/support/customtabs/CustomTabsSession;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzFA:Landroid/support/customtabs/CustomTabsSession;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzFB:Landroid/support/customtabs/CustomTabsClient;

    invoke-virtual {v0, v1}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzFA:Landroid/support/customtabs/CustomTabsSession;

    goto :goto_0
.end method
