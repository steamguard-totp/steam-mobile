package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;

public final class zzbjc {
    public static final zzf<zzbiv> zzahc = new zzf();
    private static final com.google.android.gms.common.api.Api.zza<zzbiv, zza> zzbVX = new com.google.android.gms.common.api.Api.zza<zzbiv, zza>() {
        public zzbiv zza(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, zza com_google_android_gms_internal_zzbjc_zza, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzbiw(context, looper, com_google_android_gms_common_internal_zzg, com_google_android_gms_internal_zzbjc_zza, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<zza> zzbVY = new Api("InternalFirebaseAuth.FIREBASE_AUTH_API", zzbVX, zzahc);

    public static final class zza implements HasOptions {
        private final String zzbUL;

        public static final class zza {
            private String zzbUL;

            public zza(String str) {
                this.zzbUL = zzac.zzdv(str);
            }

            public zza zzUj() {
                return new zza(this.zzbUL);
            }
        }

        private zza(String str) {
            this.zzbUL = zzac.zzh(str, "A valid API key must be provided");
        }

        public String getApiKey() {
            return this.zzbUL;
        }
    }

    public static zzbiu zza(Context context, zza com_google_android_gms_internal_zzbjc_zza) {
        return new zzbiu(context, com_google_android_gms_internal_zzbjc_zza);
    }
}
