.class public Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;
.super Lcom/google/firebase/database/connection/idl/zzk$zza;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private zzcaY:Lcom/google/android/gms/internal/zzblr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzk$zza;-><init>()V

    return-void
.end method

.method public static loadDynamic(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/zzblm;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzblr$zza;)Lcom/google/firebase/database/connection/idl/zzk;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaQz:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    const-string v1, "com.google.android.gms.firebase_database"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.firebase.database.connection.idl.IPersistentConnectionImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdX(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zzk$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/firebase/database/connection/idl/zzk;

    move-result-object v0

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/android/gms/internal/zzblm;)Lcom/google/firebase/database/connection/idl/zzh;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/android/gms/internal/zzblr$zza;)Lcom/google/firebase/database/connection/idl/zzl;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/firebase/database/connection/idl/zzk;->setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzh;Lcom/google/android/gms/dynamic/zzd;Lcom/google/firebase/database/connection/idl/zzl;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zza(Ljava/lang/Long;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag parameter clashed with NO_TAG value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzh;)Lcom/google/android/gms/internal/zzblm;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;-><init>(Lcom/google/firebase/database/connection/idl/zzh;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzl;)Lcom/google/android/gms/internal/zzblr$zza;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$4;-><init>(Lcom/google/firebase/database/connection/idl/zzl;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzblu;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$2;-><init>(Lcom/google/firebase/database/connection/idl/zzm;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzblm;)Lcom/google/firebase/database/connection/idl/zzh;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5;-><init>(Lcom/google/android/gms/internal/zzblm;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzblr$zza;)Lcom/google/firebase/database/connection/idl/zzl;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$3;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$3;-><init>(Lcom/google/android/gms/internal/zzblr$zza;)V

    return-object v0
.end method

.method private static zzaG(J)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic zzaH(J)Ljava/lang/Long;
    .locals 2

    invoke-static {p0, p1}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzaG(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Ljava/lang/Long;)J
    .locals 2

    invoke-static {p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/zzd;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzE(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/google/android/gms/internal/zzblr;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzblr;->initialize()V

    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzblr;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzblr;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listen(Ljava/util/List;Lcom/google/android/gms/dynamic/zzd;Lcom/google/firebase/database/connection/idl/zzj;JLcom/google/firebase/database/connection/idl/zzm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/zzd;",
            "Lcom/google/firebase/database/connection/idl/zzj;",
            "J",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzaG(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzE(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$1;

    invoke-direct {v3, p0, p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$1;-><init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;Lcom/google/firebase/database/connection/idl/zzj;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-static {p6}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzblr;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzblq;Ljava/lang/Long;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method public merge(Ljava/util/List;Lcom/google/android/gms/dynamic/zzd;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/zzd;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzE(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/zzblr;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method public onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzblr;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method public onDisconnectMerge(Ljava/util/List;Lcom/google/android/gms/dynamic/zzd;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/zzd;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzE(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/zzblr;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method public onDisconnectPut(Ljava/util/List;Lcom/google/android/gms/dynamic/zzd;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/zzd;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzE(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzblr;->zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzblr;->purgeOutstandingWrites()V

    return-void
.end method

.method public put(Ljava/util/List;Lcom/google/android/gms/dynamic/zzd;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/zzd;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzE(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzblu;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzblr;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzblu;)V

    return-void
.end method

.method public refreshAuthToken()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzblr;->refreshAuthToken()V

    return-void
.end method

.method public refreshAuthToken2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzblr;->zziO(Ljava/lang/String;)V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzblr;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzh;Lcom/google/android/gms/dynamic/zzd;Lcom/google/firebase/database/connection/idl/zzl;)V
    .locals 9

    iget-object v0, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcaQ:Lcom/google/firebase/database/connection/idl/zzf;

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/firebase/database/connection/idl/zzf;)Lcom/google/android/gms/internal/zzblp;

    move-result-object v7

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zze;->zzE(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzl;)Lcom/google/android/gms/internal/zzblr$zza;

    move-result-object v8

    new-instance v1, Lcom/google/android/gms/internal/zzbon;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/idl/zzc;->zzWu()Lcom/google/android/gms/internal/zzboq$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/idl/zzc;->zzWv()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzbon;-><init>(Lcom/google/android/gms/internal/zzboq$zza;Ljava/util/List;)V

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzh;)Lcom/google/android/gms/internal/zzblm;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzbln;

    iget-boolean v4, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzbZx:Z

    iget-object v5, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcaT:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzbZz:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbln;-><init>(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzblm;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbls;

    invoke-direct {v1, v0, v7, v8}, Lcom/google/android/gms/internal/zzbls;-><init>(Lcom/google/android/gms/internal/zzbln;Lcom/google/android/gms/internal/zzblp;Lcom/google/android/gms/internal/zzblr$zza;)V

    iput-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzblr;->shutdown()V

    return-void
.end method

.method public unlisten(Ljava/util/List;Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/zzd;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcaY:Lcom/google/android/gms/internal/zzblr;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzE(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/zzblr;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
