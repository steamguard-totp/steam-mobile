package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class zzbdv extends zzazv {
    private static final Pattern zzbJG = Pattern.compile("(.+)/(.+)/(.+)");

    private static String zza(Cipher cipher, String str, SecretKeySpec secretKeySpec, IvParameterSpec ivParameterSpec) {
        if (str == null || str.length() == 0) {
            throw new RuntimeException("Encrypt: empty input string");
        }
        try {
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return zzayf.zzq(cipher.doFinal(str.getBytes()));
        } catch (Exception e) {
            String str2 = "Encrypt: ";
            String valueOf = String.valueOf(e.getMessage());
            throw new RuntimeException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        String valueOf;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 3);
        String zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[0]);
        String zzd2 = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]);
        String zzd3 = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[2]);
        Object zzd4 = com_google_android_gms_internal_zzbfw_Arr.length < 4 ? "AES/CBC/NoPadding" : zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[3]);
        Matcher matcher = zzbJG.matcher(zzd4);
        if (matcher.matches()) {
            try {
                return new zzbge(zza(Cipher.getInstance(zzd4), zzd, new SecretKeySpec(zzd2.getBytes(), matcher.group(1)), new IvParameterSpec(zzd3.getBytes())));
            } catch (NoSuchAlgorithmException e) {
                zzd = "Encrypt: invalid transformation:";
                valueOf = String.valueOf(zzd4);
                throw new RuntimeException(valueOf.length() == 0 ? zzd.concat(valueOf) : new String(zzd));
            } catch (NoSuchPaddingException e2) {
                zzd = "Encrypt: invalid transformation:";
                valueOf = String.valueOf(zzd4);
                if (valueOf.length() == 0) {
                }
                throw new RuntimeException(valueOf.length() == 0 ? zzd.concat(valueOf) : new String(zzd));
            }
        }
        zzd = "Encrypt: invalid transformation:";
        valueOf = String.valueOf(zzd4);
        throw new RuntimeException(valueOf.length() != 0 ? zzd.concat(valueOf) : new String(zzd));
    }
}
