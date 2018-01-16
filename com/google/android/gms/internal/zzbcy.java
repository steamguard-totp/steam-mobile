package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class zzbcy extends zzazv {
    static String encode(String str, String str2) throws UnsupportedEncodingException {
        StringBuilder stringBuilder = new StringBuilder();
        Charset forName = Charset.forName("UTF-8");
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (str2.indexOf(charAt) != -1) {
                stringBuilder.append((char) charAt);
                i++;
            } else {
                int i2 = 1;
                if (Character.isHighSurrogate((char) charAt)) {
                    if (i + 1 >= str.length()) {
                        throw new UnsupportedEncodingException();
                    } else if (Character.isLowSurrogate(str.charAt(i + 1))) {
                        i2 = 2;
                    } else {
                        throw new UnsupportedEncodingException();
                    }
                }
                byte[] bytes = str.substring(i, i + i2).getBytes(forName);
                for (int i3 = 0; i3 < bytes.length; i3++) {
                    stringBuilder.append("%");
                    stringBuilder.append(Character.toUpperCase(Character.forDigit((bytes[i3] >> 4) & 15, 16)));
                    stringBuilder.append(Character.toUpperCase(Character.forDigit(bytes[i3] & 15, 16)));
                }
                i += i2;
            }
        }
        return stringBuilder.toString().replaceAll(" ", "%20");
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        try {
            return new zzbge(encode(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr.length > 0 ? (zzbfw) zzac.zzw(com_google_android_gms_internal_zzbfw_Arr[0]) : zzbga.zzbKV), "#;/?:@&=+$,abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_.!~*'()0123456789"));
        } catch (UnsupportedEncodingException e) {
            return zzbga.zzbKV;
        }
    }
}
