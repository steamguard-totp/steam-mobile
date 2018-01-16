.class final Lcom/valvesoftware/android/steam/community/PersonaRepository$1;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "PersonaRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/PersonaRepository;->getDetailedPersonaInfo(Ljava/util/Collection;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callsRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$multipleResponseCallback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$callsRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$multipleResponseCallback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$callsRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 45
    .local v0, "remaining":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$multipleResponseCallback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$multipleResponseCallback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    invoke-interface {v1}, Lcom/valvesoftware/android/steam/community/RepositoryCallback;->end()V

    .line 49
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/PersonaTranslator;->translateList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 33
    .local v0, "friendDetails":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$callsRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 34
    .local v1, "remaining":I
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$multipleResponseCallback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$multipleResponseCallback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    invoke-interface {v2, v0}, Lcom/valvesoftware/android/steam/community/RepositoryCallback;->dataAvailable(Ljava/lang/Object;)V

    .line 36
    if-nez v1, :cond_0

    .line 37
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;->val$multipleResponseCallback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    invoke-interface {v2}, Lcom/valvesoftware/android/steam/community/RepositoryCallback;->end()V

    .line 40
    :cond_0
    return-void
.end method
