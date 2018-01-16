.class Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;
.super Lcom/google/firebase/database/connection/idl/zzi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;->zza(ZLcom/google/android/gms/internal/zzblm$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcbg:Lcom/google/android/gms/internal/zzblm$zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;Lcom/google/android/gms/internal/zzblm$zza;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;->zzcbg:Lcom/google/android/gms/internal/zzblm$zza;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;->zzcbg:Lcom/google/android/gms/internal/zzblm$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzblm$zza;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public zziM(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;->zzcbg:Lcom/google/android/gms/internal/zzblm$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzblm$zza;->zziM(Ljava/lang/String;)V

    return-void
.end method
