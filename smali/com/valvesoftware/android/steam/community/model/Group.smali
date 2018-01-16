.class public Lcom/valvesoftware/android/steam/community/model/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field public avatar:Landroid/graphics/Bitmap;

.field public categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

.field public favoriteAppId:I

.field public fullAvatarUrl:Ljava/lang/String;

.field public mediumAvatarUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public numUsersOnline:I

.field public numUsersTotal:I

.field public profileUrl:Ljava/lang/String;

.field public relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

.field public smallAvatarUrl:Ljava/lang/String;

.field public steamId:Ljava/lang/String;

.field public type:Lcom/valvesoftware/android/steam/community/model/GroupType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupType;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupType;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->type:Lcom/valvesoftware/android/steam/community/model/GroupType;

    .line 10
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 11
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->None:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->favoriteAppId:I

    return-void
.end method

.method private determineDisplayCategory()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Invited:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    if-ne v0, v1, :cond_0

    .line 61
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->REQUEST_INVITE:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->type:Lcom/valvesoftware/android/steam/community/model/GroupType;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupType;->OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupType;

    if-ne v0, v1, :cond_1

    .line 63
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->OFFICIAL:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->type:Lcom/valvesoftware/android/steam/community/model/GroupType;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupType;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupType;

    if-ne v0, v1, :cond_2

    .line 65
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->PRIVATE:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;->PUBLIC:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Group;

    .line 89
    .local v0, "group":Lcom/valvesoftware/android/steam/community/model/Group;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public hasProfileUrl()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lcom/valvesoftware/android/steam/community/model/Group;)V
    .locals 2
    .param p1, "detail"    # Lcom/valvesoftware/android/steam/community/model/Group;

    .prologue
    .line 44
    iget v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->numUsersOnline:I

    iput v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->numUsersOnline:I

    .line 45
    iget v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->numUsersTotal:I

    iput v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->numUsersTotal:I

    .line 46
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->avatar:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->avatar:Landroid/graphics/Bitmap;

    .line 48
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->categoryInList:Lcom/valvesoftware/android/steam/community/model/GroupCategoryInList;

    .line 50
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->smallAvatarUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->smallAvatarUrl:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->mediumAvatarUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->mediumAvatarUrl:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->None:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    :goto_0
    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    .line 53
    iget v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->favoriteAppId:I

    iput v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->favoriteAppId:I

    .line 54
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->type:Lcom/valvesoftware/android/steam/community/model/GroupType;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->type:Lcom/valvesoftware/android/steam/community/model/GroupType;

    .line 55
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/model/Group;->determineDisplayCategory()V

    .line 56
    return-void

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/Group;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
