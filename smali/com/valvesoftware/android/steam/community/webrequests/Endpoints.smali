.class public Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;
.super Ljava/lang/Object;
.source "Endpoints.java"


# static fields
.field public static final GENERAL_SEARCH_URL:Ljava/lang/String;

.field public static final GET_ACTIVE_MESSAGE_SESSIONS_SINCE_URL:Ljava/lang/String;

.field public static final GET_APP_SUMMARIES_URL:Ljava/lang/String;

.field public static final GET_GROUP_SUMMARIES_URL:Ljava/lang/String;

.field public static final GET_RECENT_MESSAGES_URL:Ljava/lang/String;

.field public static final GET_USER_FRIEND_LIST_URL:Ljava/lang/String;

.field public static final GET_USER_GROUP_LIST_URL:Ljava/lang/String;

.field public static final GET_USER_SUMMARIES_URL:Ljava/lang/String;

.field public static final MARK_OFFLINE_MESSAGES_READ_URL:Ljava/lang/String;

.field public static final MOBILEAUTH_BASE_URL:Ljava/lang/String;

.field public static final MOBILENOTIFICATION_BASE_URL:Ljava/lang/String;

.field public static final MOBILE_STOREFRONT_ACCOUNTDETAILS_CATEGORIES_URL:Ljava/lang/String;

.field public static final MOBILE_STOREFRONT_CATEGORIES_URL:Ljava/lang/String;

.field public static final MOBILE_STOREFRONT_INDEX_CATEGORIES_URL:Ljava/lang/String;

.field public static final SWITCH_TO_PUSH_URL:Ljava/lang/String;

.field public static final TWO_FACTOR_BASE_URL:Ljava/lang/String;

.field public static final UMQ_DEVICE_INFO_URL:Ljava/lang/String;

.field public static final UMQ_LOGOFF_URL:Ljava/lang/String;

.field public static final UMQ_LOGON_URL:Ljava/lang/String;

.field public static final UMQ_MESSAGE_REQ_URL:Ljava/lang/String;

.field public static final UMQ_POLL_FOR_MESSAGES_URL:Ljava/lang/String;

.field public static final UMQ_POLL_STATUS_URL:Ljava/lang/String;

.field public static final UMQ_SERVER_INFO_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamWebUserPresenceOAuth/Logon/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_LOGON_URL:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamWebUserPresenceOAuth/Logoff/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_LOGOFF_URL:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamWebUserPresenceOAuth/Message/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_MESSAGE_REQ_URL:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamWebAPIUtil/GetServerInfo/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_SERVER_INFO_URL:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamWebUserPresenceOAuth/DeviceInfo/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_DEVICE_INFO_URL:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamWebUserPresenceOAuth/PollStatus/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_POLL_STATUS_URL:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamWebUserPresenceOAuth/Poll/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_POLL_FOR_MESSAGES_URL:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamUserOAuth/GetUserSummaries/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_USER_SUMMARIES_URL:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamUserOAuth/GetGroupSummaries/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_GROUP_SUMMARIES_URL:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamGameOAuth/GetAppInfo/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_APP_SUMMARIES_URL:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamUserOAuth/GetGroupList/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_USER_GROUP_LIST_URL:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ITwoFactorService/%s/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->TWO_FACTOR_BASE_URL:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IMobileAuthService/%s/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MOBILEAUTH_BASE_URL:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IMobileNotificationService/%s/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MOBILENOTIFICATION_BASE_URL:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamUserOAuth/GetFriendList/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_USER_FRIEND_LIST_URL:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ISteamUserOAuth/Search/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GENERAL_SEARCH_URL:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/mobilestorefrontcategories/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MOBILE_STOREFRONT_CATEGORIES_URL:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/mobilestorefrontindexcategories/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MOBILE_STOREFRONT_INDEX_CATEGORIES_URL:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_STORE_BASE_INSECURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/mobilestorefrontaccountdetailscategories/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MOBILE_STOREFRONT_ACCOUNTDETAILS_CATEGORIES_URL:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IFriendMessagesService/GetActiveMessageSessions/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_ACTIVE_MESSAGE_SESSIONS_SINCE_URL:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IFriendMessagesService/GetRecentMessages/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_RECENT_MESSAGES_URL:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IFriendMessagesService/MarkOfflineMessagesRead/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MARK_OFFLINE_MESSAGES_READ_URL:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/valvesoftware/android/steam/community/Config;->URL_WEBAPI_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IMobileNotificationService/SwitchSessionToPush/v0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->SWITCH_TO_PUSH_URL:Ljava/lang/String;

    return-void
