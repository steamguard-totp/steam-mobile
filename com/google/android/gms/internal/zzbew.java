package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class zzbew extends zzazv {
    private static final Set<String> zzbJL = new HashSet(Arrays.asList(new String[]{"GET", "HEAD", "POST", "PUT"}));
    private final zzayp zzbJK;

    public zzbew(zzayp com_google_android_gms_internal_zzayp) {
        this.zzbJK = com_google_android_gms_internal_zzayp;
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        Map map;
        String str = null;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 1);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgc);
        zzbfw zzig = com_google_android_gms_internal_zzbfw_Arr[0].zzig("url");
        zzac.zzas(zzig instanceof zzbge);
        String str2 = (String) ((zzbge) zzig).zzRF();
        zzig = com_google_android_gms_internal_zzbfw_Arr[0].zzig("method");
        if (zzig == zzbga.zzbKV) {
            zzig = new zzbge("GET");
        }
        zzac.zzas(zzig instanceof zzbge);
        String str3 = (String) ((zzbge) zzig).zzRF();
        zzac.zzas(zzbJL.contains(str3));
        zzig = com_google_android_gms_internal_zzbfw_Arr[0].zzig("uniqueId");
        boolean z = zzig == zzbga.zzbKV || zzig == zzbga.zzbKU || (zzig instanceof zzbge);
        zzac.zzas(z);
        String str4 = (zzig == zzbga.zzbKV || zzig == zzbga.zzbKU) ? null : (String) ((zzbge) zzig).zzRF();
        zzig = com_google_android_gms_internal_zzbfw_Arr[0].zzig("headers");
        boolean z2 = zzig == zzbga.zzbKV || (zzig instanceof zzbgc);
        zzac.zzas(z2);
        Map hashMap = new HashMap();
        if (zzig == zzbga.zzbKV) {
            map = null;
        } else {
            for (Entry entry : ((Map) ((zzbgc) zzig).zzRF()).entrySet()) {
                String str5 = (String) entry.getKey();
                zzig = (zzbfw) entry.getValue();
                if (zzig instanceof zzbge) {
                    hashMap.put(str5, (String) ((zzbge) zzig).zzRF());
                } else {
                    zzayx.zzbe(String.format("Ignore the non-string value of header key %s.", new Object[]{str5}));
                }
            }
            map = hashMap;
        }
        zzig = com_google_android_gms_internal_zzbfw_Arr[0].zzig("body");
        boolean z3 = zzig == zzbga.zzbKV || (zzig instanceof zzbge);
        zzac.zzas(z3);
        if (zzig != zzbga.zzbKV) {
            str = (String) ((zzbge) zzig).zzRF();
        }
        if ((str3.equals("GET") || str3.equals("HEAD")) && str != null) {
            zzayx.zzbe(String.format("Body of %s hit will be ignored: %s.", new Object[]{str3, str}));
        }
        this.zzbJK.zza(str2, str3, str4, map, str);
        zzayx.v(String.format("QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s", new Object[]{str2, str3, str4, map, str}));
        return zzbga.zzbKV;
    }
}
