package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbeh extends zzazv {
    private static final zzbfy zzbJI = new zzbfy(Double.valueOf(0.0d));
    private static final zzbfy zzbJJ = new zzbfy(Double.valueOf(2.147483647E9d));

    private boolean zzg(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        return (com_google_android_gms_internal_zzbfw_ instanceof zzbfy) && !Double.isNaN(((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue());
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        double doubleValue;
        double doubleValue2;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr.length > 0 ? com_google_android_gms_internal_zzbfw_Arr[0] : zzbJI;
        zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr.length > 1 ? com_google_android_gms_internal_zzbfw_Arr[1] : zzbJJ;
        if (zzg(com_google_android_gms_internal_zzbfw) && zzg(com_google_android_gms_internal_zzbfw2) && zzazu.zzb(com_google_android_gms_internal_zzbfw, com_google_android_gms_internal_zzbfw2)) {
            doubleValue = ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw).zzRF()).doubleValue();
            doubleValue2 = ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw2).zzRF()).doubleValue();
        } else {
            doubleValue2 = 2.147483647E9d;
            doubleValue = 0.0d;
        }
        return new zzbfy(Double.valueOf((double) Math.round(((doubleValue2 - doubleValue) * Math.random()) + doubleValue)));
    }
}
