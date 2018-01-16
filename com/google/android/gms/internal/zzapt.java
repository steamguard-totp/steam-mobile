package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzf.zzb;
import com.google.android.gms.common.internal.zzf.zzc;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class zzapt {

    static class zza implements zzb, zzc {
        private final String packageName;
        protected zzapu zzbfB;
        private final String zzbfC;
        private final LinkedBlockingQueue<com.google.android.gms.internal.zzaf.zza> zzbfD;
        private final HandlerThread zzbfE = new HandlerThread("GassClient");

        public zza(Context context, String str, String str2) {
            this.packageName = str;
            this.zzbfC = str2;
            this.zzbfE.start();
            this.zzbfB = new zzapu(context, this.zzbfE.getLooper(), this, this);
            this.zzbfD = new LinkedBlockingQueue();
            connect();
        }

        protected void connect() {
            this.zzbfB.zzwT();
        }

        public void onConnected(Bundle bundle) {
            zzapz zzFW = zzFW();
            if (zzFW != null) {
                try {
                    this.zzbfD.put(zzFW.zza(new zzapv(this.packageName, this.zzbfC)).zzFZ());
                } catch (Throwable th) {
                } finally {
                    zziY();
                    this.zzbfE.quit();
                }
            }
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            try {
                this.zzbfD.put(new com.google.android.gms.internal.zzaf.zza());
            } catch (InterruptedException e) {
            }
        }

        public void onConnectionSuspended(int i) {
            try {
                this.zzbfD.put(new com.google.android.gms.internal.zzaf.zza());
            } catch (InterruptedException e) {
            }
        }

        protected zzapz zzFW() {
            try {
                return this.zzbfB.zzFX();
            } catch (IllegalStateException e) {
                return null;
            } catch (DeadObjectException e2) {
                return null;
            }
        }

        public com.google.android.gms.internal.zzaf.zza zzaS() {
            return zzjo(2000);
        }

        public void zziY() {
            if (this.zzbfB == null) {
                return;
            }
            if (this.zzbfB.isConnected() || this.zzbfB.isConnecting()) {
                this.zzbfB.disconnect();
            }
        }

        public com.google.android.gms.internal.zzaf.zza zzjo(int i) {
            com.google.android.gms.internal.zzaf.zza com_google_android_gms_internal_zzaf_zza;
            try {
                com_google_android_gms_internal_zzaf_zza = (com.google.android.gms.internal.zzaf.zza) this.zzbfD.poll((long) i, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                com_google_android_gms_internal_zzaf_zza = null;
            }
            return com_google_android_gms_internal_zzaf_zza == null ? new com.google.android.gms.internal.zzaf.zza() : com_google_android_gms_internal_zzaf_zza;
        }
    }

    public static com.google.android.gms.internal.zzaf.zza zzi(Context context, String str, String str2) {
        return new zza(context, str, str2).zzaS();
    }
}
