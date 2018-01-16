package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzf.zzb;
import com.google.android.gms.common.internal.zzf.zzc;
import com.google.android.gms.internal.zzdr.zza;

@zzmb
public class zzdn extends zzf<zzdr> {
    zzdn(Context context, Looper looper, zzb com_google_android_gms_common_internal_zzf_zzb, zzc com_google_android_gms_common_internal_zzf_zzc) {
        super(context, looper, 123, com_google_android_gms_common_internal_zzf_zzb, com_google_android_gms_common_internal_zzf_zzc, null);
    }

    protected String zzeu() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    protected String zzev() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    public zzdr zzew() throws DeadObjectException {
        return (zzdr) super.zzwW();
    }

    protected zzdr zzg(IBinder iBinder) {
        return zza.zzi(iBinder);
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzg(iBinder);
    }
}
