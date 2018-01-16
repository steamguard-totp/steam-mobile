package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaze.zzc;

public class zzbed extends zzazv {
    private final Context mContext;
    private final zzc zzbJB;

    public zzbed(Context context, zzc com_google_android_gms_internal_zzaze_zzc) {
        this.mContext = context;
        this.zzbJB = com_google_android_gms_internal_zzaze_zzc;
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        Object obj = this.zzbJB.zzQK().zzPd().get(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[0]));
        if (obj == null && com_google_android_gms_internal_zzbfw_Arr.length > 1) {
            obj = com_google_android_gms_internal_zzbfw_Arr[1];
        }
        return zzbgf.zzZ(obj);
    }
}
