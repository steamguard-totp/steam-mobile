package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;

@zzmb
public final class zzch {
    private final zzcl zzrR;

    public zzch(String str, Context context, boolean z) {
        this.zzrR = zzck.zzb(str, context, z);
    }

    public void zza(MotionEvent motionEvent) throws RemoteException {
        this.zzrR.zzd(zze.zzA(motionEvent));
    }

    public Uri zzc(Uri uri, Context context) throws zzci, RemoteException {
        zzd zza = this.zzrR.zza(zze.zzA(uri), zze.zzA(context));
        if (zza != null) {
            return (Uri) zze.zzE(zza);
        }
        throw new zzci();
    }

    public Uri zzd(Uri uri, Context context) throws zzci, RemoteException {
        zzd zzb = this.zzrR.zzb(zze.zzA(uri), zze.zzA(context));
        if (zzb != null) {
            return (Uri) zze.zzE(zzb);
        }
        throw new zzci();
    }
}
