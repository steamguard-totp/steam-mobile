package com.google.android.gms.internal;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.common.internal.zzac;

public class zzbdm implements zzazt {
    private final Context mContext;

    public zzbdm(Context context) {
        this.mContext = (Context) zzac.zzw(context);
    }

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 0) {
            z = false;
        }
        zzac.zzas(z);
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        zzbfw com_google_android_gms_internal_zzbfw = zzbga.zzbKV;
        if (telephonyManager != null) {
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            if (networkOperatorName != null) {
                return new zzbge(networkOperatorName);
            }
        }
        return com_google_android_gms_internal_zzbfw;
    }
}
