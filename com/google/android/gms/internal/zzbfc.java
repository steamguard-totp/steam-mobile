package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzbft.zza;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbfc {
    public static zzazs zzX(Object obj) throws JSONException {
        String string;
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONArray jSONArray3;
        int i = 1;
        int i2 = 0;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            string = jSONObject.getString("name");
            jSONArray = jSONObject.getJSONArray("params");
            jSONArray2 = jSONObject.getJSONArray("instructions");
        } else if (obj instanceof JSONArray) {
            JSONArray jSONArray4 = (JSONArray) obj;
            zzac.zzas(jSONArray4.length() >= 3);
            String string2 = jSONArray4.getString(1);
            jSONArray2 = jSONArray4.getJSONArray(2);
            jSONArray3 = new JSONArray();
            while (i < jSONArray2.length()) {
                zzac.zzas(jSONArray2.get(i) instanceof String);
                jSONArray3.put(jSONArray2.get(i));
                i++;
            }
            jSONArray = new JSONArray();
            for (int i3 = 3; i3 < jSONArray4.length(); i3++) {
                jSONArray.put(jSONArray4.get(i3));
            }
            jSONArray2 = jSONArray;
            string = string2;
            jSONArray = jSONArray3;
        } else {
            throw new IllegalArgumentException("invalid JSON in runtime section");
        }
        List arrayList = new ArrayList();
        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
            arrayList.add(jSONArray.getString(i4));
        }
        List arrayList2 = new ArrayList();
        while (i2 < jSONArray2.length()) {
            jSONArray3 = jSONArray2.getJSONArray(i2);
            if (jSONArray3.length() != 0) {
                arrayList2.add(zzd(jSONArray3));
            }
            i2++;
        }
        return new zzazs(null, string, arrayList, arrayList2);
    }

    static zzbft zza(JSONArray jSONArray, List<zzbfs> list, List<zzbfs> list2) throws zzbfb, JSONException {
        zza com_google_android_gms_internal_zzbft_zza = new zza();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONArray jSONArray2 = jSONArray.getJSONArray(i);
            int i2;
            if (jSONArray2.getString(0).equals("if")) {
                for (i2 = 1; i2 < jSONArray2.length(); i2++) {
                    com_google_android_gms_internal_zzbft_zza.zzd((zzbfs) list2.get(jSONArray2.getInt(i2)));
                }
            } else if (jSONArray2.getString(0).equals("unless")) {
                for (i2 = 1; i2 < jSONArray2.length(); i2++) {
                    com_google_android_gms_internal_zzbft_zza.zze((zzbfs) list2.get(jSONArray2.getInt(i2)));
                }
            } else if (jSONArray2.getString(0).equals("add")) {
                for (i2 = 1; i2 < jSONArray2.length(); i2++) {
                    com_google_android_gms_internal_zzbft_zza.zzf((zzbfs) list.get(jSONArray2.getInt(i2)));
                }
            } else if (jSONArray2.getString(0).equals("block")) {
                for (i2 = 1; i2 < jSONArray2.length(); i2++) {
                    com_google_android_gms_internal_zzbft_zza.zzg((zzbfs) list.get(jSONArray2.getInt(i2)));
                }
            } else {
                String str = "Unknown Rule property: ";
                String valueOf = String.valueOf(jSONArray2.getString(0));
                zzhV(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
        return com_google_android_gms_internal_zzbft_zza.zzRz();
    }

    static zzbfs zzb(JSONObject jSONObject, List<String> list) throws zzbfb, JSONException {
        zzbfs.zza com_google_android_gms_internal_zzbfs_zza = new zzbfs.zza();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            zzbfv zzRD = zzb(jSONObject.get(str), (List) list).zzRD();
            if ("push_after_evaluate".equals(str)) {
                com_google_android_gms_internal_zzbfs_zza.zzb(zzRD);
            } else {
                com_google_android_gms_internal_zzbfs_zza.zza(str, zzRD);
            }
        }
        return com_google_android_gms_internal_zzbfs_zza.zzRu();
    }

    static zzbfv.zza zzb(Object obj, List<String> list) throws zzbfb, JSONException {
        int i = 2;
        String valueOf;
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            String string = jSONArray.getString(0);
            if (string.equals("escape")) {
                zzbfv.zza zzb = zzb(jSONArray.get(1), (List) list);
                while (i < jSONArray.length()) {
                    zzb.zzmZ(jSONArray.getInt(i));
                    i++;
                }
                return zzb;
            } else if (string.equals("list")) {
                List arrayList = new ArrayList();
                for (int i2 = 1; i2 < jSONArray.length(); i2++) {
                    arrayList.add(zzb(jSONArray.get(i2), (List) list).zzRD());
                }
                r0 = new zzbfv.zza(2, arrayList);
                r0.zzaP(true);
                return r0;
            } else if (string.equals("map")) {
                Map hashMap = new HashMap();
                for (i = 1; i < jSONArray.length(); i += 2) {
                    hashMap.put(zzb(jSONArray.get(i), (List) list).zzRD(), zzb(jSONArray.get(i + 1), (List) list).zzRD());
                }
                r0 = new zzbfv.zza(3, hashMap);
                r0.zzaP(true);
                return r0;
            } else if (string.equals("macro")) {
                zzbfv.zza com_google_android_gms_internal_zzbfv_zza = new zzbfv.zza(4, list.get(jSONArray.getInt(1)));
                com_google_android_gms_internal_zzbfv_zza.zzaP(true);
                return com_google_android_gms_internal_zzbfv_zza;
            } else if (string.equals("template")) {
                List arrayList2 = new ArrayList();
                for (i = 1; i < jSONArray.length(); i++) {
                    arrayList2.add(zzb(jSONArray.get(i), (List) list).zzRD());
                }
                r0 = new zzbfv.zza(7, arrayList2);
                r0.zzaP(true);
                return r0;
            } else {
                valueOf = String.valueOf(obj);
                zzhV(new StringBuilder(String.valueOf(valueOf).length() + 20).append("Invalid value type: ").append(valueOf).toString());
                return null;
            }
        } else if (obj instanceof Boolean) {
            return new zzbfv.zza(8, obj);
        } else {
            if (obj instanceof Integer) {
                return new zzbfv.zza(6, obj);
            }
            if (obj instanceof String) {
                return new zzbfv.zza(1, obj);
            }
            valueOf = String.valueOf(obj);
            zzhV(new StringBuilder(String.valueOf(valueOf).length() + 20).append("Invalid value type: ").append(valueOf).toString());
            return null;
        }
    }

    static List<zzbfs> zzb(JSONArray jSONArray, List<String> list) throws JSONException, zzbfb {
        List<zzbfs> arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(zzb(jSONArray.getJSONObject(i), (List) list));
        }
        return arrayList;
    }

    static List<String> zzc(JSONArray jSONArray) throws JSONException {
        List<String> arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getJSONObject(i).getString("instance_name"));
        }
        return arrayList;
    }

    private static zzbgd zzd(JSONArray jSONArray) throws JSONException {
        int i = 1;
        zzac.zzas(jSONArray.length() > 0);
        String string = jSONArray.getString(0);
        List arrayList = new ArrayList();
        while (i < jSONArray.length()) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                JSONArray jSONArray2 = (JSONArray) obj;
                if (jSONArray2.length() != 0) {
                    arrayList.add(zzd(jSONArray2));
                }
            } else if (obj == JSONObject.NULL) {
                arrayList.add(zzbga.zzbKU);
            } else {
                arrayList.add(zzbgf.zzZ(obj));
            }
            i++;
        }
        return new zzbgd(string, arrayList);
    }

    static zzbfr zzhT(String str) throws JSONException, zzbfb {
        Object obj = new JSONObject(str).get("resource");
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            zzbfr.zza com_google_android_gms_internal_zzbfr_zza = new zzbfr.zza();
            com_google_android_gms_internal_zzbfr_zza.zzid(jSONObject.optString("version"));
            List zzc = zzc(jSONObject.getJSONArray("macros"));
            List zzb = zzb(jSONObject.getJSONArray("tags"), zzc);
            List zzb2 = zzb(jSONObject.getJSONArray("predicates"), zzc);
            for (zzbfs zzc2 : zzb(jSONObject.getJSONArray("macros"), zzc)) {
                com_google_android_gms_internal_zzbfr_zza.zzc(zzc2);
            }
            JSONArray jSONArray = jSONObject.getJSONArray("rules");
            for (int i = 0; i < jSONArray.length(); i++) {
                com_google_android_gms_internal_zzbfr_zza.zza(zza(jSONArray.getJSONArray(i), zzb, zzb2));
            }
            return com_google_android_gms_internal_zzbfr_zza.zzRs();
        }
        throw new zzbfb("Resource map not found");
    }

    static zzbfu zzhU(String str) throws JSONException, zzbfb {
        JSONObject jSONObject = new JSONObject(str);
        JSONArray optJSONArray = jSONObject.optJSONArray("runtime");
        if (optJSONArray == null) {
            return null;
        }
        zzbfu.zza com_google_android_gms_internal_zzbfu_zza = new zzbfu.zza();
        Object obj = jSONObject.get("resource");
        if (obj instanceof JSONObject) {
            com_google_android_gms_internal_zzbfu_zza.zzie(((JSONObject) obj).optString("version"));
            for (int i = 0; i < optJSONArray.length(); i++) {
                Object obj2 = optJSONArray.get(i);
                if (!(obj2 instanceof JSONArray) || ((JSONArray) obj2).length() != 0) {
                    com_google_android_gms_internal_zzbfu_zza.zza(zzX(obj2));
                }
            }
            return com_google_android_gms_internal_zzbfu_zza.zzRB();
        }
        throw new zzbfb("Resource map not found");
    }

    private static void zzhV(String str) throws zzbfb {
        zzayx.e(str);
        throw new zzbfb(str);
    }
}
