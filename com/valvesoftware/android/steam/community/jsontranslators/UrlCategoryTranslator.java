package com.valvesoftware.android.steam.community.jsontranslators;

import com.valvesoftware.android.steam.community.model.UrlCategory;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class UrlCategoryTranslator {
    public static List<UrlCategory> translate(JSONObject jsonObject) {
        List<UrlCategory> urlCategories = new ArrayList();
        if (jsonObject != null) {
            JSONArray arrMsgs = jsonObject.optJSONArray("categories");
            if (arrMsgs != null) {
                for (int i = 0; i < arrMsgs.length(); i++) {
                    JSONObject jcat = arrMsgs.optJSONObject(i);
                    if (jcat != null) {
                        UrlCategory cat = new UrlCategory();
                        cat.title = jcat.optString("label", "");
                        cat.url = jcat.optString("url", "");
                        urlCategories.add(cat);
                    }
                }
            }
        }
        return urlCategories;
    }
}
