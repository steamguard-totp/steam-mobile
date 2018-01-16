package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public final class zzji {
    public final String zzJG;
    public final String zzJH;
    public final List<String> zzJI;
    public final String zzJJ;
    public final String zzJK;
    public final List<String> zzJL;
    public final List<String> zzJM;
    public final List<String> zzJN;
    public final String zzJO;
    public final List<String> zzJP;
    public final List<String> zzJQ;
    public final String zzJR;
    public final String zzJS;
    public final String zzJT;
    public final List<String> zzJU;
    public final String zzJV;

    public zzji(String str, String str2, List<String> list, String str3, String str4, List<String> list2, List<String> list3, String str5, String str6, List<String> list4, List<String> list5, String str7, String str8, String str9, List<String> list6, String str10, List<String> list7) {
        this.zzJG = str;
        this.zzJH = str2;
        this.zzJI = list;
        this.zzJJ = str3;
        this.zzJK = str4;
        this.zzJL = list2;
        this.zzJM = list3;
        this.zzJO = str5;
        this.zzJP = list4;
        this.zzJQ = list5;
        this.zzJR = str7;
        this.zzJS = str8;
        this.zzJT = str9;
        this.zzJU = list6;
        this.zzJV = str10;
        this.zzJN = list7;
    }

    public zzji(JSONObject jSONObject) throws JSONException {
        String str = null;
        this.zzJH = jSONObject.getString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        List arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.zzJI = Collections.unmodifiableList(arrayList);
        this.zzJJ = jSONObject.optString("allocation_id", null);
        this.zzJL = zzv.zzdc().zza(jSONObject, "clickurl");
        this.zzJM = zzv.zzdc().zza(jSONObject, "imp_urls");
        this.zzJN = zzv.zzdc().zza(jSONObject, "fill_urls");
        this.zzJP = zzv.zzdc().zza(jSONObject, "video_start_urls");
        this.zzJQ = zzv.zzdc().zza(jSONObject, "video_complete_urls");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        this.zzJG = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.zzJO = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.zzJK = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.zzJR = jSONObject.optString("html_template", null);
        this.zzJS = jSONObject.optString("ad_base_url", null);
        optJSONObject = jSONObject.optJSONObject("assets");
        this.zzJT = optJSONObject != null ? optJSONObject.toString() : null;
        this.zzJU = zzv.zzdc().zza(jSONObject, "template_ids");
        optJSONObject = jSONObject.optJSONObject("ad_loader_options");
        if (optJSONObject != null) {
            str = optJSONObject.toString();
        }
        this.zzJV = str;
    }
}
