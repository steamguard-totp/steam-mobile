package com.valvesoftware.android.steam.community;

public class Config {
    public static String APP_VERSION = "2.3.1";
    public static int APP_VERSION_ID = 0;
    public static final SteamUniverse STEAM_UNIVERSE_WEBAPI = SteamUniverse.Public;
    public static final SteamUniverse STEAM_UNIVERSE_WEBPHP = SteamUniverse.Public;
    public static final String URL_COMMUNITY_BASE;
    public static final String URL_COMMUNITY_BASE_INSECURE;
    public static final String URL_HELP_BASE;
    public static final String URL_MOBILE_CRASH_UPLOAD = (STEAM_UNIVERSE_WEBPHP != SteamUniverse.Dev ? "http://m.valvesoftware.com/androidsubmit1" : "http://tonyp.valve.org/crashupload/androidsubmit1");
    public static final String URL_STORE_BASE;
    public static final String URL_STORE_BASE_INSECURE;
    public static final String URL_WEBAPI_BASE;
    public static final String URL_WEBAPI_BASE_INSECURE;
    public static final String[] WG_AUTH_DOMAINS = new String[]{URL_COMMUNITY_BASE, URL_STORE_BASE, URL_HELP_BASE};

    public enum SteamUniverse {
        Public,
        Beta,
        Dev
    }

    public static class WebAPI {
        public static final String OAUTH_CLIENT_ID;

        static {
            String str = Config.STEAM_UNIVERSE_WEBAPI == SteamUniverse.Public ? "DE45CD61" : Config.STEAM_UNIVERSE_WEBAPI == SteamUniverse.Beta ? "7DC60112" : "7DC60112";
            OAUTH_CLIENT_ID = str;
        }
    }

    static {
        String str = STEAM_UNIVERSE_WEBAPI == SteamUniverse.Public ? "https://api.steampowered.com:443" : STEAM_UNIVERSE_WEBAPI == SteamUniverse.Beta ? "https://api-beta.steampowered.com:443" : "https://tonyp.valve.org:8283";
        URL_WEBAPI_BASE = str;
        str = STEAM_UNIVERSE_WEBAPI == SteamUniverse.Public ? "http://api.steampowered.com:80" : STEAM_UNIVERSE_WEBAPI == SteamUniverse.Beta ? "http://api-beta.steampowered.com:80" : "http://tonyp.valve.org:8282";
        URL_WEBAPI_BASE_INSECURE = str;
        StringBuilder append = new StringBuilder().append("https://");
        str = STEAM_UNIVERSE_WEBPHP == SteamUniverse.Public ? "steamcommunity.com" : STEAM_UNIVERSE_WEBPHP == SteamUniverse.Beta ? "beta.steamcommunity.com" : "tonyp.valve.org/community";
        URL_COMMUNITY_BASE = append.append(str).toString();
        append = new StringBuilder().append("http://");
        str = STEAM_UNIVERSE_WEBPHP == SteamUniverse.Public ? "steamcommunity.com" : STEAM_UNIVERSE_WEBPHP == SteamUniverse.Beta ? "beta.steamcommunity.com" : "tonyp.valve.org/community";
        URL_COMMUNITY_BASE_INSECURE = append.append(str).toString();
        append = new StringBuilder().append("https://");
        str = STEAM_UNIVERSE_WEBPHP == SteamUniverse.Public ? "store.steampowered.com" : STEAM_UNIVERSE_WEBPHP == SteamUniverse.Beta ? "store-beta.steampowered.com" : "tonyp.valve.org/store";
        URL_STORE_BASE = append.append(str).toString();
        append = new StringBuilder().append("http://");
        str = STEAM_UNIVERSE_WEBPHP == SteamUniverse.Public ? "store.steampowered.com" : STEAM_UNIVERSE_WEBPHP == SteamUniverse.Beta ? "store-beta.steampowered.com" : "tonyp.valve.org/store";
        URL_STORE_BASE_INSECURE = append.append(str).toString();
        append = new StringBuilder().append("https://");
        str = STEAM_UNIVERSE_WEBPHP == SteamUniverse.Public ? "help.steampowered.com" : STEAM_UNIVERSE_WEBPHP == SteamUniverse.Beta ? "help.beta.steampowered.com" : "tonyp.valve.org/help";
        URL_HELP_BASE = append.append(str).toString();
    }
}
