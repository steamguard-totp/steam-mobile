package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaze.zzc;

public class zzbdh extends zzazv {
    private final Context mContext;
    private final zzc zzbJB;

    public zzbdh(Context context, zzc com_google_android_gms_internal_zzaze_zzc) {
        this.mContext = (Context) zzac.zzw(context);
        this.zzbJB = com_google_android_gms_internal_zzaze_zzc;
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length == 0 || com_google_android_gms_internal_zzbfw_Arr[0] == zzbga.zzbKV) {
            return new zzbge("");
        }
        Object obj = this.zzbJB.zzQK().zzPd().get("_ldl");
        if (obj == null) {
            return new zzbge("");
        }
        zzbfw zzZ = zzbgf.zzZ(obj);
        if (!(zzZ instanceof zzbge)) {
            return new zzbge("");
        }
        String str = (String) ((zzbge) zzZ).zzRF();
        if (!zzayw.zzag(str, "conv").equals(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[0]))) {
            return new zzbge("");
        }
        String zzd = com_google_android_gms_internal_zzbfw_Arr.length > 1 ? com_google_android_gms_internal_zzbfw_Arr[1] == zzbga.zzbKV ? null : zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]) : null;
        zzd = zzayw.zzag(str, zzd);
        return zzd != null ? new zzbge(zzd) : new zzbge("");
    }
}
