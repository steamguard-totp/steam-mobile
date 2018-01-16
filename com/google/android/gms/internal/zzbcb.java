package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbcb extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 2);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr[1];
        if ((!(com_google_android_gms_internal_zzbfw instanceof zzbga) || com_google_android_gms_internal_zzbfw == zzbga.zzbKV || com_google_android_gms_internal_zzbfw == zzbga.zzbKU) && (!(com_google_android_gms_internal_zzbfw2 instanceof zzbga) || com_google_android_gms_internal_zzbfw2 == zzbga.zzbKV || com_google_android_gms_internal_zzbfw2 == zzbga.zzbKU)) {
            if ((com_google_android_gms_internal_zzbfw instanceof zzbgc) || (com_google_android_gms_internal_zzbfw instanceof zzbgb) || (com_google_android_gms_internal_zzbfw instanceof zzbfz)) {
                com_google_android_gms_internal_zzbfw = new zzbge(zzazu.zzd(com_google_android_gms_internal_zzbfw));
            }
            zzbfw com_google_android_gms_internal_zzbge = ((com_google_android_gms_internal_zzbfw2 instanceof zzbgc) || (com_google_android_gms_internal_zzbfw2 instanceof zzbgb) || (com_google_android_gms_internal_zzbfw2 instanceof zzbfz)) ? new zzbge(zzazu.zzd(com_google_android_gms_internal_zzbfw2)) : com_google_android_gms_internal_zzbfw2;
            if (!(com_google_android_gms_internal_zzbfw instanceof zzbge) && !(com_google_android_gms_internal_zzbge instanceof zzbge)) {
                return new zzbfy(Double.valueOf(zzazu.zza(com_google_android_gms_internal_zzbfw, com_google_android_gms_internal_zzbge)));
            }
            String valueOf = String.valueOf(zzazu.zzd(com_google_android_gms_internal_zzbfw));
            String valueOf2 = String.valueOf(zzazu.zzd(com_google_android_gms_internal_zzbge));
            return new zzbge(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
        throw new IllegalArgumentException("Illegal InternalType passed to Add.");
    }
}
