package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzks.zza;

@zzmb
public final class zzkq extends zzg<zzks> {
    public zzkq() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    protected zzks zzS(IBinder iBinder) {
        return zza.zzU(iBinder);
    }

    protected /* synthetic */ Object zzc(IBinder iBinder) {
        return zzS(iBinder);
    }

    public zzkr zzf(Activity activity) {
        try {
            return zzkr.zza.zzT(((zzks) zzaT(activity)).zzo(zze.zzA(activity)));
        } catch (Throwable e) {
            zzpy.zzc("Could not create remote AdOverlay.", e);
            return null;
        } catch (Throwable e2) {
            zzpy.zzc("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
