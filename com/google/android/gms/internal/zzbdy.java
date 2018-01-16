package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class zzbdy extends zzazv {
    private byte[] zzf(String str, byte[] bArr) throws NoSuchAlgorithmException {
        MessageDigest instance = MessageDigest.getInstance(str);
        instance.update(bArr);
        return instance.digest();
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        if (com_google_android_gms_internal_zzbfw_Arr[0] == zzbga.zzbKV) {
            return zzbga.zzbKV;
        }
        byte[] bytes;
        String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[0]);
        String str = "MD5";
        if (com_google_android_gms_internal_zzbfw_Arr.length > 1) {
            str = com_google_android_gms_internal_zzbfw_Arr[1] == zzbga.zzbKV ? "MD5" : zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]);
        }
        Object obj = "text";
        if (com_google_android_gms_internal_zzbfw_Arr.length > 2) {
            obj = com_google_android_gms_internal_zzbfw_Arr[2] == zzbga.zzbKV ? "text" : zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[2]);
        }
        if ("text".equals(obj)) {
            bytes = zzd.getBytes();
        } else if ("base16".equals(obj)) {
            bytes = zzayf.zzgU(zzd);
        } else {
            String str2 = "Hash: Unknown input format: ";
            str = String.valueOf(obj);
            throw new RuntimeException(str.length() != 0 ? str2.concat(str) : new String(str2));
        }
        try {
            return new zzbge(zzayf.zzq(zzf(str, bytes)));
        } catch (Throwable e) {
            str2 = "Hash: Unknown algorithm: ";
            str = String.valueOf(str);
            throw new RuntimeException(str.length() != 0 ? str2.concat(str) : new String(str2), e);
        }
    }
}
