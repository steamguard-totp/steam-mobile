package com.valvesoftware.android.steam.community;

import android.net.Uri;

public class SteamAppUri {
    public static final String CART = (Config.URL_STORE_BASE_INSECURE + "/cart/");
    public static final String CONFIRMATION_WEB = (Config.URL_COMMUNITY_BASE + "/mobileconf/conf");
    public static final String STEAMGUARD_CHANGE = (Config.URL_COMMUNITY_BASE + "/steamguard/change");
    public static final String STEAMGUARD_HELP = (Config.URL_COMMUNITY_BASE + "/steamguard/help");
    public static final String STEAMGUARD_PRECHANGE = (Config.URL_COMMUNITY_BASE + "/steamguard/prechange");
    public static final String STEAMGUARD_RCODE = (Config.URL_COMMUNITY_BASE + "/steamguard/twofactor_recoverycode?countdown=0");
    public static final String STEAM_NEWS = (Config.URL_STORE_BASE_INSECURE + "/news/");
    public static final String STEAM_NOTIFICATIONS_SETTINGS = (Config.URL_COMMUNITY_BASE_INSECURE + "/mobilesettings/GetManifest/v0001");
    public static final String URL_CURRENT_USER_PROFILE_BASE_CUSTOMURL = (Config.URL_COMMUNITY_BASE_INSECURE + "/id");
    public static final String URL_CURRENT_USER_PROFILE_BASE_GENERIC = (Config.URL_COMMUNITY_BASE + "/my");
    public static final String URL_CURRENT_USER_PROFILE_BASE_STEAMID = (Config.URL_COMMUNITY_BASE_INSECURE + "/profiles");

    public static Uri createChatUri(String steamId) {
        return Uri.parse("steammobile://chat?steamid=" + steamId);
    }

    public static Uri createCurrentUserProfileUri(String path) {
        if (LoggedInUserAccountInfo.isLoggedIn()) {
            return createSteamAppWebUri(URL_CURRENT_USER_PROFILE_BASE_STEAMID + "/" + LoggedInUserAccountInfo.getLoginSteamID() + path);
        }
        return createSteamAppWebUri(URL_CURRENT_USER_PROFILE_BASE_GENERIC + path);
    }

    public static Uri createFriendsSearchUri(String query) {
        return createSearchUri(query, "friends");
    }

    public static Uri createGroupsSearchUri(String query) {
        return createSearchUri(query, "groups");
    }

    public static Uri library() {
        return createCurrentUserProfileUri("/games/?tab=all");
    }

    public static Uri settings() {
        return createUri("steammobile://", "appsettings");
    }

    private static Uri createSearchUri(String query, String resourceString) {
        return Uri.parse("steammobile://" + resourceString + "?" + "search" + "=" + query);
    }

    public static Uri groupWebPage(String groupProfileUrl) {
        return createSteamAppWebUri(Config.URL_COMMUNITY_BASE_INSECURE + groupProfileUrl);
    }

    public static Uri wishlist() {
        return createCurrentUserProfileUri("/wishlist/");
    }

    public static Uri shoppingCart() {
        return createSteamAppWebUri(CART);
    }

    public static Uri steamNews() {
        return createSteamAppWebUri(STEAM_NEWS);
    }

    public static Uri friendActivity() {
        return createCurrentUserProfileUri("/home/");
    }

    public static Uri createVisitProfileUri(String steamId) {
        return createSteamAppWebUri(Config.URL_COMMUNITY_BASE_INSECURE + "/profiles/" + steamId);
    }

    public static Uri createSteamAppWebUri(String url) {
        return Uri.parse("steammobile://openurl?url=" + url);
    }

    public static Uri searchSteam() {
        return createSteamAppWebUri(Config.URL_STORE_BASE_INSECURE + "/search/");
    }

    public static Uri catalog() {
        return createSteamAppWebUri(Config.URL_STORE_BASE_INSECURE);
    }

    public static Uri accountDetails() {
        return createSteamAppWebUri(Config.URL_STORE_BASE + "/account/");
    }

