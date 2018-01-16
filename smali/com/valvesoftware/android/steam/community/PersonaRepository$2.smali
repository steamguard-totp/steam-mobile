.class final Lcom/valvesoftware/android/steam/community/PersonaRepository$2;
.super Ljava/lang/Object;
.source "PersonaRepository.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/RepositoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/PersonaRepository;->getDetailedPersonaInfo(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/valvesoftware/android/steam/community/RepositoryCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Persona;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$2;->val$callback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic dataAvailable(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/PersonaRepository$2;->dataAvailable(Ljava/util/List;)V

    return-void
.end method

.method public dataAvailable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "persona":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$2;->val$callback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$2;->val$callback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/valvesoftware/android/steam/community/RepositoryCallback;->dataAvailable(Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$2;->val$callback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/PersonaRepository$2;->val$callback:Lcom/valvesoftware/android/steam/community/RepositoryCallback;

    invoke-interface {v0}, Lcom/valvesoftware/android/steam/community/RepositoryCallback;->end()V

    .line 69
    :cond_0
    return-void
.end method
