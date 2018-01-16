package com.valvesoftware.android.steam.community.webrequests;

import android.os.Build;
import android.os.Build.VERSION;
import com.android.volley.DefaultRetryPolicy;
import com.valvesoftware.android.steam.community.Config;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.SteamguardState;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class Endpoints {
    public static final String GENERAL_SEARCH_URL = (Config.URL_WEBAPI_BASE + "/ISteamUserOAuth/Search/v0001");
    public static final String GET_ACTIVE_MESSAGE_SESSIONS_SINCE_URL = (Config.URL_WEBAPI_BASE + "/IFriendMessagesService/GetActiveMessageSessions/v0001");
    public static final String GET_APP_SUMMARIES_URL = (Config.URL_WEBAPI_BASE + "/ISteamGameOAuth/GetAppInfo/v0001");
    public static final String GET_GROUP_SUMMARIES_URL = (Config.URL_WEBAPI_BASE + "/ISteamUserOAuth/GetGroupSummaries/v0001");
    public static final String GET_RECENT_MESSAGES_URL = (Config.URL_WEBAPI_BASE + "/IFriendMessagesService/GetRecentMessages/v0001");
    public static final String GET_USER_FRIEND_LIST_URL = (Config.URL_WEBAPI_BASE + "/ISteamUserOAuth/GetFriendList/v0001");
    public static final String GET_USER_GROUP_LIST_URL = (Config.URL_WEBAPI_BASE + "/ISteamUserOAuth/GetGroupList/v0001");
    public static final String GET_USER_SUMMARIES_URL = (Config.URL_WEBAPI_BASE + "/ISteamUserOAuth/GetUserSummaries/v0001");
    public static final String MARK_OFFLINE_MESSAGES_READ_URL = (Config.URL_WEBAPI_BASE + "/IFriendMessagesService/MarkOfflineMessagesRead/v0001");
    public static final String MOBILEAUTH_BASE_URL = (Config.URL_WEBAPI_BASE + "/IMobileAuthService/%s/v0001");
    public static final String MOBILENOTIFICATION_BASE_URL = (Config.URL_WEBAPI_BASE + "/IMobileNotificationService/%s/v0001");
    public static final String MOBILE_STOREFRONT_ACCOUNTDETAILS_CATEGORIES_URL = (Config.URL_STORE_BASE_INSECURE + "/api/mobilestorefrontaccountdetailscategories/v0001");
    public static final String MOBILE_STOREFRONT_CATEGORIES_URL = (Config.URL_STORE_BASE_INSECURE + "/api/mobilestorefrontcategories/v0001");
    public static final String MOBILE_STOREFRONT_INDEX_CATEGORIES_URL = (Config.URL_STORE_BASE_INSECURE + "/api/mobilestorefrontindexcategories/v0001");
    public static final String SWITCH_TO_PUSH_URL = (Config.URL_WEBAPI_BASE + "/IMobileNotificationService/SwitchSessionToPush/v0001");
    public static final String TWO_FACTOR_BASE_URL = (Config.URL_WEBAPI_BASE + "/ITwoFactorService/%s/v0001");
    public static final String UMQ_DEVICE_INFO_URL = (Config.URL_WEBAPI_BASE + "/ISteamWebUserPresenceOAuth/DeviceInfo/v0001");
    public static final String UMQ_LOGOFF_URL = (Config.URL_WEBAPI_BASE + "/ISteamWebUserPresenceOAuth/Logoff/v0001");
    public static final String UMQ_LOGON_URL = (Config.URL_WEBAPI_BASE + "/ISteamWebUserPresenceOAuth/Logon/v0001");
    public static final String UMQ_MESSAGE_REQ_URL = (Config.URL_WEBAPI_BASE + "/ISteamWebUserPresenceOAuth/Message/v0001");
    public static final String UMQ_POLL_FOR_MESSAGES_URL = (Config.URL_WEBAPI_BASE + "/ISteamWebUserPresenceOAuth/Poll/v0001");
    public static final String UMQ_POLL_STATUS_URL = (Config.URL_WEBAPI_BASE_INSECURE + "/ISteamWebUserPresenceOAuth/PollStatus/v0001");
    public static final String UMQ_SERVER_INFO_URL = (Config.URL_WEBAPI_BASE + "/ISteamWebAPIUtil/GetServerInfo/v0001");

    public static ImageRequestBuilder getImageUrlRequestBuilder(String url) {
        return new ImageRequestBuilder(url);
    }

    public static RequestBuilder getFriendsSearchRequestBuilder(String query, int offset, int pageSize) {
        JsonRequestBuilder requestBuilder = buildRequestForGet(GENERAL_SEARCH_URL);
        requestBuilder.appendKeyValue("keywords", query);
        requestBuilder.appendKeyValue("offset", String.valueOf(offset));
        requestBuilder.appendKeyValue("count", String.valueOf(pageSize));
        requestBuilder.appendKeyValue("targets", "users");
        requestBuilder.appendKeyValue("fields", "all");
        return requestBuilder;
    }

    public static RequestBuilder getGroupsSearchRequestBuilder(String query, int offset, int pageSize) {
        JsonRequestBuilder requestBuilder = buildRequestForGet(GENERAL_SEARCH_URL);
        requestBuilder.appendKeyValue("keywords", query);
        requestBuilder.appendKeyValue("offset", String.valueOf(offset));
        requestBuilder.appendKeyValue("count", String.valueOf(pageSize));
        requestBuilder.appendKeyValue("targets", "groups");
        requestBuilder.appendKeyValue("fields", "all");
        return requestBuilder;
    }

    public static RequestBuilder getFriendListRequestBuilder(String steamId, String relationship) {
        JsonRequestBuilder requestBuilder = buildRequestForGet(GET_USER_FRIEND_LIST_URL);
        requestBuilder.appendSteamId(steamId);
        requestBuilder.appendKeyValue("relationship", relationship);
        return requestBuilder;
    }

    public static RequestBuilder getGroupListRequestBuilder(String steamId) {
        JsonRequestBuilder requestBuilder = buildRequestForGet(GET_USER_GROUP_LIST_URL);
        requestBuilder.appendSteamId(steamId);
        return requestBuilder;
    }

    public static RequestBuilder getUserSummaryRequestBuilder(String steamId) {
        JsonRequestBuilder requestBuilder = buildRequestForGet(GET_USER_SUMMARIES_URL);
        requestBuilder.appendKeyValue("steamids", steamId);
        return requestBuilder;
    }

    public static List<RequestBuilder> getGroupSummariesRequestBuilder(Collection<String> steamIdCollection) {
        return getDetailRequestBuilders(steamIdCollection, GET_GROUP_SUMMARIES_URL);
    }

    public static List<RequestBuilder> getUserSummariesRequestBuilder(Collection<String> steamIdCollection) {
        return getDetailRequestBuilders(steamIdCollection, GET_USER_SUMMARIES_URL);
    }

    public static RequestBuilder getActiveMessageSessions() {
        return buildRequestForGet(GET_ACTIVE_MESSAGE_SESSIONS_SINCE_URL);
    }

    public static RequestBuilder getRecentMessages(String loggedInUserSteamId, String chatPartnerSteamId) {
        JsonRequestBuilder requestBuilder = buildRequestForGet(GET_RECENT_MESSAGES_URL);
        requestBuilder.appendKeyValue("steamid1", loggedInUserSteamId);
        requestBuilder.appendKeyValue("steamid2", chatPartnerSteamId);
        requestBuilder.appendKeyValue("rtime32_start_time", "0");
        return requestBuilder;
    }

    private static List<RequestBuilder> getDetailRequestBuilders(Collection<String> steamIdCollection, String url) {
        List<String> steamIds = new ArrayList(steamIdCollection);
        List<RequestBuilder> requests = new ArrayList();
        while (steamIds.size() > 50) {
            List<String> subList = steamIds.subList(steamIds.size() - 50, steamIds.size());
            requests.add(getSingleDetailRequest(subList, url));
            subList.clear();
        }
        if (steamIds.size() > 0) {
            requests.add(getSingleDetailRequest(steamIds, url));
        }
        return requests;
    }

    private static RequestBuilder getSingleDetailRequest(Collection<String> steamIds, String url) {
        JsonRequestBuilder requestBuilder = buildRequestForGet(url);
        requestBuilder.appendArray("steamids", (String[]) steamIds.toArray(new String[steamIds.size()]));
        return requestBuilder;
    }

    public static RequestBuilder getUMQLogonRequestBuilder() {
        return buildRequestForPost(UMQ_LOGON_URL);
    }

    public static RequestBuilder getUMQLogoffRequestBuilder(String umqId) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(UMQ_LOGOFF_URL);
        requestBuilder.appendKeyValue("umqid", umqId);
        return requestBuilder;
    }

    public static RequestBuilder getSendUMQMessageRequestBuilder(String message, String chatPartnerSteamId, String umqId) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(UMQ_MESSAGE_REQ_URL);
        requestBuilder.appendKeyValue("umqid", umqId);
        requestBuilder.appendKeyValue("type", "saytext");
        requestBuilder.appendKeyValue("steamid_dst", chatPartnerSteamId);
        requestBuilder.appendKeyValue("text", message);
        return requestBuilder;
    }

    public static RequestBuilder getSendUMQTypingNotificationRequestBuilder(String chatPartnerSteamId, String umqId) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(UMQ_MESSAGE_REQ_URL);
        requestBuilder.appendKeyValue("umqid", umqId);
        requestBuilder.appendKeyValue("type", "typing");
        requestBuilder.appendKeyValue("steamid_dst", chatPartnerSteamId);
        requestBuilder.appendKeyValue("text", "");
        return requestBuilder;
    }

    public static RequestBuilder getSendServerPushInfoRequestBuilder(String regId, boolean enablePush, String umqId) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(UMQ_DEVICE_INFO_URL);
        requestBuilder.appendKeyValue("deviceid", "GOOG::GCM:" + regId);
        requestBuilder.appendKeyValue("lang", SteamCommunityApplication.GetInstance().getString(R.string.DO_NOT_LOCALIZE_COOKIE_Steam_Language));
        requestBuilder.appendKeyValue("version", Config.APP_VERSION);
        if (umqId != null) {
            requestBuilder.appendKeyValue("umqid", umqId);
        }
        requestBuilder.appendKeyValue("im_enable", enablePush ? "1" : "0");
        requestBuilder.appendKeyValue("tf_deviceid", SteamguardState.getUniqueIdForPhone());
        requestBuilder.appendKeyValue("device_model", Build.MODEL);
        requestBuilder.appendKeyValue("os_version", VERSION.RELEASE);
        return requestBuilder;
    }

    public static RequestBuilder getSwitchToPushRequestBuilder(String umqId) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(SWITCH_TO_PUSH_URL);
        requestBuilder.appendKeyValue("umqid", umqId);
        return requestBuilder;
    }

    public static RequestBuilder getUMQPollStatusRequestBuilder(String steamId, String umqId, long messageNumber) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(UMQ_POLL_STATUS_URL);
        requestBuilder.appendSteamId(steamId);
        requestBuilder.appendKeyValue("umqid", umqId);
        requestBuilder.appendKeyValue("message", String.valueOf(messageNumber));
        requestBuilder.appendKeyValue("sectimeout", "25");
        requestBuilder.setRetryPolicy(new DefaultRetryPolicy(30000, 1, 1.0f));
        return requestBuilder;
    }

    public static RequestBuilder getUMQPollForMessageRequestBuilder(String steamId, String umqId, long messageNumber) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(UMQ_POLL_FOR_MESSAGES_URL);
        requestBuilder.appendSteamId(steamId);
        requestBuilder.appendKeyValue("umqid", umqId);
        requestBuilder.appendKeyValue("message", String.valueOf(messageNumber));
        requestBuilder.appendKeyValue("sectimeout", "1");
        requestBuilder.setRetryPolicy(new DefaultRetryPolicy(30000, 1, 1.0f));
        return requestBuilder;
    }

    public static RequestBuilder getMarkMessagesReadRequestBuilder(String chatPartnerSteamId) {
        StringRequestBuilder requestBuilder = new StringRequestBuilder(MARK_OFFLINE_MESSAGES_READ_URL, true);
        requestBuilder.appendKeyValue("steamid_friend", chatPartnerSteamId);
        return requestBuilder;
    }

    public static RequestBuilder getTwoFactorFinalizeAddAuthenticatorRequestBuilder(String steamId, String activationCode, String authenticatorCode, long authenticatorTime) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(String.format(TWO_FACTOR_BASE_URL, new Object[]{"FinalizeAddAuthenticator"}));
        requestBuilder.appendSteamId(steamId);
        if (activationCode != null) {
            requestBuilder.appendKeyValue("activation_code", activationCode);
        }
        if (authenticatorCode != null) {
            requestBuilder.appendKeyValue("authenticator_code", authenticatorCode);
        }
        requestBuilder.appendKeyValue("authenticator_time", Long.toString(authenticatorTime));
        return requestBuilder;
    }

    public static RequestBuilder getAddAuthenticatorRequestBuilder(String steamId, String authenticatorType, String uniqueIdForPhone) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(String.format(TWO_FACTOR_BASE_URL, new Object[]{"AddAuthenticator"}));
        requestBuilder.appendSteamId(steamId);
        requestBuilder.appendKeyValue("authenticator_type", authenticatorType);
        requestBuilder.appendKeyValue("device_identifier", uniqueIdForPhone);
        return requestBuilder;
    }

    public static RequestBuilder getRemoveAuthenticatorRequestBuilder(String steamId, String steamguardScheme, String revocationCode) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(String.format(TWO_FACTOR_BASE_URL, new Object[]{"RemoveAuthenticator"}));
        requestBuilder.appendSteamId(steamId);
        requestBuilder.appendKeyValue("steamguard_scheme", steamguardScheme);
        if (revocationCode != null) {
            requestBuilder.appendKeyValue("revocation_code", revocationCode);
        }
        return requestBuilder;
    }

    public static RequestBuilder getTwoFactorSendEmailRequestBuilder(String steamId, int emailType) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(String.format(TWO_FACTOR_BASE_URL, new Object[]{"SendEmail"}));
        requestBuilder.appendSteamId(steamId);
        requestBuilder.appendKeyValue("email_type", Integer.toString(emailType));
        return requestBuilder;
    }

    public static RequestBuilder getTwoFactorQueryTimeRequestBuilder() {
        return buildRequestForPost(String.format(TWO_FACTOR_BASE_URL, new Object[]{"QueryTime"}));
    }

    public static RequestBuilder getTwoFactorQueryStatusRequestBuilder(String steamId) {
        JsonRequestBuilder requestBuilder = buildRequestForPost(String.format(TWO_FACTOR_BASE_URL, new Object[]{"QueryStatus"}));
        requestBuilder.appendSteamId(steamId);
        return requestBuilder;
    }

    public static JsonRequestBuilder getWGToken() {
        return buildRequestForPost(String.format(MOBILEAUTH_BASE_URL, new Object[]{"GetWGToken"}));
    }

    public static JsonRequestBuilder getUserNotificationCounts() {
        return buildRequestForGet(String.format(MOBILENOTIFICATION_BASE_URL, new Object[]{"GetUserNotificationCounts"}));
    }

    public static RequestBuilder getGenericJsonGetRequestBuilder(String url) {
        return buildRequestForGet(url);
    }

    private static JsonRequestBuilder buildRequestForGet(String baseUrl) {
        return new JsonRequestBuilder(baseUrl, false);
    }

    private static JsonRequestBuilder buildRequestForPost(String baseUrl) {
        return new JsonRequestBuilder(baseUrl, true);
    }
}
