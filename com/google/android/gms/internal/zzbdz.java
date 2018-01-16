package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;

public class zzbdz implements zzazt {
    private Context mContext;

    public zzbdz(Context context) {
        this.mContext = (Context) zzac.zzw(context);
    }

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        String str = null;
        if (com_google_android_gms_internal_zzbfw_Arr.length > 0 && com_google_android_gms_internal_zzbfw_Arr[0] != zzbga.zzbKV) {
            str = zzazu.zzd(zzbgf.zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw_Arr[0]));
        }
        String zzH = zzayw.zzH(this.mContext, str);
        return zzH != null ? new zzbge(zzH) : zzbga.zzbKV;
    }
}
