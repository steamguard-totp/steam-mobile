.class Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$3;
.super Ljava/lang/Object;
.source "GroupsListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Group;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/valvesoftware/android/steam/community/model/Group;Lcom/valvesoftware/android/steam/community/model/Group;)I
    .locals 2
    .param p1, "o1"    # Lcom/valvesoftware/android/steam/community/model/Group;
    .param p2, "o2"    # Lcom/valvesoftware/android/steam/community/model/Group;

    .prologue
    .line 115
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    if-eq v0, v1, :cond_1

    .line 116
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->ordinal()I

    move-result v0

    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 118
    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 113
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/Group;

    check-cast p2, Lcom/valvesoftware/android/steam/community/model/Group;

    invoke-virtual {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$3;->compare(Lcom/valvesoftware/android/steam/community/model/Group;Lcom/valvesoftware/android/steam/community/model/Group;)I

    move-result v0

    return v0
.end method