.end method

.method private static buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getActiveMessageSessions()Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_ACTIVE_MESSAGE_SESSIONS_SINCE_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getAddAuthenticatorRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 5
    .param p0, "steamId"    # Ljava/lang/String;
    .param p1, "authenticatorType"    # Ljava/lang/String;
    .param p2, "uniqueIdForPhone"    # Ljava/lang/String;

    .prologue
    .line 248
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->TWO_FACTOR_BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AddAuthenticator"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 249
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 250
    const-string v1, "authenticator_type"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "device_identifier"

    invoke-virtual {v0, v1, p2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-object v0
.end method

.method private static getDetailRequestBuilders(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "steamIdCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v2, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_0

    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x32

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 115
    .local v3, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3, p1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getSingleDetailRequest(Ljava/util/Collection;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 116
    .local v0, "r":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 120
    .end local v0    # "r":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .end local v3    # "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 121
    invoke-static {v2, p1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getSingleDetailRequest(Ljava/util/Collection;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    return-object v1
.end method

.method public static getFriendListRequestBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 2
    .param p0, "steamId"    # Ljava/lang/String;
    .param p1, "relationship"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_USER_FRIEND_LIST_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 70
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 71
    const-string v1, "relationship"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method public static getFriendsSearchRequestBuilder(Ljava/lang/String;II)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 3
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "pageSize"    # I

    .prologue
    .line 49
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GENERAL_SEARCH_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 50
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "keywords"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "offset"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "targets"

    const-string v2, "users"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "fields"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v0
.end method

.method public static getGenericJsonGetRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 296
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    return-object v0
.end method

.method public static getGroupListRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 2
    .param p0, "steamId"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_USER_GROUP_LIST_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 77
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 78
    return-object v0
.end method

.method public static getGroupSummariesRequestBuilder(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "steamIdCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_GROUP_SUMMARIES_URL:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getDetailRequestBuilders(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupsSearchRequestBuilder(Ljava/lang/String;II)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 3
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "pageSize"    # I

    .prologue
    .line 59
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GENERAL_SEARCH_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 60
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "keywords"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "offset"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "targets"

    const-string v2, "groups"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "fields"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method public static getImageUrlRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMarkMessagesReadRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 3
    .param p0, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;

    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MARK_OFFLINE_MESSAGES_READ_URL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;-><init>(Ljava/lang/String;Z)V

    .line 208
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;
    const-string v1, "steamid_friend"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object v0
.end method

.method public static getRecentMessages(Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 3
    .param p0, "loggedInUserSteamId"    # Ljava/lang/String;
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_RECENT_MESSAGES_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 101
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "steamid1"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "steamid2"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "rtime32_start_time"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

.method public static getRemoveAuthenticatorRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 5
    .param p0, "steamId"    # Ljava/lang/String;
    .param p1, "steamguardScheme"    # Ljava/lang/String;
    .param p2, "revocationCode"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->TWO_FACTOR_BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "RemoveAuthenticator"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 258
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 259
    const-string v1, "steamguard_scheme"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz p2, :cond_0

    .line 261
    const-string v1, "revocation_code"

    invoke-virtual {v0, v1, p2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    return-object v0
.end method

.method public static getSendServerPushInfoRequestBuilder(Ljava/lang/String;ZLjava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 4
    .param p0, "regId"    # Ljava/lang/String;
    .param p1, "enablePush"    # Z
    .param p2, "umqId"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_DEVICE_INFO_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 166
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "deviceid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GOOG::GCM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "lang"

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "version"

    sget-object v2, Lcom/valvesoftware/android/steam/community/Config;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz p2, :cond_0

    const-string v1, "umqid"

    invoke-virtual {v0, v1, p2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    const-string v2, "im_enable"

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "tf_deviceid"

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getUniqueIdForPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v0

    .line 170
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public static getSendUMQMessageRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "chatPartnerSteamId"    # Ljava/lang/String;
    .param p2, "umqId"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_MESSAGE_REQ_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 146
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "umqid"

    invoke-virtual {v0, v1, p2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "type"

    const-string v2, "saytext"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "steamid_dst"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "text"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method public static getSendUMQTypingNotificationRequestBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 3
    .param p0, "chatPartnerSteamId"    # Ljava/lang/String;
    .param p1, "umqId"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_MESSAGE_REQ_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 156
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "umqid"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "type"

    const-string v2, "typing"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "steamid_dst"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object v0
.end method

.method private static getSingleDetailRequest(Ljava/util/Collection;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "steamIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 129
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v2, "steamids"

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method public static getSwitchToPushRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 2
    .param p0, "umqId"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->SWITCH_TO_PUSH_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 180
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "umqid"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method public static getTwoFactorFinalizeAddAuthenticatorRequestBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 5
    .param p0, "steamId"    # Ljava/lang/String;
    .param p1, "activationCode"    # Ljava/lang/String;
    .param p2, "authenticatorCode"    # Ljava/lang/String;
    .param p3, "authenticatorTime"    # J

    .prologue
    .line 221
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->TWO_FACTOR_BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "FinalizeAddAuthenticator"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 222
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 224
    if-eqz p1, :cond_0

    .line 225
    const-string v1, "activation_code"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    if-eqz p2, :cond_1

    .line 229
    const-string v1, "authenticator_code"

    invoke-virtual {v0, v1, p2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    const-string v1, "authenticator_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-object v0
.end method

.method public static getTwoFactorQueryStatusRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 5
    .param p0, "steamId"    # Ljava/lang/String;

    .prologue
    .line 279
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->TWO_FACTOR_BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "QueryStatus"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 280
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 281
    return-object v0
.end method

.method public static getTwoFactorQueryTimeRequestBuilder()Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 5

    .prologue
    .line 274
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->TWO_FACTOR_BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "QueryTime"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 275
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    return-object v0
.end method

.method public static getTwoFactorSendEmailRequestBuilder(Ljava/lang/String;I)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 5
    .param p0, "steamId"    # Ljava/lang/String;
    .param p1, "emailType"    # I

    .prologue
    .line 267
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->TWO_FACTOR_BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SendEmail"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 268
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 269
    const-string v1, "email_type"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-object v0
.end method

.method public static getUMQLogoffRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 2
    .param p0, "umqId"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_LOGOFF_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 140
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "umqid"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method public static getUMQLogonRequestBuilder()Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 2

    .prologue
    .line 134
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_LOGON_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 135
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    return-object v0
.end method

.method public static getUMQPollForMessageRequestBuilder(Ljava/lang/String;Ljava/lang/String;J)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 6
    .param p0, "steamId"    # Ljava/lang/String;
    .param p1, "umqId"    # Ljava/lang/String;
    .param p2, "messageNumber"    # J

    .prologue
    .line 196
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_POLL_FOR_MESSAGES_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 197
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 198
    const-string v1, "umqid"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "message"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "sectimeout"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x7530

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 202
    return-object v0
.end method

.method public static getUMQPollStatusRequestBuilder(Ljava/lang/String;Ljava/lang/String;J)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 6
    .param p0, "steamId"    # Ljava/lang/String;
    .param p1, "umqId"    # Ljava/lang/String;
    .param p2, "messageNumber"    # J

    .prologue
    .line 186
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->UMQ_POLL_STATUS_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 187
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendSteamId(Ljava/lang/String;)V

    .line 188
    const-string v1, "umqid"

    invoke-virtual {v0, v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "message"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "sectimeout"

    const-string v2, "25"

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x7530

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 192
    return-object v0
.end method

.method public static getUserNotificationCounts()Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    .locals 5

    .prologue
    .line 290
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MOBILENOTIFICATION_BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GetUserNotificationCounts"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 291
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    return-object v0
.end method

.method public static getUserSummariesRequestBuilder(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "steamIdCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_USER_SUMMARIES_URL:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getDetailRequestBuilders(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSummaryRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    .locals 2
    .param p0, "steamId"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->GET_USER_SUMMARIES_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForGet(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 83
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    const-string v1, "steamids"

    invoke-virtual {v0, v1, p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method public static getWGToken()Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    .locals 5

    .prologue
    .line 285
    sget-object v1, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->MOBILEAUTH_BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GetWGToken"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->buildRequestForPost(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;

    move-result-object v0

    .line 286
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
    return-object v0
.end method
