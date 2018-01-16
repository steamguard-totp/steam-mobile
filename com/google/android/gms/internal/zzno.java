package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zznr.zza;

@zzmb
public class zzno extends zza {
    private final Context mContext;
    private final zznp zzUE;
    private final Object zzrN;
    private final zzqa zztr;

    public zzno(Context context, zzd com_google_android_gms_ads_internal_zzd, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa) {
        this(context, com_google_android_gms_internal_zzqa, new zznp(context, com_google_android_gms_ads_internal_zzd, zzec.zzez(), com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzqa));
    }

    zzno(Context context, zzqa com_google_android_gms_internal_zzqa, zznp com_google_android_gms_internal_zznp) {
        this.zzrN = new Object();
        this.mContext = context;
        this.zztr = com_google_android_gms_internal_zzqa;
        this.zzUE = com_google_android_gms_internal_zznp;
    }

    public void destroy() {
        zzh(null);
    }

    public boolean isLoaded() {
        boolean isLoaded;
        synchronized (this.zzrN) {
            isLoaded = this.zzUE.isLoaded();
        }
        return isLoaded;
    }

    public void pause() {
        zzf(null);
    }

    public void resume() {
        zzg(null);
    }

    public void setUserId(String str) {
        zzpy.zzbe("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    public void show() {
        synchronized (this.zzrN) {
            this.zzUE.zzjo();
        }
    }

    public void zza(zznt com_google_android_gms_internal_zznt) {
        synchronized (this.zzrN) {
            this.zzUE.zza(com_google_android_gms_internal_zznt);
        }
    }

    public void zza(zznx com_google_android_gms_internal_zznx) {
        synchronized (this.zzrN) {
            this.zzUE.zza(com_google_android_gms_internal_zznx);
        }
    }

    public void zzf(com.google.android.gms.dynamic.zzd com_google_android_gms_dynamic_zzd) {
        synchronized (this.zzrN) {
            this.zzUE.pause();
        }
    }

    public void zzg(com.google.android.gms.dynamic.zzd com_google_android_gms_dynamic_zzd) {
        synchronized (this.zzrN) {
            Context context = com_google_android_gms_dynamic_zzd == null ? null : (Context) zze.zzE(com_google_android_gms_dynamic_zzd);
            if (context != null) {
                try {
                    this.zzUE.onContextChanged(context);
                } catch (Throwable e) {
                    zzpy.zzc("Unable to extract updated context.", e);
                }
            }
            this.zzUE.resume();
        }
    }

    public void zzh(com.google.android.gms.dynamic.zzd com_google_android_gms_dynamic_zzd) {
        synchronized (this.zzrN) {
            this.zzUE.destroy();
        }
    }
}
