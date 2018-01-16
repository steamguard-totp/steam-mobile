package com.google.android.gms.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public class zzox {
    private final long zzVN;
    private final List<String> zzVO = new ArrayList();
    private final Map<String, zzb> zzVP = new HashMap();
    private String zzVQ;
    private String zzVR;
    private boolean zzVS = false;

    class zza {
        private final List<String> zzVT;
        private final Bundle zzVU;

        public zza(zzox com_google_android_gms_internal_zzox, List<String> list, Bundle bundle) {
            this.zzVT = list;
            this.zzVU = bundle;
        }
    }

    class zzb {
        final List<zza> zzVV = new ArrayList();

        zzb(zzox com_google_android_gms_internal_zzox) {
        }

        public void zza(zza com_google_android_gms_internal_zzox_zza) {
            this.zzVV.add(com_google_android_gms_internal_zzox_zza);
        }
    }

    public zzox(String str, long j) {
        this.zzVR = str;
        this.zzVN = j;
        zzaR(str);
    }

    private void zzaR(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.optInt("status", -1) != 1) {
                    this.zzVS = false;
                    zzpy.zzbe("App settings could not be fetched successfully.");
                    return;
                }
                this.zzVS = true;
                this.zzVQ = jSONObject.optString("app_id");
                JSONArray optJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        zzj(optJSONArray.getJSONObject(i));
                    }
                }
            } catch (Throwable e) {
                zzpy.zzc("Exception occurred while processing app setting json", e);
                zzv.zzcN().zza(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }

    private void zzj(JSONObject jSONObject) throws JSONException {
        String optString = jSONObject.optString("format");
        CharSequence optString2 = jSONObject.optString("ad_unit_id");
        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
            if ("interstitial".equalsIgnoreCase(optString)) {
                this.zzVO.add(optString2);
            } else if ("rewarded".equalsIgnoreCase(optString)) {
                JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                if (optJSONObject != null) {
                    JSONArray optJSONArray = optJSONObject.optJSONArray("ad_networks");
                    if (optJSONArray != null) {
                        int i = 0;
                        while (i < optJSONArray.length()) {
                            JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                            JSONArray optJSONArray2 = jSONObject2.optJSONArray("adapters");
                            if (optJSONArray2 != null) {
                                List arrayList = new ArrayList();
                                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                                    arrayList.add(optJSONArray2.getString(i2));
                                }
                                jSONObject2 = jSONObject2.optJSONObject("data");
                                if (jSONObject2 != null) {
                                    Bundle bundle = new Bundle();
                                    Iterator keys = jSONObject2.keys();
                                    while (keys.hasNext()) {
                                        optString = (String) keys.next();
                                        bundle.putString(optString, jSONObject2.getString(optString));
                                    }
                                    zza com_google_android_gms_internal_zzox_zza = new zza(this, arrayList, bundle);
                                    zzb com_google_android_gms_internal_zzox_zzb = this.zzVP.containsKey(optString2) ? (zzb) this.zzVP.get(optString2) : new zzb(this);
                                    com_google_android_gms_internal_zzox_zzb.zza(com_google_android_gms_internal_zzox_zza);
                                    this.zzVP.put(optString2, com_google_android_gms_internal_zzox_zzb);
                                    i++;
                                } else {
                                    return;
                                }
                            }
                            return;
                        }
                    }
                }
            }
        }
    }

    public long zzjF() {
        return this.zzVN;
    }

    public boolean zzjG() {
        return this.zzVS;
    }

    public String zzjH() {
        return this.zzVR;
    }

    public String zzjI() {
        return this.zzVQ;
    }
}
