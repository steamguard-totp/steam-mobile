.class public Lcom/google/android/gms/internal/zzbkh;
.super Lcom/google/firebase/auth/FirebaseUser;


# instance fields
.field private zzbVW:Lcom/google/android/gms/internal/zzbrl;

.field private zzbWK:Lcom/google/android/gms/internal/zzbjp;

.field private zzbWL:Lcom/google/android/gms/internal/zzbkf;

.field private zzbWM:Ljava/lang/String;

.field private zzbWN:Ljava/lang/String;

.field private zzbWO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbkf;",
            ">;"
        }
    .end annotation
.end field

.field private zzbWP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbWQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbkf;",
            ">;"
        }
    .end annotation
.end field

.field private zzbWR:Ljava/lang/String;

.field private zzbWS:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWM:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzbiz;->zzUg()Lcom/google/android/gms/internal/zzbrl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    const-string v0, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWN:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWR:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbkh;->zzR(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    return-void
.end method


# virtual methods
.method public getProviderData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWO:Ljava/util/List;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWL:Lcom/google/android/gms/internal/zzbkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbkf;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWL:Lcom/google/android/gms/internal/zzbkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbkf;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWS:Z

    return v0
.end method

.method public zzR(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 5
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

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWO:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWP:Ljava/util/List;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWQ:Ljava/util/Map;

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/UserInfo;

    invoke-interface {v0}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "firebase"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzbkf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWL:Lcom/google/android/gms/internal/zzbkf;

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWO:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzbkf;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWQ:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWP:Ljava/util/List;

    invoke-interface {v0}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWL:Lcom/google/android/gms/internal/zzbkf;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWO:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWL:Lcom/google/android/gms/internal/zzbkf;

    :cond_2
    return-object p0
.end method

.method public zzTV()Lcom/google/firebase/FirebaseApp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWM:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public zzTW()Lcom/google/android/gms/internal/zzbjp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWK:Lcom/google/android/gms/internal/zzbjp;

    return-object v0
.end method

.method public zzTX()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWK:Lcom/google/android/gms/internal/zzbjp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrl;->zzaI(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzTY()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkh;->zzTW()Lcom/google/android/gms/internal/zzbjp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbjp;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzUG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbkf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWO:Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbjp;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjp;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWK:Lcom/google/android/gms/internal/zzbjp;

    return-void
.end method

.method public synthetic zzaT(Z)Lcom/google/firebase/auth/FirebaseUser;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbkh;->zzaU(Z)Lcom/google/android/gms/internal/zzbkh;

    move-result-object v0

    return-object v0
.end method

.method public zzaU(Z)Lcom/google/android/gms/internal/zzbkh;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWS:Z

    return-object p0
.end method

.method public zziA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbkh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkh;->zzbWR:Ljava/lang/String;

    return-object p0
.end method
