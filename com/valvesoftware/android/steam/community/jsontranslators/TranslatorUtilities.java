package com.valvesoftware.android.steam.community.jsontranslators;

import com.valvesoftware.android.steam.community.Config;
import com.valvesoftware.android.steam.community.Config.SteamUniverse;

public class TranslatorUtilities {
    public static String steamIdFromAccountId(String accountId) {
        long universeId;
        long steamId = Long.valueOf(accountId).longValue();
        if (Config.STEAM_UNIVERSE_WEBAPI == SteamUniverse.Dev) {
            universeId = 288230376151711744L;
        } else if (Config.STEAM_UNIVERSE_WEBAPI == SteamUniverse.Beta) {
            universeId = 144115188075855872L;
        } else {
            universeId = 72057594037927936L;
        }
        return String.valueOf(((steamId + universeId) + 4294967296L) + 4503599627370496L);
    }
}
