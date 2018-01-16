package com.google.android.gms.internal;

import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.common.internal.zzac;

public class zzbdr implements zzazt {
    private final Context mContext;

    public zzbdr(Context context) {
        this.mContext = context;
    }

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 0) {
            z = false;
        }
        zzac.zzas(z);
        String zzbC = zzbC(this.mContext);
        if (zzbC == null) {
            zzbC = "";
        }
        return new zzbge(zzbC);
    }

    protected String zzbC(Context context) {
        return Secure.getString(this.mContext.getContentResolver(), "android_id");
    }
}
