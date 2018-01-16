.class public abstract Lcom/google/firebase/auth/FirebaseUser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getProviderData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUid()Ljava/lang/String;
.end method

.method public abstract isAnonymous()Z
.end method

.method public abstract zzR(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)",
            "Lcom/google/firebase/auth/FirebaseUser;"
        }
    .end annotation
.end method

.method public abstract zzTW()Lcom/google/android/gms/internal/zzbjp;
.end method

.method public abstract zzTY()Ljava/lang/String;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzbjp;)V
.end method

.method public abstract zzaT(Z)Lcom/google/firebase/auth/FirebaseUser;
.end method
