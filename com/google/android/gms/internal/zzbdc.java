package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import org.json.JSONArray;

public class zzbdc extends zzazv {
    private final int zzanR;
    private final zzazg zzbIl;

    public zzbdc(int i, zzazg com_google_android_gms_internal_zzazg) {
        this.zzanR = i;
        this.zzbIl = com_google_android_gms_internal_zzazg;
    }

    public zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 1) {
            z = false;
        }
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        try {
            zzazs zzX = zzbfc.zzX(new JSONArray((String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF()).getJSONArray(0));
            zzX.zza(this.zzbIl);
            return this.zzanR == 0 ? zzbga.zzbKV : zzX.zzb(com_google_android_gms_internal_zzazg, new zzbfw[0]);
        } catch (Throwable e) {
            zzayx.zzb("Unable to convert Custom Pixie to instruction", e);
            return zzbga.zzbKV;
        }
    }
}
