package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import com.google.android.gms.internal.zzov.zza;

@zzmb
public class zzll extends zzlj {
    private zzlk zzPD;

    zzll(Context context, zza com_google_android_gms_internal_zzov_zza, zzqp com_google_android_gms_internal_zzqp, zzln.zza com_google_android_gms_internal_zzln_zza) {
        super(context, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzqp, com_google_android_gms_internal_zzln_zza);
    }

    protected void zziu() {
        int i;
        int i2;
        zzec zzbD = this.zzGt.zzbD();
        if (zzbD.zzzl) {
            DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
        } else {
            i = zzbD.widthPixels;
            i2 = zzbD.heightPixels;
        }
        this.zzPD = new zzlk(this, this.zzGt, i, i2);
        this.zzGt.zzkV().zza((zzqq.zza) this);
        this.zzPD.zza(this.zzPp);
    }

    protected int zziv() {
        if (!this.zzPD.zziz()) {
            return !this.zzPD.zziA() ? 2 : -2;
        } else {
            zzpy.zzbc("Ad-Network indicated no fill with passback URL.");
            return 3;
        }
    }
}
