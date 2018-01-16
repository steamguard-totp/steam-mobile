.class public Lcom/google/android/gms/internal/zzbpo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbpo$zza;
    }
.end annotation


# static fields
.field private static final zzchJ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final zzchK:Ljava/nio/charset/Charset;

.field private static zzchT:Ljava/util/concurrent/ThreadFactory;

.field private static zzchU:Lcom/google/android/gms/internal/zzbpn;


# instance fields
.field private final zzayy:I

.field private volatile zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

.field private volatile zzchM:Ljava/net/Socket;

.field private zzchN:Lcom/google/android/gms/internal/zzbpp;

.field private final zzchO:Ljava/net/URI;

.field private final zzchP:Lcom/google/android/gms/internal/zzbpt;

.field private final zzchQ:Lcom/google/android/gms/internal/zzbpu;

.field private final zzchR:Lcom/google/android/gms/internal/zzbpr;

.field private final zzchS:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpo;->zzchJ:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbpo;->zzchK:Ljava/nio/charset/Charset;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbpo;->zzchT:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Lcom/google/android/gms/internal/zzbpo$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbpo$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbpo;->zzchU:Lcom/google/android/gms/internal/zzbpn;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzchX:Lcom/google/android/gms/internal/zzbpo$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchM:Ljava/net/Socket;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    sget-object v0, Lcom/google/android/gms/internal/zzbpo;->zzchJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzayy:I

    invoke-static {}, Lcom/google/android/gms/internal/zzbpo;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbpo$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbpo$2;-><init>(Lcom/google/android/gms/internal/zzbpo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchS:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchO:Ljava/net/URI;

    new-instance v0, Lcom/google/android/gms/internal/zzbpr;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpr;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchR:Lcom/google/android/gms/internal/zzbpr;

    new-instance v0, Lcom/google/android/gms/internal/zzbpt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbpt;-><init>(Lcom/google/android/gms/internal/zzbpo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchP:Lcom/google/android/gms/internal/zzbpt;

    new-instance v0, Lcom/google/android/gms/internal/zzbpu;

    const-string v1, "TubeSock"

    iget v2, p0, Lcom/google/android/gms/internal/zzbpo;->zzayy:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzbpu;-><init>(Lcom/google/android/gms/internal/zzbpo;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    return-void
.end method

.method private createSocket()Ljava/net/Socket;
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchO:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchO:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchO:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    if-eqz v1, :cond_2

    const-string v3, "ws"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v0, v4, :cond_7

    const/16 v0, 0x50

    move v1, v0

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v2, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v3, Lcom/google/android/gms/internal/zzbpq;

    const-string v4, "unknown host: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbpq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpo;->zzchO:Ljava/net/URI;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "error while creating socket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    if-eqz v1, :cond_5

    const-string v3, "wss"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v0, v4, :cond_3

    const/16 v0, 0x1bb

    :cond_3
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbpq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchO:Ljava/net/URI;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error while verifying secure socket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v3, Lcom/google/android/gms/internal/zzbpq;

    const-string v4, "unknown host: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbpq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpo;->zzchO:Ljava/net/URI;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "error while creating secure socket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/zzbpq;

    const-string v3, "unsupported protocol: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v1, v0

    goto/16 :goto_0
.end method

.method static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbpo;->zzchT:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method static zzZG()Lcom/google/android/gms/internal/zzbpn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbpo;->zzchU:Lcom/google/android/gms/internal/zzbpn;

    return-object v0
.end method

.method private declared-synchronized zzZJ()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzcib:Lcom/google/android/gms/internal/zzbpo$zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchP:Lcom/google/android/gms/internal/zzbpt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpt;->zzZQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpu;->zzZT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchM:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchM:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzcib:Lcom/google/android/gms/internal/zzbpo$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbpp;->onClose()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private zzZK()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzcia:Lcom/google/android/gms/internal/zzbpo$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpu;->zzZT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbpu;->zzb(BZ[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    new-instance v2, Lcom/google/android/gms/internal/zzbpq;

    const-string v3, "Failed to send close frame"

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbpq;)V

    goto :goto_0
.end method

.method private zzZM()V
    .locals 11

    const/4 v4, 0x1

    const/16 v10, 0x3e8

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpo;->createSocket()Ljava/net/Socket;

    move-result-object v0

    monitor-enter p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbpq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchM:Ljava/net/Socket;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzbpo$zza;->zzcib:Lcom/google/android/gms/internal/zzbpo$zza;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchM:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchM:Ljava/net/Socket;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzbpq; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbpq;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->close()V

    goto :goto_0

    :cond_0
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchR:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpr;->zzZO()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0x3e8

    new-array v2, v0, [B

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v3, v1

    :cond_1
    :goto_1
    if-nez v3, :cond_6

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbpq;

    const-string v1, "Connection closed before handshake was complete"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lcom/google/android/gms/internal/zzbpq; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    move-exception v0

    :try_start_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    new-instance v3, Lcom/google/android/gms/internal/zzbpq;

    const-string v4, "error while connecting: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbpq;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->close()V

    goto :goto_0

    :cond_2
    int-to-byte v8, v8

    :try_start_a
    aput-byte v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v8, v0, -0x1

    aget-byte v8, v2, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_4

    add-int/lit8 v8, v0, -0x2

    aget-byte v8, v2, v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_4

    new-instance v0, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/zzbpo;->zzchK:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    const/16 v0, 0x3e8

    new-array v0, v0, [B

    move v3, v2

    move-object v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_3

    :cond_4
    if-ne v0, v10, :cond_1

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzbpo;->zzchK:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbpq;

    const-string v2, "Unexpected long line in handshake: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Lcom/google/android/gms/internal/zzbpq; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->close()V

    throw v0

    :cond_5
    :try_start_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchR:Lcom/google/android/gms/internal/zzbpr;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbpr;->zzjd(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ": "

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchR:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zzd(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzbpu;->zzb(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchP:Lcom/google/android/gms/internal/zzbpt;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzbpt;->zza(Ljava/io/DataInputStream;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzchZ:Lcom/google/android/gms/internal/zzbpo$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpu;->zzZN()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbpp;->zzWt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchP:Lcom/google/android/gms/internal/zzbpt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpt;->run()V
    :try_end_b
    .catch Lcom/google/android/gms/internal/zzbpq; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->close()V

    goto/16 :goto_0

    :cond_8
    :try_start_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_2
.end method

.method private declared-synchronized zza(B[B)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzchZ:Lcom/google/android/gms/internal/zzbpo$zza;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    new-instance v1, Lcom/google/android/gms/internal/zzbpq;

    const-string v2, "error while sending data: not connected"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbpq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzbpu;->zzb(BZ[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    new-instance v2, Lcom/google/android/gms/internal/zzbpq;

    const-string v3, "Failed to send frame"

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbpq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpo;->zzZM()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbpo$3;->zzchW:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpo$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzcib:Lcom/google/android/gms/internal/zzbpo$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpo;->zzZJ()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpo;->zzZK()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized connect()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzchX:Lcom/google/android/gms/internal/zzbpo$zza;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    new-instance v1, Lcom/google/android/gms/internal/zzbpq;

    const-string v2, "connect() already called"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbpq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbpq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbpo;->zzZG()Lcom/google/android/gms/internal/zzbpn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->zzZN()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "TubeSockReader-"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzbpo;->zzayy:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpn;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbpo$zza;->zzchY:Lcom/google/android/gms/internal/zzbpo$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->zzZN()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzW([B)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzbpo;->zza(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method zzZH()Lcom/google/android/gms/internal/zzbpp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    return-object v0
.end method

.method zzZI()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpo;->zzZJ()V

    return-void
.end method

.method public zzZL()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpu;->zzZN()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchQ:Lcom/google/android/gms/internal/zzbpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpu;->zzZN()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->zzZN()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method

.method zzZN()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchS:Ljava/lang/Thread;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzbpq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchN:Lcom/google/android/gms/internal/zzbpp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbpq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzchL:Lcom/google/android/gms/internal/zzbpo$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbpo$zza;->zzchZ:Lcom/google/android/gms/internal/zzbpo$zza;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpo;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpo;->zzZJ()V

    return-void
.end method

.method public declared-synchronized zziT(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzbpo;->zzchK:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbpo;->zza(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
