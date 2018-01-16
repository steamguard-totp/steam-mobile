package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.internal.zzur.zza;

public class zzup extends zzl<zzur> {
    public zzup(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 74, com_google_android_gms_common_internal_zzg, connectionCallbacks, onConnectionFailedListener);
    }

    protected zzur zzaB(IBinder iBinder) {
        return zza.zzaD(iBinder);
    }

    protected String zzeu() {
        return "com.google.android.gms.auth.api.accountactivationstate.START";
    }

    protected String zzev() {
        return "com.google.android.gms.auth.api.accountactivationstate.internal.IAccountActivationStateService";
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzaB(iBinder);
    }
}
