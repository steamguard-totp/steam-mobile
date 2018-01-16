.class public Lcom/google/android/gms/internal/zzbkl;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzAN:Landroid/content/SharedPreferences;

.field private zzbVW:Lcom/google/android/gms/internal/zzbrl;

.field private zzbWT:Ljava/lang/String;

.field private zzbWU:Lcom/google/android/gms/internal/zzbrw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbrl;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzbWT:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->mContext:Landroid/content/Context;

    const-string v0, "com.google.firebase.auth.api.Store.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkl;->zzbWT:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    new-instance v0, Lcom/google/android/gms/internal/zzbrw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbrw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzbWU:Lcom/google/android/gms/internal/zzbrw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzAN:Landroid/content/SharedPreferences;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbru;)Lcom/google/android/gms/internal/zzbkh;
    .locals 11

    const-string v0, "cachedTokenState"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbru;->zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrr;->zzabu()Ljava/lang/String;

    move-result-object v3

    const-string v0, "applicationName"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbru;->zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrr;->zzabu()Ljava/lang/String;

    move-result-object v4

    const-string v0, "anonymous"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbru;->zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrr;->getAsBoolean()Z

    move-result v5

    const-string v0, "2"

    const-string v1, "version"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbru;->zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrr;->zzaby()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrr;->zzabu()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v0, "userInfos"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbru;->zzjT(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbro;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbro;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzbro;->zzqc(I)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v9

    const-class v10, Lcom/google/android/gms/internal/zzbkf;

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/zzbrl;->zza(Lcom/google/android/gms/internal/zzbrr;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzbkh;

    invoke-direct {v2, v0, v8}, Lcom/google/android/gms/internal/zzbkh;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    const-class v4, Lcom/google/android/gms/internal/zzbjp;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzbrl;->zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjp;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbkh;->zza(Lcom/google/android/gms/internal/zzbjp;)V

    :cond_1
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzbkh;->zzaT(Z)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbkh;->zziA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbkh;

    return-object v2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private zzi(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;
    .locals 6

    new-instance v2, Lcom/google/android/gms/internal/zzbru;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbru;-><init>()V

    const-class v0, Lcom/google/android/gms/internal/zzbkh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzbkh;

    const-string v0, "cachedTokenState"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbkh;->zzTX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbru;->zzaB(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applicationName"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbkh;->zzTV()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbru;->zzaB(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbru;->zzaB(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbkh;->zzUG()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/zzbro;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbro;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbkh;->zzUG()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbkl;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzbrl;->zzaI(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbkl;->zziB(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzbro;->zzc(Lcom/google/android/gms/internal/zzbrr;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "userInfos"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzbru;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbrr;)V

    :cond_1
    const-string v0, "anonymous"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbkh;->isAnonymous()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbru;->zzb(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "version"

    const-string v1, "2"

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbru;->zzaB(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbru;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static zziB(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbrw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbrw;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbrw;->zzjU(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzAN:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzUI()Lcom/google/firebase/auth/FirebaseUser;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbkl;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkl;->zzbWU:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbrw;->zzjU(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrr;->zzabz()Lcom/google/android/gms/internal/zzbru;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbru;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbru;->zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrr;->zzabu()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbkl;->zza(Lcom/google/android/gms/internal/zzbru;)Lcom/google/android/gms/internal/zzbkh;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbsa; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/zzbjp;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzbkl;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zzak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzAN:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public zze(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbkl;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkl;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/zzbrl;->zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zzf(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbkl;->zzi(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzbkl;->zzak(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zzg(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzbjp;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzbjp;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbkl;->zze(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjp;

    return-object v0
.end method

.method public zzp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkl;->zzAN:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkl;->zzbVW:Lcom/google/android/gms/internal/zzbrl;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzbrl;->zzaI(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
