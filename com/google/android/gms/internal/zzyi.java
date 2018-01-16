package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzzv.zza;

public abstract class zzyi<R extends Result> extends zza<R, zzyl> {
    public zzyi(GoogleApiClient googleApiClient) {
        super(Cast.API, googleApiClient);
    }

    public void zzch(int i) {
        zzb(zzc(new Status(i)));
    }

    public void zze(int i, String str) {
        zzb(zzc(new Status(i, str, null)));
    }
}
