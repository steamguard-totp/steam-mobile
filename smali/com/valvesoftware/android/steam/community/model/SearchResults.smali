.class public Lcom/valvesoftware/android/steam/community/model/SearchResults;
.super Ljava/lang/Object;
.source "SearchResults.java"


# instance fields
.field private final ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/SearchResults;->ids:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSteamId(Ljava/lang/String;)V
    .locals 1
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/SearchResults;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public getCurrentCount()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/SearchResults;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getResultIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/SearchResults;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
