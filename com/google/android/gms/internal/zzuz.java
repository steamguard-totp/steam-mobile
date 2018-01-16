package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.Auth.AuthCredentialsOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.internal.zzvf.zza;

public final class zzuz extends zzl<zzvf> {
    private final AuthCredentialsOptions zzaiM;

    public zzuz(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, AuthCredentialsOptions authCredentialsOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 68, com_google_android_gms_common_internal_zzg, connectionCallbacks, onConnectionFailedListener);
        this.zzaiM = authCredentialsOptions;
    }

    protected zzvf zzaE(IBinder iBinder) {
        return zza.zzaG(iBinder);
    }

    protected String zzeu() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    protected String zzev() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzaE(iBinder);
    }

    protected Bundle zzql() {
        return this.zzaiM == null ? new Bundle() : this.zzaiM.zzql();
    }
}
