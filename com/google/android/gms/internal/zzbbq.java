package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbbq extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr[1];
        boolean z2 = (com_google_android_gms_internal_zzbfw instanceof zzbge) || !zzbgf.zzn(com_google_android_gms_internal_zzbfw);
        zzac.zzas(z2);
        zzac.zzas(!zzbgf.zzo(com_google_android_gms_internal_zzbfw));
        if (zzbgf.zzo(com_google_android_gms_internal_zzbfw2)) {
            z = false;
        }
        zzac.zzas(z);
        String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw2);
        double zzb;
        if (com_google_android_gms_internal_zzbfw instanceof zzbgb) {
            zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw;
            if ("length".equals(zzd)) {
                return new zzbfy(Double.valueOf((double) ((List) com_google_android_gms_internal_zzbgb.zzRF()).size()));
            }
            zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw2);
            if (zzb == Math.floor(zzb) && zzd.equals(Integer.toString((int) zzb))) {
                zzbfw<?> zzna = com_google_android_gms_internal_zzbgb.zzna((int) zzb);
                if (zzna != zzbga.zzbKV) {
                    return zzna;
                }
            }
        } else if (com_google_android_gms_internal_zzbfw instanceof zzbge) {
            zzbge com_google_android_gms_internal_zzbge = (zzbge) com_google_android_gms_internal_zzbfw;
            if ("length".equals(zzd)) {
                return new zzbfy(Double.valueOf((double) ((String) com_google_android_gms_internal_zzbge.zzRF()).length()));
            }
            zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw2);
            return (zzb == Math.floor(zzb) && zzd.equals(Integer.toString((int) zzb))) ? com_google_android_gms_internal_zzbge.zznc((int) zzb) : zzbga.zzbKV;
        }
        return com_google_android_gms_internal_zzbfw.zzig(zzd);
    }
}
