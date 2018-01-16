package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzen.zza;

@zzmb
public final class zzdw extends zzg<zzeo> {
    public zzdw() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public zzen zza(Context context, String str, zzjs com_google_android_gms_internal_zzjs) {
        try {
            return zza.zzo(((zzeo) zzaT(context)).zza(zze.zzA(context), str, com_google_android_gms_internal_zzjs, 10084000));
        } catch (Throwable e) {
            zzpy.zzc("Could not create remote builder for AdLoader.", e);
            return null;
        } catch (Throwable e2) {
            zzpy.zzc("Could not create remote builder for AdLoader.", e2);
            return null;
        }
    }

    protected /* synthetic */ Object zzc(IBinder iBinder) {
        return zzj(iBinder);
    }

    protected zzeo zzj(IBinder iBinder) {
        return zzeo.zza.zzp(iBinder);
    }
}
