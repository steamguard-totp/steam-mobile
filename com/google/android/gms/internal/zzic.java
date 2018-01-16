package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;

@zzmb
public class zzic implements zzhx {
    final HashMap<String, zzqc<JSONObject>> zzHM = new HashMap();

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        zzh((String) map.get("request_id"), (String) map.get("fetched_ad"));
    }

    public Future<JSONObject> zzab(String str) {
        Future com_google_android_gms_internal_zzqc = new zzqc();
        this.zzHM.put(str, com_google_android_gms_internal_zzqc);
        return com_google_android_gms_internal_zzqc;
    }

    public void zzac(String str) {
        zzqc com_google_android_gms_internal_zzqc = (zzqc) this.zzHM.get(str);
        if (com_google_android_gms_internal_zzqc == null) {
            zzpy.e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        if (!com_google_android_gms_internal_zzqc.isDone()) {
            com_google_android_gms_internal_zzqc.cancel(true);
        }
        this.zzHM.remove(str);
    }

    public void zzh(String str, String str2) {
        zzpy.zzbc("Received ad from the cache.");
        zzqc com_google_android_gms_internal_zzqc = (zzqc) this.zzHM.get(str);
        if (com_google_android_gms_internal_zzqc == null) {
            zzpy.e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        try {
            com_google_android_gms_internal_zzqc.zzh(new JSONObject(str2));
        } catch (Throwable e) {
            zzpy.zzb("Failed constructing JSON object from value passed from javascript", e);
            com_google_android_gms_internal_zzqc.zzh(null);
        } finally {
            this.zzHM.remove(str);
        }
    }
}
