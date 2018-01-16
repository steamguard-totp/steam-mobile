package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzgz.zza;

@zzmb
public class zzgo extends zza {
    private final Uri mUri;
    private final Drawable zzFQ;
    private final double zzFR;

    public zzgo(Drawable drawable, Uri uri, double d) {
        this.zzFQ = drawable;
        this.mUri = uri;
        this.zzFR = d;
    }

    public double getScale() {
        return this.zzFR;
    }

    public Uri getUri() throws RemoteException {
        return this.mUri;
    }

    public zzd zzfK() throws RemoteException {
        return zze.zzA(this.zzFQ);
    }
}