    public static Uri steamGuard() {
        return createUri("steammobile://", "steamguard");
    }

    public static Uri friendsList() {
        return createUri("steammobile://", "friends");
    }

    public static Uri groupsList() {
        return createUri("steammobile://", "groups");
    }

    public static Uri confirmationResource() {
        return createUri("steammobile://", "confirmation");
    }

    private static Uri createUri(String scheme, String resource) {
        return Uri.parse(scheme + resource);
    }

    public static Uri login() {
        return createUri("steammobile://", "login");
    }

    public static Uri deleteNotification() {
        return createUri("steammobile://", "deletenotification");
    }

    public static Uri notificationComments() {
        return createCurrentUserProfileUri("/commentnotifications");
    }

    public static Uri notificationItems() {
        return createCurrentUserProfileUri("/inventory");
    }

    public static Uri notificationInvites() {
        return createCurrentUserProfileUri("/home/invites");
    }

    public static Uri notificationGifts() {
        return createCurrentUserProfileUri("/inventory#pending_gifts");
    }

    public static Uri notificationTradeOffers() {
        return createCurrentUserProfileUri("/tradeoffers");
    }

    public static Uri notificationAsyncGame() {
        return createCurrentUserProfileUri("/gamenotifications");
    }

    public static Uri notificationModeratorMessage() {
        return createCurrentUserProfileUri("/moderatormessages");
    }

    public static String steamHelpUriPrefix() {
        return Config.URL_COMMUNITY_BASE + "/mobilelogin/help";
    }

    public static String steamSubscriberAgreementUriPrefix() {
        return Config.URL_STORE_BASE + "/mobilecheckout/ssapopup";
    }

    public static String steamPrivacyPolicyUriPrefix() {
        return Config.URL_STORE_BASE + "/mobilelogin/privacy_agreement";
    }

    public static String getURLISOCodeForLanguage(String language) {
        if ("english".equals(language)) {
            return "en";
        }
        if ("german".equals(language)) {
            return "de";
        }
        if ("french".equals(language)) {
            return "fr";
        }
        if ("italian".equals(language)) {
            return "it";
        }
        if ("korean".equals(language)) {
            return "ko";
        }
        if ("spanish".equals(language)) {
            return "es";
        }
        if ("schinese".equals(language)) {
            return "zh";
        }
        if ("schinese".equals(language)) {
            return "zh-cn";
        }
        if ("tchinese".equals(language)) {
            return "zh-tw";
        }
        if ("russian".equals(language)) {
            return "ru";
        }
        if ("thai".equals(language)) {
            return "th";
        }
        if ("japanese".equals(language)) {
            return "ja";
        }
        if ("brazilian".equals(language)) {
            return "pt-br";
        }
        if ("portuguese".equals(language)) {
            return "pt";
        }
        if ("polish".equals(language)) {
            return "pl";
        }
        if ("danish".equals(language)) {
            return "da";
        }
        if ("dutch".equals(language)) {
            return "nl";
        }
        if ("finnish".equals(language)) {
            return "fi";
        }
        if ("norwegian".equals(language)) {
            return "no";
        }
        if ("swedish".equals(language)) {
            return "sv";
        }
        if ("hungarian".equals(language)) {
            return "hu";
        }
        if ("czech".equals(language)) {
            return "cs";
        }
        if ("romanian".equals(language)) {
            return "ro";
        }
        if ("turkish".equals(language)) {
            return "tr";
        }
        if ("arabic".equals(language)) {
            return "ar";
        }
        if ("bulgarian".equals(language)) {
            return "bg";
        }
        if ("greek".equals(language)) {
            return "el";
        }
        if ("ukrainian".equals(language)) {
            return "uk";
        }
        return null;
    }

    public static String appendLanguageToUrl(String url) {
        String urlISOLanguage = getURLISOCodeForLanguage(LoggedInUserAccountInfo.getLanguage());
        if (urlISOLanguage != null) {
            return url + '/' + urlISOLanguage;
        }
        return url;
    }
}
