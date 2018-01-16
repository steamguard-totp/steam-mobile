package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzvj;

public final class zza {
    public static final Api<zzb> API = new Api("Auth.PROXY_API", zzaic, zzaib);
    public static final zzf<zzvj> zzaib = new zzf();
    private static final com.google.android.gms.common.api.Api.zza<zzvj, zzb> zzaic = new com.google.android.gms.common.api.Api.zza<zzvj, zzb>() {
        public zzvj zza(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, zzb com_google_android_gms_auth_api_zzb, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzvj(context, looper, com_google_android_gms_common_internal_zzg, com_google_android_gms_auth_api_zzb, connectionCallbacks, onConnectionFailedListener);
        }
    };
}
