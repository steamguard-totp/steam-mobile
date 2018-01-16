.class public Lcom/google/android/gms/internal/zzbkf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/UserInfo;


# instance fields
.field private zzach:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "userId"
    .end annotation
.end field

.field private zzbWp:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbsg;
        value = "providerId"
    .end annotation
.end field


# virtual methods
.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkf;->zzbWp:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkf;->zzach:Ljava/lang/String;

    return-object v0
.end method
