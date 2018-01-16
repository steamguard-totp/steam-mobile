package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class zzst {
    private final Map<String, String> zzFs;
    private final List<zzsf> zzaff;
    private final long zzafg;
    private final long zzafh;
    private final int zzafi;
    private final boolean zzafj;
    private final String zzafk;

    public zzst(zzrt com_google_android_gms_internal_zzrt, Map<String, String> map, long j, boolean z) {
        this(com_google_android_gms_internal_zzrt, map, j, z, 0, 0, null);
    }

    public zzst(zzrt com_google_android_gms_internal_zzrt, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(com_google_android_gms_internal_zzrt, map, j, z, j2, i, null);
    }

    public zzst(zzrt com_google_android_gms_internal_zzrt, Map<String, String> map, long j, boolean z, long j2, int i, List<zzsf> list) {
        zzac.zzw(com_google_android_gms_internal_zzrt);
        zzac.zzw(map);
        this.zzafh = j;
        this.zzafj = z;
        this.zzafg = j2;
        this.zzafi = i;
        this.zzaff = list != null ? list : Collections.emptyList();
        this.zzafk = zzs(list);
        Map hashMap = new HashMap();
        for (Entry entry : map.entrySet()) {
            String zza;
            if (zzl(entry.getKey())) {
                zza = zza(com_google_android_gms_internal_zzrt, entry.getKey());
                if (zza != null) {
                    hashMap.put(zza, zzb(com_google_android_gms_internal_zzrt, entry.getValue()));
                }
            }
        }
        for (Entry entry2 : map.entrySet()) {
            if (!zzl(entry2.getKey())) {
                zza = zza(com_google_android_gms_internal_zzrt, entry2.getKey());
                if (zza != null) {
                    hashMap.put(zza, zzb(com_google_android_gms_internal_zzrt, entry2.getValue()));
                }
            }
        }
        if (!TextUtils.isEmpty(this.zzafk)) {
            zztg.zzc(hashMap, "_v", this.zzafk);
            if (this.zzafk.equals("ma4.0.0") || this.zzafk.equals("ma4.0.1")) {
                hashMap.remove("adid");
            }
        }
        this.zzFs = Collections.unmodifiableMap(hashMap);
    }

    public static zzst zza(zzrt com_google_android_gms_internal_zzrt, zzst com_google_android_gms_internal_zzst, Map<String, String> map) {
        return new zzst(com_google_android_gms_internal_zzrt, map, com_google_android_gms_internal_zzst.zzpq(), com_google_android_gms_internal_zzst.zzps(), com_google_android_gms_internal_zzst.zzpp(), com_google_android_gms_internal_zzst.zzpo(), com_google_android_gms_internal_zzst.zzpr());
    }

    private static String zza(zzrt com_google_android_gms_internal_zzrt, Object obj) {
        if (obj == null) {
            return null;
        }
        Object obj2 = obj.toString();
        if (obj2.startsWith("&")) {
            obj2 = obj2.substring(1);
        }
        int length = obj2.length();
        if (length > 256) {
            obj2 = obj2.substring(0, 256);
            com_google_android_gms_internal_zzrt.zzc("Hit param name is too long and will be trimmed", Integer.valueOf(length), obj2);
        }
        return TextUtils.isEmpty(obj2) ? null : obj2;
    }

    private static String zzb(zzrt com_google_android_gms_internal_zzrt, Object obj) {
        String obj2 = obj == null ? "" : obj.toString();
        int length = obj2.length();
        if (length <= 8192) {
            return obj2;
        }
        obj2 = obj2.substring(0, 8192);
        com_google_android_gms_internal_zzrt.zzc("Hit param value is too long and will be trimmed", Integer.valueOf(length), obj2);
        return obj2;
    }

    private static boolean zzl(Object obj) {
        return obj == null ? false : obj.toString().startsWith("&");
    }

    private String zzr(String str, String str2) {
        zzac.zzdv(str);
        zzac.zzb(!str.startsWith("&"), (Object) "Short param name required");
        String str3 = (String) this.zzFs.get(str);
        return str3 != null ? str3 : str2;
    }

    private static String zzs(List<zzsf> list) {
        CharSequence value;
        if (list != null) {
            for (zzsf com_google_android_gms_internal_zzsf : list) {
                if ("appendVersion".equals(com_google_android_gms_internal_zzsf.getId())) {
                    value = com_google_android_gms_internal_zzsf.getValue();
                    break;
                }
            }
        }
        value = null;
        return TextUtils.isEmpty(value) ? null : value;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ht=").append(this.zzafh);
        if (this.zzafg != 0) {
            stringBuffer.append(", dbId=").append(this.zzafg);
        }
        if (this.zzafi != 0) {
            stringBuffer.append(", appUID=").append(this.zzafi);
        }
        List<String> arrayList = new ArrayList(this.zzFs.keySet());
        Collections.sort(arrayList);
        for (String str : arrayList) {
            stringBuffer.append(", ");
            stringBuffer.append(str);
            stringBuffer.append("=");
            stringBuffer.append((String) this.zzFs.get(str));
        }
        return stringBuffer.toString();
    }

    public Map<String, String> zzfz() {
        return this.zzFs;
    }

    public int zzpo() {
        return this.zzafi;
    }

    public long zzpp() {
        return this.zzafg;
    }

    public long zzpq() {
        return this.zzafh;
    }

    public List<zzsf> zzpr() {
        return this.zzaff;
    }

    public boolean zzps() {
        return this.zzafj;
    }

    public long zzpt() {
        return zztg.zzce(zzr("_s", "0"));
    }

    public String zzpu() {
        return zzr("_m", "");
    }
}
