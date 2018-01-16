.class final Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$1;
.super Ljava/lang/Object;
.source "FriendsListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Persona;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/model/Persona;)I
    .locals 6
    .param p1, "o1"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "o2"    # Lcom/valvesoftware/android/steam/community/model/Persona;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    move-result-object v2

    invoke-virtual {p2}, Lcom/valvesoftware/android/steam/community/model/Persona;->getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->ordinal()I

    move-result v2

    invoke-virtual {p2}, Lcom/valvesoftware/android/steam/community/model/Persona;->getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->hasSentUnreadMessage()Z

    move-result v2

    invoke-virtual {p2}, Lcom/valvesoftware/android/steam/community/model/Persona;->hasSentUnreadMessage()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->hasSentUnreadMessage()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->getDisplayCategory()Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    move-result-object v2

    sget-object v3, Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;->CHATS:Lcom/valvesoftware/android/steam/community/model/PersonaStateCategoryInList;

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->getLastMessageTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    invoke-virtual {p2}, Lcom/valvesoftware/android/steam/community/model/Persona;->getLastMessageTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 57
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/model/Persona;->getLastMessageTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/valvesoftware/android/steam/community/model/Persona;->getLastMessageTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 59
    :cond_4
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/Persona;

    check-cast p2, Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-virtual {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$1;->compare(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/model/Persona;)I

    move-result v0

    return v0
.end method
