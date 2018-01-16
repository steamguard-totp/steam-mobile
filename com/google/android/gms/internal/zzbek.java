package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.common.internal.zzac;

public class zzbek implements zzazt {
    private Context mContext;
    private DisplayMetrics zzwO = new DisplayMetrics();

    public zzbek(Context context) {
        this.mContext = context;
    }

    public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        if (com_google_android_gms_internal_zzbfw_Arr.length != 0) {
            z = false;
        }
        zzac.zzas(z);
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(this.zzwO);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.zzwO.widthPixels);
        stringBuilder.append("x");
        stringBuilder.append(this.zzwO.heightPixels);
        return new zzbge(stringBuilder.toString());
    }
}
