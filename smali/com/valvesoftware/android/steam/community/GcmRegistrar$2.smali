.class Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;
.super Landroid/os/AsyncTask;
.source "GcmRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/GcmRegistrar;->unregister(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

.field final synthetic val$withRetry:Z


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/GcmRegistrar;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    iput-boolean p2, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;->val$withRetry:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 129
    const-string v1, ""

    .line 131
    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->access$000(Lcom/valvesoftware/android/steam/community/GcmRegistrar;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 132
    .local v0, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    .line 133
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->clearStoredRegistrationId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v2

    iget-boolean v2, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;->val$withRetry:Z

    if-eqz v2, :cond_0

    .line 136
    invoke-static {}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->access$200()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2$1;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2$1;-><init>(Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, "Could not unregister with GCM"

    goto :goto_0
.end method
