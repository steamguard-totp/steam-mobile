package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzep.zza;

@zzmb
public class zzdx extends zzg<zzeq> {
    public zzdx() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public zzep zza(Context context, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs, int i) {
        Throwable e;
        try {
            return zza.zzq(((zzeq) zzaT(context)).zza(zze.zzA(context), com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzjs, 10084000, i));
        } catch (RemoteException e2) {
            e = e2;
            zzpy.zza("Could not create remote AdManager.", e);
            return null;
        } catch (zzg.zza e3) {
            e = e3;
            zzpy.zza("Could not create remote AdManager.", e);
            return null;
        }
    }

    protected /* synthetic */ Object zzc(IBinder iBinder) {
        return zzk(iBinder);
    }

    protected zzeq zzk(IBinder iBinder) {
        return zzeq.zza.zzr(iBinder);
    }
}
