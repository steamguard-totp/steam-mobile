package com.google.android.gms.internal;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.internal.zzaf.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

public class zzbm extends zzby {
    public zzbm(zzbc com_google_android_gms_internal_zzbc, String str, String str2, zza com_google_android_gms_internal_zzaf_zza, int i, int i2) {
        super(com_google_android_gms_internal_zzbc, str, str2, com_google_android_gms_internal_zzaf_zza, i, i2);
    }

    private void zzbj() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzra) {
            this.zzra.zzbV = (String) this.zzrj.invoke(null, new Object[]{this.zzpC.getApplicationContext()});
        }
    }

    private void zzbk() {
        AdvertisingIdClient zzaZ = this.zzpC.zzaZ();
        if (zzaZ != null) {
            try {
                Info info = zzaZ.getInfo();
                String zzr = zzbe.zzr(info.getId());
                if (zzr != null) {
                    synchronized (this.zzra) {
                        this.zzra.zzbV = zzr;
                        this.zzra.zzbX = Boolean.valueOf(info.isLimitAdTrackingEnabled());
                        this.zzra.zzbW = Integer.valueOf(5);
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    protected void zzbe() throws IllegalAccessException, InvocationTargetException {
        if (this.zzpC.zzaO()) {
            zzbk();
        } else {
            zzbj();
        }
    }
}
