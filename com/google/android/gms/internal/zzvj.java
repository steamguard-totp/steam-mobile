package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.zzb;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.internal.zzvl.zza;

public final class zzvj extends zzl<zzvl> {
    private final Bundle zzaid;

    public zzvj(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, zzb com_google_android_gms_auth_api_zzb, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 16, com_google_android_gms_common_internal_zzg, connectionCallbacks, onConnectionFailedListener);
        this.zzaid = com_google_android_gms_auth_api_zzb == null ? new Bundle() : com_google_android_gms_auth_api_zzb.zzqu();
    }

    protected zzvl zzaH(IBinder iBinder) {
        return zza.zzaJ(iBinder);
    }

    protected String zzeu() {
        return "com.google.android.gms.auth.service.START";
    }

    protected String zzev() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzaH(iBinder);
    }

    public boolean zzqD() {
        zzg zzxp = zzxp();
        return (TextUtils.isEmpty(zzxp.getAccountName()) || zzxp.zzc(com.google.android.gms.auth.api.zza.API).isEmpty()) ? false : true;
    }

    protected Bundle zzql() {
        return this.zzaid;
    }
}
