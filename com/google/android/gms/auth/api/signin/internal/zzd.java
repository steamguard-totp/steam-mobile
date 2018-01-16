package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions.Builder;
import com.google.android.gms.auth.api.signin.internal.zzi.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;

public class zzd extends zzl<zzi> {
    private final GoogleSignInOptions zzajr;

    public zzd(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, GoogleSignInOptions googleSignInOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 91, com_google_android_gms_common_internal_zzg, connectionCallbacks, onConnectionFailedListener);
        if (googleSignInOptions == null) {
            googleSignInOptions = new Builder().build();
        }
        if (!com_google_android_gms_common_internal_zzg.zzxf().isEmpty()) {
            Builder builder = new Builder(googleSignInOptions);
            for (Scope requestScopes : com_google_android_gms_common_internal_zzg.zzxf()) {
                builder.requestScopes(requestScopes, new Scope[0]);
            }
            googleSignInOptions = builder.build();
        }
        this.zzajr = googleSignInOptions;
    }

    protected zzi zzaK(IBinder iBinder) {
        return zza.zzaM(iBinder);
    }

    protected String zzeu() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    protected String zzev() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzaK(iBinder);
    }

    public boolean zzqS() {
        return true;
    }

    public Intent zzqT() {
        return zze.zza(getContext(), this.zzajr);
    }

    public GoogleSignInOptions zzqU() {
        return this.zzajr;
    }
}
