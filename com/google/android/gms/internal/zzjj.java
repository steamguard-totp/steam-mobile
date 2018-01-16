package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public final class zzjj {
    public final List<zzji> zzJW;
    public final long zzJX;
    public final List<String> zzJY;
    public final List<String> zzJZ;
    public final List<String> zzKa;
    public final List<String> zzKb;
    public final boolean zzKc;
    public final String zzKd;
    public final long zzKe;
    public final String zzKf;
    public final int zzKg;
    public final int zzKh;
    public final long zzKi;
    public final boolean zzKj;
    public int zzKk;
    public int zzKl;

    public zzjj(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        if (zzpy.zzai(2)) {
            String str2 = "Mediation Response JSON: ";
            String valueOf = String.valueOf(jSONObject.toString(2));
            zzpe.v(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        List arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            zzji com_google_android_gms_internal_zzji = new zzji(jSONArray.getJSONObject(i2));
            arrayList.add(com_google_android_gms_internal_zzji);
            if (i < 0 && zza(com_google_android_gms_internal_zzji)) {
                i = i2;
            }
        }
        this.zzKk = i;
        this.zzKl = jSONArray.length();
        this.zzJW = Collections.unmodifiableList(arrayList);
        this.zzKd = jSONObject.getString("qdata");
        this.zzKh = jSONObject.optInt("fs_model_type", -1);
        this.zzKi = jSONObject.optLong("timeout_ms", -1);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            this.zzJX = optJSONObject.optLong("ad_network_timeout_millis", -1);
            this.zzJY = zzv.zzdc().zza(optJSONObject, "click_urls");
            this.zzJZ = zzv.zzdc().zza(optJSONObject, "imp_urls");
            this.zzKa = zzv.zzdc().zza(optJSONObject, "nofill_urls");
            this.zzKb = zzv.zzdc().zza(optJSONObject, "remote_ping_urls");
            this.zzKc = optJSONObject.optBoolean("render_in_browser", false);
            long optLong = optJSONObject.optLong("refresh", -1);
            this.zzKe = optLong > 0 ? optLong * 1000 : -1;
            zzok zza = zzok.zza(optJSONObject.optJSONArray("rewards"));
            if (zza == null) {
                this.zzKf = null;
                this.zzKg = 0;
            } else {
                this.zzKf = zza.type;
                this.zzKg = zza.zzVj;
            }
            this.zzKj = optJSONObject.optBoolean("use_displayed_impression", false);
            return;
        }
        this.zzJX = -1;
        this.zzJY = null;
        this.zzJZ = null;
        this.zzKa = null;
        this.zzKb = null;
        this.zzKe = -1;
        this.zzKf = null;
        this.zzKg = 0;
        this.zzKj = false;
        this.zzKc = false;
    }

    public zzjj(List<zzji> list, long j, List<String> list2, List<String> list3, List<String> list4, List<String> list5, boolean z, String str, long j2, int i, int i2, String str2, int i3, int i4, long j3, boolean z2) {
        this.zzJW = list;
        this.zzJX = j;
        this.zzJY = list2;
        this.zzJZ = list3;
        this.zzKa = list4;
        this.zzKb = list5;
        this.zzKc = z;
        this.zzKd = str;
        this.zzKe = j2;
        this.zzKk = i;
        this.zzKl = i2;
        this.zzKf = str2;
        this.zzKg = i3;
        this.zzKh = i4;
        this.zzKi = j3;
        this.zzKj = z2;
    }

    private boolean zza(zzji com_google_android_gms_internal_zzji) {
        for (String equals : com_google_android_gms_internal_zzji.zzJI) {
            if (equals.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                return true;
            }
        }
        return false;
    }
}
