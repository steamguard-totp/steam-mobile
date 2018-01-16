package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.common.internal.zzac;

@zzmb
public class zzqo {
    private final Context mContext;
    private final zzqp zzGt;
    private zzl zzOA;
    private final ViewGroup zzYz;

    public zzqo(Context context, ViewGroup viewGroup, zzqp com_google_android_gms_internal_zzqp) {
        this(context, viewGroup, com_google_android_gms_internal_zzqp, null);
    }

    zzqo(Context context, ViewGroup viewGroup, zzqp com_google_android_gms_internal_zzqp, zzl com_google_android_gms_ads_internal_overlay_zzl) {
        this.mContext = context;
        this.zzYz = viewGroup;
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzOA = com_google_android_gms_ads_internal_overlay_zzl;
    }

    public void onDestroy() {
        zzac.zzdn("onDestroy must be called from the UI thread.");
        if (this.zzOA != null) {
            this.zzOA.destroy();
            this.zzYz.removeView(this.zzOA);
            this.zzOA = null;
        }
    }

    public void onPause() {
        zzac.zzdn("onPause must be called from the UI thread.");
        if (this.zzOA != null) {
            this.zzOA.pause();
        }
    }

    public void zza(int i, int i2, int i3, int i4, int i5, boolean z) {
        if (this.zzOA == null) {
            zzgb.zza(this.zzGt.zzlf().zzfv(), this.zzGt.zzle(), "vpr2");
            this.zzOA = new zzl(this.mContext, this.zzGt, i5, z, this.zzGt.zzlf().zzfv());
            this.zzYz.addView(this.zzOA, 0, new LayoutParams(-1, -1));
            this.zzOA.zzd(i, i2, i3, i4);
            this.zzGt.zzkV().zzN(false);
        }
    }

    public void zze(int i, int i2, int i3, int i4) {
        zzac.zzdn("The underlay may only be modified from the UI thread.");
        if (this.zzOA != null) {
            this.zzOA.zzd(i, i2, i3, i4);
        }
    }

    public zzl zzkO() {
        zzac.zzdn("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzOA;
    }
}
