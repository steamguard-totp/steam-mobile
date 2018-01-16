package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzc;
import com.google.android.gms.auth.api.signin.internal.zzd;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzun;
import com.google.android.gms.internal.zzuo;
import com.google.android.gms.internal.zzup;
import com.google.android.gms.internal.zzuw;
import com.google.android.gms.internal.zzuz;
import com.google.android.gms.internal.zzvn;
import java.util.Collections;
import java.util.List;

public final class Auth {
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API = new Api("Auth.CREDENTIALS_API", zzahU, zzahR);
    public static final CredentialsApi CredentialsApi = new zzuw();
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API = new Api("Auth.GOOGLE_SIGN_IN_API", zzahW, zzahT);
    public static final GoogleSignInApi GoogleSignInApi = new zzc();
    public static final Api<zzb> PROXY_API = zza.API;
    public static final ProxyApi ProxyApi = new zzvn();
    public static final zzf<zzuz> zzahR = new zzf();
    public static final zzf<zzup> zzahS = new zzf();
    public static final zzf<zzd> zzahT = new zzf();
    private static final zza<zzuz, AuthCredentialsOptions> zzahU = new zza<zzuz, AuthCredentialsOptions>() {
        public zzuz zza(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, AuthCredentialsOptions authCredentialsOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzuz(context, looper, com_google_android_gms_common_internal_zzg, authCredentialsOptions, connectionCallbacks, onConnectionFailedListener);
        }
    };
    private static final zza<zzup, NoOptions> zzahV = new zza<zzup, NoOptions>() {
        public /* synthetic */ zze zza(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzd(context, looper, com_google_android_gms_common_internal_zzg, (NoOptions) obj, connectionCallbacks, onConnectionFailedListener);
        }

        public zzup zzd(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzup(context, looper, com_google_android_gms_common_internal_zzg, connectionCallbacks, onConnectionFailedListener);
        }
    };
    private static final zza<zzd, GoogleSignInOptions> zzahW = new zza<zzd, GoogleSignInOptions>() {
        public zzd zza(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, GoogleSignInOptions googleSignInOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzd(context, looper, com_google_android_gms_common_internal_zzg, googleSignInOptions, connectionCallbacks, onConnectionFailedListener);
        }

        public List<Scope> zza(GoogleSignInOptions googleSignInOptions) {
            return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.zzqJ();
        }

        public /* synthetic */ List zzp(Object obj) {
            return zza((GoogleSignInOptions) obj);
        }
    };
    public static final Api<NoOptions> zzahX = new Api("Auth.ACCOUNT_STATUS_API", zzahV, zzahS);
    public static final zzun zzahY = new zzuo();

    public static final class AuthCredentialsOptions implements Optional {
        private final String zzahZ;
        private final PasswordSpecification zzaia;

        public Bundle zzql() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", this.zzahZ);
            bundle.putParcelable("password_specification", this.zzaia);
            return bundle;
        }
    }
}
