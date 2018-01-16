package com.google.android.gms.internal;

import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzoi.zza;

@zzmb
public class zzoe extends zza {
    private volatile zzof zzUM;
    private volatile zzoc zzUY;
    private volatile zzod zzUZ;

    public zzoe(zzod com_google_android_gms_internal_zzod) {
        this.zzUZ = com_google_android_gms_internal_zzod;
    }

    public void zza(zzd com_google_android_gms_dynamic_zzd, zzok com_google_android_gms_internal_zzok) {
        if (this.zzUZ != null) {
            this.zzUZ.zzc(com_google_android_gms_internal_zzok);
        }
    }

    public void zza(zzoc com_google_android_gms_internal_zzoc) {
        this.zzUY = com_google_android_gms_internal_zzoc;
    }

    public void zza(zzof com_google_android_gms_internal_zzof) {
        this.zzUM = com_google_android_gms_internal_zzof;
    }

    public void zzb(zzd com_google_android_gms_dynamic_zzd, int i) {
        if (this.zzUY != null) {
            this.zzUY.zzab(i);
        }
    }

    public void zzc(zzd com_google_android_gms_dynamic_zzd, int i) {
        if (this.zzUM != null) {
            this.zzUM.zza(zze.zzE(com_google_android_gms_dynamic_zzd).getClass().getName(), i);
        }
    }

    public void zzq(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzUY != null) {
            this.zzUY.zzjs();
        }
    }

    public void zzr(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzUM != null) {
            this.zzUM.zzaN(zze.zzE(com_google_android_gms_dynamic_zzd).getClass().getName());
        }
    }

    public void zzs(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzUZ != null) {
            this.zzUZ.onRewardedVideoAdOpened();
        }
    }

    public void zzt(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzUZ != null) {
            this.zzUZ.onRewardedVideoStarted();
        }
    }

    public void zzu(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzUZ != null) {
            this.zzUZ.onRewardedVideoAdClosed();
        }
    }

    public void zzv(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzUZ != null) {
            this.zzUZ.zzjp();
        }
    }

    public void zzw(zzd com_google_android_gms_dynamic_zzd) {
        if (this.zzUZ != null) {
            this.zzUZ.onRewardedVideoAdLeftApplication();
        }
    }
}
