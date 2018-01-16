package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class zzazr {
    private static final Map<String, zza> zzbJq;

    private static final class zza {
        public static final String[] zzbJt = new String[]{zzah.ARG0.toString(), zzah.ARG1.toString()};
        private final String zzbJr;
        private final String[] zzbJs;

        public zza(String str) {
            this.zzbJr = str;
            this.zzbJs = zzbJt;
        }

        public zza(String str, String[] strArr) {
            this.zzbJr = str;
            this.zzbJs = strArr;
        }

        public String zzQX() {
            return this.zzbJr;
        }

        public String[] zzQY() {
            return this.zzbJs;
        }
    }

    static {
        Map hashMap = new HashMap();
        hashMap.put(zzag.CONTAINS.toString(), new zza("contains"));
        hashMap.put(zzag.ENDS_WITH.toString(), new zza("endsWith"));
        hashMap.put(zzag.EQUALS.toString(), new zza("equals"));
        hashMap.put(zzag.GREATER_EQUALS.toString(), new zza("greaterEquals"));
        hashMap.put(zzag.GREATER_THAN.toString(), new zza("greaterThan"));
        hashMap.put(zzag.LESS_EQUALS.toString(), new zza("lessEquals"));
        hashMap.put(zzag.LESS_THAN.toString(), new zza("lessThan"));
        hashMap.put(zzag.REGEX.toString(), new zza("regex", new String[]{zzah.ARG0.toString(), zzah.ARG1.toString(), zzah.IGNORE_CASE.toString()}));
        hashMap.put(zzag.STARTS_WITH.toString(), new zza("startsWith"));
        zzbJq = hashMap;
    }

    public static zzbgd zza(String str, Map<String, zzbfw<?>> map, zzazg com_google_android_gms_internal_zzazg) {
        if (zzbJq.containsKey(str)) {
            zza com_google_android_gms_internal_zzazr_zza = (zza) zzbJq.get(str);
            List zza = zza(com_google_android_gms_internal_zzazr_zza.zzQY(), map);
            List arrayList = new ArrayList();
            arrayList.add(new zzbge("gtmUtils"));
            zzbgd com_google_android_gms_internal_zzbgd = new zzbgd("15", arrayList);
            arrayList = new ArrayList();
            arrayList.add(com_google_android_gms_internal_zzbgd);
            arrayList.add(new zzbge("mobile"));
            com_google_android_gms_internal_zzbgd = new zzbgd("17", arrayList);
            arrayList = new ArrayList();
            arrayList.add(com_google_android_gms_internal_zzbgd);
            arrayList.add(new zzbge(com_google_android_gms_internal_zzazr_zza.zzQX()));
            arrayList.add(new zzbgb(zza));
            return new zzbgd("2", arrayList);
        }
        throw new RuntimeException(new StringBuilder(String.valueOf(str).length() + 47).append("Fail to convert ").append(str).append(" to the internal representation").toString());
    }

    public static String zza(zzag com_google_android_gms_internal_zzag) {
        return zzhR(com_google_android_gms_internal_zzag.toString());
    }

    private static List<zzbfw<?>> zza(String[] strArr, Map<String, zzbfw<?>> map) {
        List<zzbfw<?>> arrayList = new ArrayList();
        for (int i = 0; i < strArr.length; i++) {
            if (map.containsKey(strArr[i])) {
                arrayList.add((zzbfw) map.get(strArr[i]));
            } else {
                arrayList.add(zzbga.zzbKV);
            }
        }
        return arrayList;
    }

    public static String zzhR(String str) {
        return zzbJq.containsKey(str) ? ((zza) zzbJq.get(str)).zzQX() : null;
    }
}
