package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzf.zzb;
import com.google.android.gms.common.internal.zzf.zzc;
import com.google.android.gms.internal.zzmq.zza;

@zzmb
public class zzmg extends zzf<zzmq> {
    final int zzRb;

    public zzmg(Context context, Looper looper, zzb com_google_android_gms_common_internal_zzf_zzb, zzc com_google_android_gms_common_internal_zzf_zzc, int i) {
        super(context, looper, 8, com_google_android_gms_common_internal_zzf_zzb, com_google_android_gms_common_internal_zzf_zzc, null);
        this.zzRb = i;
    }

    protected zzmq zzad(IBinder iBinder) {
        return zza.zzae(iBinder);
    }

    protected String zzeu() {
        return "com.google.android.gms.ads.service.START";
    }

    protected String zzev() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzad(iBinder);
    }

    public zzmq zzjb() throws DeadObjectException {
        return (zzmq) super.zzwW();
    }
}
