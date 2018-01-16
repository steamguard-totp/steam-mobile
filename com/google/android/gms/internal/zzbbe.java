package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public class zzbbe extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length == 1);
        zzac.zzas(!(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgd));
        if (zzbgf.zzo(com_google_android_gms_internal_zzbfw_Arr[0])) {
            z = false;
        }
        zzac.zzas(z);
        zzbfw<?> com_google_android_gms_internal_zzbfw_ = com_google_android_gms_internal_zzbfw_Arr[0];
        String str = "object";
        if (com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV) {
            str = "undefined";
        } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbfx) {
            str = "boolean";
        } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbfy) {
            str = "number";
        } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbge) {
            str = "string";
        } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbfz) {
            str = "function";
        }
        return new zzbge(str);
    }
}
