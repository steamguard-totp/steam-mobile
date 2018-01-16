package com.google.android.gms.internal;

import android.os.RemoteException;

public class zzfe extends com.google.android.gms.internal.zzen.zza {
    private zzel zzti;

    private class zza extends com.google.android.gms.internal.zzem.zza {
        final /* synthetic */ zzfe zzAm;

        private zza(zzfe com_google_android_gms_internal_zzfe) {
            this.zzAm = com_google_android_gms_internal_zzfe;
        }

        public String getMediationAdapterClassName() throws RemoteException {
            return null;
        }

        public boolean isLoading() throws RemoteException {
            return false;
        }

        public void zzf(zzdy com_google_android_gms_internal_zzdy) throws RemoteException {
            zzpy.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
            zzpx.zzXU.post(new Runnable(this) {
                final /* synthetic */ zza zzAn;

                {
                    this.zzAn = r1;
                }

                public void run() {
                    if (this.zzAn.zzAm.zzti != null) {
                        try {
                            this.zzAn.zzAm.zzti.onAdFailedToLoad(1);
                        } catch (Throwable e) {
                            zzpy.zzc("Could not notify onAdFailedToLoad event.", e);
                        }
                    }
                }
            });
        }
    }

    public void zza(zzgw com_google_android_gms_internal_zzgw) throws RemoteException {
    }

    public void zza(zzhj com_google_android_gms_internal_zzhj) throws RemoteException {
    }

    public void zza(zzhk com_google_android_gms_internal_zzhk) throws RemoteException {
    }

    public void zza(String str, zzhm com_google_android_gms_internal_zzhm, zzhl com_google_android_gms_internal_zzhl) throws RemoteException {
    }

    public void zzb(zzel com_google_android_gms_internal_zzel) throws RemoteException {
        this.zzti = com_google_android_gms_internal_zzel;
    }

    public void zzb(zzet com_google_android_gms_internal_zzet) throws RemoteException {
    }

    public zzem zzci() throws RemoteException {
        return new zza();
    }
}
