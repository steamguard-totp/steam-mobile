.class public Lcom/valvesoftware/android/steam/community/SteamAppIntents;
.super Ljava/lang/Object;
.source "SteamAppIntents.java"


# static fields
.field public static chatPartnerAvatarUrlKey:Ljava/lang/String;

.field public static chatPartnerPersonaNameKey:Ljava/lang/String;

.field public static notificationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "chatPartnerAvatarUrl"

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatPartnerAvatarUrlKey:Ljava/lang/String;

    .line 12
    const-string v0, "chatPartnerPersonaNameKey"

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatPartnerPersonaNameKey:Ljava/lang/String;

    .line 13
    const-string v0, "notificationId"

    sput-object v0, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationId:Ljava/lang/String;

    return-void
.end method

.method public static chatIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, v0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static chatIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "steamId"    # Ljava/lang/String;
    .param p2, "personaName"    # Ljava/lang/String;
    .param p3, "partnerAvatarUrl"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createChatUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 30
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatPartnerAvatarUrlKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    :cond_0
    if-eqz p2, :cond_1

    .line 33
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatPartnerPersonaNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :cond_1
    return-object v0
.end method

.method public static communityURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_COMMUNITY_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static helpURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_HELP_BASE:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->appendLanguageToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static loginIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->login()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static notificationAsyncGameIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->notificationAsyncGame()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static notificationCommentsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->notificationComments()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static notificationGiftsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->notificationGifts()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static notificationHelpRequestReplyIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const-string v0, "/wizard/HelpRequests"

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->helpURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static notificationInvitesIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->notificationInvites()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static notificationItemsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->notificationItems()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static notificationModeratorMessageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->notificationModeratorMessage()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static notificationTradeOffersIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->notificationTradeOffers()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static profileURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createCurrentUserProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static searchFriendIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createFriendsSearchUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static searchSteam(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->searchSteam()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewAccountDetails(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->accountDetails()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewCatalog(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->catalog()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewConfirmations(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->confirmationResource()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewFriendActivity(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->friendActivity()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewFriendsList(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->friendsList()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewGroupsList(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->groupsList()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewLibrary(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->library()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewSettings(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->settings()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewShoppingCart(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->shoppingCart()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewSteamGuard(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->steamGuard()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewSteamNews(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->steamNews()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewWebPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createSteamAppWebUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static viewWishList(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->wishlist()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static visitProfileIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createVisitProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->mainActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
