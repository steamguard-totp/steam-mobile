.class public Lcom/google/android/gms/common/api/zza;
.super Ljava/lang/Exception;


# instance fields
.field protected final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/zza;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-void
.end method
