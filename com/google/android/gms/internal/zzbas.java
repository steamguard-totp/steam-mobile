package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbas extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        boolean z2 = false;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr[1];
        if ((com_google_android_gms_internal_zzbfw instanceof zzbgc) || (com_google_android_gms_internal_zzbfw instanceof zzbgb) || (com_google_android_gms_internal_zzbfw instanceof zzbfz)) {
            com_google_android_gms_internal_zzbfw = new zzbge(zzazu.zzd(com_google_android_gms_internal_zzbfw));
        }
        zzbfw com_google_android_gms_internal_zzbge = ((com_google_android_gms_internal_zzbfw2 instanceof zzbgc) || (com_google_android_gms_internal_zzbfw2 instanceof zzbgb) || (com_google_android_gms_internal_zzbfw2 instanceof zzbfz)) ? new zzbge(zzazu.zzd(com_google_android_gms_internal_zzbfw2)) : com_google_android_gms_internal_zzbfw2;
        if (((com_google_android_gms_internal_zzbfw instanceof zzbge) && (com_google_android_gms_internal_zzbge instanceof zzbge)) || !(Double.isNaN(zzazu.zzb(com_google_android_gms_internal_zzbfw)) || Double.isNaN(zzazu.zzb(com_google_android_gms_internal_zzbge)))) {
            if (zzazu.zzb(com_google_android_gms_internal_zzbfw, com_google_android_gms_internal_zzbge)) {
                z = false;
            }
            z2 = z;
        }
        return new zzbfx(Boolean.valueOf(z2));
    }
}
