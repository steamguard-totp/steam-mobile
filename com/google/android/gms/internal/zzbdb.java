package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class zzbdb extends zzazv {
    private final zza zzbJz;

    public interface zza {
        Object zze(String str, Map<String, Object> map);
    }

    public zzbdb(zza com_google_android_gms_internal_zzbdb_zza) {
        this.zzbJz = com_google_android_gms_internal_zzbdb_zza;
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        Map hashMap = new HashMap();
        if (com_google_android_gms_internal_zzbfw_Arr.length >= 2 && com_google_android_gms_internal_zzbfw_Arr[1] != zzbga.zzbKV) {
            zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[1] instanceof zzbgc);
            for (Entry entry : ((Map) ((zzbgc) com_google_android_gms_internal_zzbfw_Arr[1]).zzRF()).entrySet()) {
                zzac.zzar(!(entry.getValue() instanceof zzbgd));
                zzac.zzar(!zzbgf.zzo((zzbfw) entry.getValue()));
                hashMap.put((String) entry.getKey(), ((zzbfw) entry.getValue()).zzRF());
            }
        }
        return zzbgf.zzZ(this.zzbJz.zze(str, hashMap));
    }
}
