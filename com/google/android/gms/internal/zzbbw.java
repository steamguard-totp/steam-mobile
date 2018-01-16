package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbbw extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 3);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr[1];
        zzbfw<?> com_google_android_gms_internal_zzbfw_ = com_google_android_gms_internal_zzbfw_Arr[2];
        zzac.zzas(com_google_android_gms_internal_zzbfw != zzbga.zzbKU);
        zzac.zzas(com_google_android_gms_internal_zzbfw != zzbga.zzbKV);
        zzac.zzas(!zzbgf.zzo(com_google_android_gms_internal_zzbfw));
        zzac.zzas(!zzbgf.zzo(com_google_android_gms_internal_zzbfw2));
        zzac.zzas(!zzbgf.zzo(com_google_android_gms_internal_zzbfw_));
        if (zzbgf.zzn(com_google_android_gms_internal_zzbfw)) {
            return com_google_android_gms_internal_zzbfw_;
        }
        String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw2);
        if (com_google_android_gms_internal_zzbfw instanceof zzbgc) {
            zzbgc com_google_android_gms_internal_zzbgc = (zzbgc) com_google_android_gms_internal_zzbfw;
            if (!com_google_android_gms_internal_zzbgc.zzRQ()) {
                com_google_android_gms_internal_zzbgc.zzc(zzd, com_google_android_gms_internal_zzbfw_);
            }
            return com_google_android_gms_internal_zzbfw_;
        }
        if (com_google_android_gms_internal_zzbfw instanceof zzbgb) {
            zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw;
            if ("length".equals(zzd)) {
                double zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw_);
                if (Double.isInfinite(zzb) || zzb != Math.floor(zzb)) {
                    z = false;
                }
                zzac.zzas(z);
                com_google_android_gms_internal_zzbgb.setSize((int) zzb);
                return com_google_android_gms_internal_zzbfw_;
            }
            double zzb2 = zzazu.zzb(com_google_android_gms_internal_zzbfw2);
            if (!Double.isInfinite(zzb2) && zzb2 >= 0.0d && zzd.equals(Integer.toString((int) zzb2))) {
                com_google_android_gms_internal_zzbgb.zza((int) zzb2, com_google_android_gms_internal_zzbfw_);
                return com_google_android_gms_internal_zzbfw_;
            }
        }
        com_google_android_gms_internal_zzbfw.zzc(zzd, com_google_android_gms_internal_zzbfw_);
        return com_google_android_gms_internal_zzbfw_;
    }
}
