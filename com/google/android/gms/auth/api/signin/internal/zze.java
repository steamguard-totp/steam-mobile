package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzace;

public final class zze {
    private static zzace zzajs = new zzace("GoogleSignInCommon", new String[0]);

    private static abstract class zza<R extends Result> extends com.google.android.gms.internal.zzzv.zza<R, zzd> {
        public zza(GoogleApiClient googleApiClient) {
            super(Auth.GOOGLE_SIGN_IN_API, googleApiClient);
        }
    }

    class AnonymousClass3 extends zza<Status> {
        AnonymousClass3(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        protected void zza(zzd com_google_android_gms_auth_api_signin_internal_zzd) throws RemoteException {
            ((zzi) com_google_android_gms_auth_api_signin_internal_zzd.zzwW()).zzc(new zza(this) {
                final /* synthetic */ AnonymousClass3 zzajx;

                {
                    this.zzajx = r1;
                }

                public void zzm(Status status) throws RemoteException {
                    this.zzajx.zzb(status);
                }
            }, com_google_android_gms_auth_api_signin_internal_zzd.zzqU());
        }

        protected Status zzb(Status status) {
            return status;
        }

        protected /* synthetic */ Result zzc(Status status) {
            return zzb(status);
        }
    }

    public static Intent zza(Context context, GoogleSignInOptions googleSignInOptions) {
        zzajs.zzb("GoogleSignInCommon", "getSignInIntent()");
        Parcelable signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setClass(context, SignInHubActivity.class);
        intent.putExtra("config", signInConfiguration);
        return intent;
    }

    public static PendingResult<Status> zzb(GoogleApiClient googleApiClient, Context context) {
        zzl.zzaa(context).zzre();
        zzajs.zzb("GoogleSignInCommon", "Revoking access");
        for (GoogleApiClient zzuN : GoogleApiClient.zzuM()) {
            zzuN.zzuN();
        }
        return googleApiClient.zzb(new AnonymousClass3(googleApiClient));
    }
}
