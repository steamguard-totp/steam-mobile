.class public Lcom/android/volley/VolleyError;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public final networkResponse:Lcom/android/volley/NetworkResponse;

.field private networkTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 48
    return-void
.end method


# virtual methods
.method setNetworkTimeMs(J)V
    .locals 1
    .param p1, "networkTimeMs"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/volley/VolleyError;->networkTimeMs:J

    .line 52
    return-void
.end method
