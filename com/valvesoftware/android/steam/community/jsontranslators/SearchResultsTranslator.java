package com.valvesoftware.android.steam.community.jsontranslators;

import com.valvesoftware.android.steam.community.model.SearchResults;
import org.json.JSONArray;
import org.json.JSONObject;

public class SearchResultsTranslator {
    public static SearchResults translate(JSONObject rawResults) {
        SearchResults results = new SearchResults();
        results.total = rawResults.optInt("total");
        JSONArray idsArray = rawResults.optJSONArray("results");
        if (idsArray != null) {
            for (int i = 0; i < idsArray.length(); i++) {
                JSONObject singleResult = idsArray.optJSONObject(i);
                if (singleResult != null) {
                    String steamId = singleResult.optString("steamid", null);
                    if (steamId != null) {
                        results.addSteamId(steamId);
                    }
                }
            }
        }
        return results;
    }
}
