package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public class zzjo {
    public List<String> zza(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        List arrayList = new ArrayList(optJSONArray.length());
        for (int i = 0; i < optJSONArray.length(); i++) {
            arrayList.add(optJSONArray.getString(i));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void zza(Context context, String str, zzov com_google_android_gms_internal_zzov, String str2, boolean z, List<String> list) {
        if (list != null && !list.isEmpty()) {
            String str3 = z ? "1" : "0";
            for (String replaceAll : list) {
                String replaceAll2 = replaceAll2.replaceAll("@gw_adlocid@", str2).replaceAll("@gw_adnetrefresh@", str3).replaceAll("@gw_qdata@", com_google_android_gms_internal_zzov.zzVr.zzKd).replaceAll("@gw_sdkver@", str).replaceAll("@gw_sessid@", zzv.zzcN().getSessionId()).replaceAll("@gw_seqnum@", com_google_android_gms_internal_zzov.zzRg);
                if (!TextUtils.isEmpty(com_google_android_gms_internal_zzov.zzVs)) {
                    replaceAll2 = replaceAll2.replaceAll("@gw_adnetstatus@", com_google_android_gms_internal_zzov.zzVs);
                }
                if (com_google_android_gms_internal_zzov.zzKA != null) {
                    replaceAll2 = replaceAll2.replaceAll("@gw_adnetid@", com_google_android_gms_internal_zzov.zzKA.zzJH).replaceAll("@gw_allocid@", com_google_android_gms_internal_zzov.zzKA.zzJJ);
                }
                new zzps(context, str, replaceAll2).zziw();
            }
        }
    }
}
