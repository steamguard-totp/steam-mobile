.class Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;
.super Landroid/os/AsyncTask;
.source "GcmRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/GcmRegistrar;->registerWithGcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/GcmRegistrar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    .line 41
    const-string v2, ""

    .line 44
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->access$000(Lcom/valvesoftware/android/steam/community/GcmRegistrar;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    .line 45
    .local v1, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "963091912489"

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "regId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device registered, registration ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-virtual {v5, v4}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->storeRegistrationIdAndSendToServer(Ljava/lang/String;)V

    .line 48
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->access$100(Lcom/valvesoftware/android/steam/community/GcmRegistrar;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v4    # "regId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->access$100(Lcom/valvesoftware/android/steam/community/GcmRegistrar;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 51
    .local v3, "n":I
    const/4 v5, 0x6

    if-ge v3, v5, :cond_0

    .line 52
    invoke-static {}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->access$200()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1$1;

    invoke-direct {v6, p0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1$1;-><init>(Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;)V

    shl-int v7, v8, v3

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 59
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v5, "GCMRegError"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
