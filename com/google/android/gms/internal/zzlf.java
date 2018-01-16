package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzlb.zza;

@zzmb
public final class zzlf extends zzg<zzlb> {
    public zzlf() {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    protected zzlb zzac(IBinder iBinder) {
        return zza.zzZ(iBinder);
    }

    protected /* synthetic */ Object zzc(IBinder iBinder) {
        return zzac(iBinder);
    }

    public zzla zzg(Activity activity) {
        try {
            return zzla.zza.zzY(((zzlb) zzaT(activity)).zzp(zze.zzA(activity)));
        } catch (Throwable e) {
            zzpy.zzc("Could not create remote InAppPurchaseManager.", e);
            return null;
        } catch (Throwable e2) {
            zzpy.zzc("Could not create remote InAppPurchaseManager.", e2);
            return null;
        }
    }
}
