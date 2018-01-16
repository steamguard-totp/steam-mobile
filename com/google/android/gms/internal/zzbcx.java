package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.io.UnsupportedEncodingException;

public class zzbcx extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        try {
            return new zzbge(zzbcw.decode(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr.length > 0 ? (zzbfw) zzac.zzw(com_google_android_gms_internal_zzbfw_Arr[0]) : zzbga.zzbKV), ""));
        } catch (UnsupportedEncodingException e) {
            return zzbga.zzbKV;
        }
    }
}
