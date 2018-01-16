package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zzc;

public class zzzj extends zzc<NoOptions> implements zzzg {

    static final class zza extends com.google.android.gms.internal.zzzv.zza<Status, zzzk> {
        private final zzzh zzawO;

        zza(zzzh com_google_android_gms_internal_zzzh, GoogleApiClient googleApiClient) {
            super(zzzf.API, googleApiClient);
            this.zzawO = com_google_android_gms_internal_zzzh;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            return this.zzawO.equals(((zza) obj).zzawO);
        }

        public String toString() {
            String valueOf = String.valueOf(this.zzawO);
            return new StringBuilder(String.valueOf(valueOf).length() + 20).append("LogEventMethodImpl(").append(valueOf).append(")").toString();
        }

        protected void zza(zzzk com_google_android_gms_internal_zzzk) throws RemoteException {
            zzzm anonymousClass1 = new com.google.android.gms.internal.zzzm.zza(this) {
                final /* synthetic */ zza zzawP;

                {
                    this.zzawP = r1;
                }

                public void zzv(Status status) {
                    this.zzawP.zzb(status);
                }

                public void zzw(Status status) {
                    throw new UnsupportedOperationException();
                }
            };
            try {
                zzzj.zzb(this.zzawO);
                com_google_android_gms_internal_zzzk.zza(anonymousClass1, this.zzawO);
            } catch (Throwable e) {
                Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
                zzA(new Status(10, "MessageProducer"));
            }
        }

        protected Status zzb(Status status) {
            return status;
        }

        protected /* synthetic */ Result zzc(Status status) {
            return zzb(status);
        }
    }

    zzzj(Context context) {
        super(context, zzzf.API, null, new zzzr());
    }

    public static zzzg zzai(Context context) {
        return new zzzj(context);
    }

    static void zzb(zzzh com_google_android_gms_internal_zzzh) {
        if (com_google_android_gms_internal_zzzh.zzawM != null && com_google_android_gms_internal_zzzh.zzawL.zzcsF.length == 0) {
            com_google_android_gms_internal_zzzh.zzawL.zzcsF = com_google_android_gms_internal_zzzh.zzawM.zzuw();
        }
        if (com_google_android_gms_internal_zzzh.zzawN != null && com_google_android_gms_internal_zzzh.zzawL.zzcsL.length == 0) {
            com_google_android_gms_internal_zzzh.zzawL.zzcsL = com_google_android_gms_internal_zzzh.zzawN.zzuw();
        }
        com_google_android_gms_internal_zzzh.zzawF = zzbut.zzf(com_google_android_gms_internal_zzzh.zzawL);
    }

    public PendingResult<Status> zza(zzzh com_google_android_gms_internal_zzzh) {
        return doBestEffortWrite(new zza(com_google_android_gms_internal_zzzh, asGoogleApiClient()));
    }
}
