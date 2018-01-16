package com.google.android.gms.internal;

import android.content.Context;

@zzmb
public class zzmc {

    public interface zza {
        void zza(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza);
    }

    public zzpd zza(Context context, com.google.android.gms.internal.zzmh.zza com_google_android_gms_internal_zzmh_zza, zzav com_google_android_gms_internal_zzav, zza com_google_android_gms_internal_zzmc_zza) {
        zzpd com_google_android_gms_internal_zzmu = com_google_android_gms_internal_zzmh_zza.zzRd.extras.getBundle("sdk_less_server_data") != null ? new zzmu(context, com_google_android_gms_internal_zzmh_zza, com_google_android_gms_internal_zzmc_zza) : new zzmd(context, com_google_android_gms_internal_zzmh_zza, com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzmc_zza);
        com_google_android_gms_internal_zzmu.zziw();
        return com_google_android_gms_internal_zzmu;
    }
}
