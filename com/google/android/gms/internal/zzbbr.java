package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.List;

public class zzbbr extends zzazv {
    public static final zzbbr zzbJy = new zzbbr();

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr[1];
        zzac.zzas(!zzbgf.zzo(com_google_android_gms_internal_zzbfw));
        zzac.zzas(!zzbgf.zzo(com_google_android_gms_internal_zzbfw2));
        String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw2);
        double zzb;
        if (com_google_android_gms_internal_zzbfw instanceof zzbgb) {
            if ("length".equals(zzd)) {
                return new zzbfx(Boolean.valueOf(true));
            }
            zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw2);
            if (zzb == Math.floor(zzb) && zzd.equals(Integer.toString((int) zzb))) {
                int i = (int) zzb;
                if (i >= 0 && i < ((List) ((zzbgb) com_google_android_gms_internal_zzbfw).zzRF()).size()) {
                    return new zzbfx(Boolean.valueOf(true));
                }
            }
        } else if (com_google_android_gms_internal_zzbfw instanceof zzbge) {
            if ("length".equals(zzd)) {
                return new zzbfx(Boolean.valueOf(true));
            }
            zzb = zzazu.zzb(com_google_android_gms_internal_zzbfw2);
            if (zzb == Math.floor(zzb) && zzd.equals(Integer.toString((int) zzb))) {
                int i2 = (int) zzb;
                if (i2 >= 0 && i2 < ((String) ((zzbge) com_google_android_gms_internal_zzbfw).zzRF()).length()) {
                    return new zzbfx(Boolean.valueOf(true));
                }
            }
            return new zzbfx(Boolean.valueOf(false));
        }
        return new zzbfx(Boolean.valueOf(com_google_android_gms_internal_zzbfw.zzif(zzd)));
    }
}
