.class public Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;
.super Landroid/widget/Filter;
.source "GenericFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field private final associatedAdapter:Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;

.field private final originalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final searchItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;Ljava/lang/Object;)V
    .locals 1
    .param p2, "adapter"    # Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;, "Lcom/valvesoftware/android/steam/community/fragment/GenericFilter<TT;>;"
    .local p1, "original":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "searchItem":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 15
    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->searchItem:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->originalList:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->associatedAdapter:Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;

    .line 23
    return-void
.end method


# virtual methods
.method addToOriginal(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;, "Lcom/valvesoftware/android/steam/community/fragment/GenericFilter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->originalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 27
    .local p0, "this":Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;, "Lcom/valvesoftware/android/steam/community/fragment/GenericFilter<TT;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "filterSeq":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 29
    .local v3, "result":Landroid/widget/Filter$FilterResults;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->originalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 33
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->searchItem:Ljava/lang/Object;

    if-ne v2, v5, :cond_0

    .line 34
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    .end local v0    # "filter":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "filterSeq":Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    .end local v3    # "result":Landroid/widget/Filter$FilterResults;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 37
    .restart local v0    # "filter":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v1    # "filterSeq":Ljava/lang/String;
    .restart local v3    # "result":Landroid/widget/Filter$FilterResults;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 38
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 45
    .end local v0    # "filter":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_2
    return-object v3

    .line 40
    :cond_4
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->originalList:Ljava/util/List;

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 42
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->originalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 43
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 50
    .local p0, "this":Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;, "Lcom/valvesoftware/android/steam/community/fragment/GenericFilter<TT;>;"
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 51
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_1

    .line 56
    :cond_0
    return-void

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->associatedAdapter:Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;

    invoke-interface {v3}, Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;->notifyDataSetChanged()V

    .line 53
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->associatedAdapter:Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;

    invoke-interface {v3}, Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;->clear()V

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "l":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 55
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->associatedAdapter:Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/valvesoftware/android/steam/community/fragment/FilterableAdapter;->add(Ljava/lang/Object;)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeFromOriginal(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;, "Lcom/valvesoftware/android/steam/community/fragment/GenericFilter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GenericFilter;->originalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
