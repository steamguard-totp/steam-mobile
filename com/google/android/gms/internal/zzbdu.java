package com.google.android.gms.internal;

import android.util.Base64;
import com.google.android.gms.common.internal.zzac;

public class zzbdu extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        String zzq;
        String str;
        int i = 1;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[0]);
        Object obj = "text";
        if (com_google_android_gms_internal_zzbfw_Arr.length > 1) {
            obj = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]);
        }
        Object obj2 = "base16";
        if (com_google_android_gms_internal_zzbfw_Arr.length > 2) {
            obj2 = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[2]);
        }
        if (com_google_android_gms_internal_zzbfw_Arr.length <= 3 || !zzazu.zza(com_google_android_gms_internal_zzbfw_Arr[3])) {
            i = 0;
        }
        i = i != 0 ? 3 : 2;
        try {
            byte[] bytes;
            if ("text".equals(obj)) {
                bytes = zzd.getBytes();
            } else if ("base16".equals(obj)) {
                bytes = zzayf.zzgU(zzd);
            } else if ("base64".equals(obj)) {
                bytes = Base64.decode(zzd, i);
            } else if ("base64url".equals(obj)) {
                bytes = Base64.decode(zzd, i | 8);
            } else {
                String str2 = "Encode: unknown input format: ";
                String valueOf = String.valueOf(obj);
                throw new UnsupportedOperationException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            }
            if ("base16".equals(obj2)) {
                zzq = zzayf.zzq(bytes);
            } else if ("base64".equals(obj2)) {
                zzq = Base64.encodeToString(bytes, i);
            } else if ("base64url".equals(obj2)) {
                zzq = Base64.encodeToString(bytes, i | 8);
            } else {
                str = "Encode: unknown output format: ";
                zzq = String.valueOf(obj2);
                throw new RuntimeException(zzq.length() != 0 ? str.concat(zzq) : new String(str));
            }
            return new zzbge(zzq);
        } catch (IllegalArgumentException e) {
            str = "Encode: invalid input:";
            zzq = String.valueOf(obj);
            throw new RuntimeException(zzq.length() != 0 ? str.concat(zzq) : new String(str));
        }
    }
}
