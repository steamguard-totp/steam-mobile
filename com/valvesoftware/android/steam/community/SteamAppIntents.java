package com.valvesoftware.android.steam.community;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.valvesoftware.android.steam.community.activity.MainActivity;

public class SteamAppIntents {
    public static String chatPartnerAvatarUrlKey = "chatPartnerAvatarUrl";
    public static String chatPartnerPersonaNameKey = "chatPartnerPersonaNameKey";
    public static String notificationId = "notificationId";

    public static Intent visitProfileIntent(Context context, String steamId) {
        return mainActivityIntent(context, SteamAppUri.createVisitProfileUri(steamId));
    }

    public static Intent searchFriendIntent(Context context, String searchString) {
        return mainActivityIntent(context, SteamAppUri.createFriendsSearchUri(searchString));
    }

    public static Intent chatIntent(Context context, String steamId) {
        return chatIntent(context, steamId, null, null);
    }

    public static Intent chatIntent(Context context, String steamId, String personaName, String partnerAvatarUrl) {
        Intent intent = mainActivityIntent(context, SteamAppUri.createChatUri(steamId));
        if (partnerAvatarUrl != null) {
            intent.putExtra(chatPartnerAvatarUrlKey, partnerAvatarUrl);
        }
        if (personaName != null) {
            intent.putExtra(chatPartnerPersonaNameKey, personaName);
        }
        return intent;
    }

    public static Intent viewSteamGuard(Context context) {
        return mainActivityIntent(context, SteamAppUri.steamGuard());
    }

    public static Intent viewConfirmations(Context context) {
        return mainActivityIntent(context, SteamAppUri.confirmationResource());
    }

    public static Intent viewFriendsList(Context context) {
        return mainActivityIntent(context, SteamAppUri.friendsList());
    }

    public static Intent viewGroupsList(Context context) {
        return mainActivityIntent(context, SteamAppUri.groupsList());
    }

    public static Intent viewFriendActivity(Context context) {
        return mainActivityIntent(context, SteamAppUri.friendActivity());
    }

    public static Intent viewCatalog(Context context) {
        return mainActivityIntent(context, SteamAppUri.catalog());
    }

    public static Intent viewWishList(Context context) {
        return mainActivityIntent(context, SteamAppUri.wishlist());
    }

    public static Intent viewShoppingCart(Context context) {
        return mainActivityIntent(context, SteamAppUri.shoppingCart());
    }

    public static Intent searchSteam(Context context) {
        return mainActivityIntent(context, SteamAppUri.searchSteam());
    }

    public static Intent viewSteamNews(Context context) {
        return mainActivityIntent(context, SteamAppUri.steamNews());
    }

    public static Intent viewSettings(Context context) {
        return mainActivityIntent(context, SteamAppUri.settings());
    }

    public static Intent viewAccountDetails(Context context) {
        return mainActivityIntent(context, SteamAppUri.accountDetails());
    }

    public static Intent viewWebPage(Context context, String url) {
        return mainActivityIntent(context, SteamAppUri.createSteamAppWebUri(url));
    }

    public static Intent viewLibrary(Context context) {
        return mainActivityIntent(context, SteamAppUri.library());
    }

    public static Intent mainActivityIntent(Context context, Uri uri) {
        return new Intent(context, MainActivity.class).setData(uri);
    }

    public static Intent communityURLIntent(Context context, String path) {
        return mainActivityIntent(context, SteamAppUri.createSteamAppWebUri(Config.URL_COMMUNITY_BASE_INSECURE + path));
    }

    public static Intent profileURLIntent(Context context, String path) {
        return mainActivityIntent(context, SteamAppUri.createCurrentUserProfileUri(path));
    }

    public static Intent helpURLIntent(Context context, String path) {
        return mainActivityIntent(context, SteamAppUri.createSteamAppWebUri(SteamAppUri.appendLanguageToUrl(Config.URL_HELP_BASE) + path));
    }

    public static Intent loginIntent(Context context) {
        return mainActivityIntent(context, SteamAppUri.login());
    }

    public static Intent notificationCommentsIntent(Context context) {
        return mainActivityIntent(context, SteamAppUri.notificationComments());
    }

    public static Intent notificationItemsIntent(Context context) {
        return mainActivityIntent(context, SteamAppUri.notificationItems());
    }

    public static Intent notificationInvitesIntent(Context context) {
        return mainActivityIntent(context, SteamAppUri.notificationInvites());
    }

    public static Intent notificationGiftsIntent(Context context) {
        return mainActivityIntent(context, SteamAppUri.notificationGifts());
    }

    public static Intent notificationAsyncGameIntent(Context context) {
        return mainActivityIntent(context, SteamAppUri.notificationAsyncGame());
    }

    public static Intent notificationModeratorMessageIntent(Context context) {
        return mainActivityIntent(context, SteamAppUri.notificationModeratorMessage());
    }

    public static Intent notificationTradeOffersIntent(Context context) {
        return mainActivityIntent(context, SteamAppUri.notificationTradeOffers());
    }

    public static Intent notificationHelpRequestReplyIntent(Context context) {
        return helpURLIntent(context, "/wizard/HelpRequests");
    }
}
