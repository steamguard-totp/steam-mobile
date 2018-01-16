.class final Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzblm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzh;)Lcom/google/android/gms/internal/zzblm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcbf:Lcom/google/firebase/database/connection/idl/zzh;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;->zzcbf:Lcom/google/firebase/database/connection/idl/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(ZLcom/google/android/gms/internal/zzblm$zza;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;->zzcbf:Lcom/google/firebase/database/connection/idl/zzh;

    new-instance v1, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;-><init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;Lcom/google/android/gms/internal/zzblm$zza;)V

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/connection/idl/zzh;->zza(ZLcom/google/firebase/database/connection/idl/zzi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
