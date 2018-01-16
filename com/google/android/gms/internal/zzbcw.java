package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public class zzbcw extends zzazv {
    static String decode(String str, String str2) throws UnsupportedEncodingException {
        Charset forName = Charset.forName("UTF-8");
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt != '%') {
                stringBuilder.append((char) charAt);
                i++;
            } else {
                byte zzD = zzD(str, i);
                int i2 = i + 3;
                if ((zzD & 128) != 0) {
                    int i3 = 0;
                    while (((zzD << i3) & 128) != 0) {
                        i3++;
                    }
                    if (i3 < 2 || i3 > 4) {
                        throw new UnsupportedEncodingException();
                    }
                    byte[] bArr = new byte[i3];
                    bArr[0] = zzD;
                    int i4 = 1;
                    while (i4 < i3) {
                        byte zzD2 = zzD(str, i2);
                        int i5 = i2 + 3;
                        if ((zzD2 & 192) != 128) {
                            throw new UnsupportedEncodingException();
                        }
                        bArr[i4] = zzD2;
                        i4++;
                        i2 = i5;
                    }
                    CharSequence decode = forName.decode(ByteBuffer.wrap(bArr));
                    if (decode.length() != 1 || str2.indexOf(decode.charAt(0)) == -1) {
                        stringBuilder.append(decode);
                        i = i2;
                    } else {
                        stringBuilder.append(str.substring(i, i2));
                        i = i2;
                    }
                } else if (str2.indexOf(zzD) == -1) {
                    stringBuilder.append((char) zzD);
                    i = i2;
                } else {
                    stringBuilder.append(str.substring(i2 - 3, i2));
                    i = i2;
                }
            }
        }
        return stringBuilder.toString();
    }

    private static byte zzD(String str, int i) throws UnsupportedEncodingException {
        if (i + 3 > str.length() || str.charAt(i) != '%') {
            throw new UnsupportedEncodingException();
        }
        String substring = str.substring(i + 1, i + 3);
        if (substring.charAt(0) == '+' || substring.charAt(0) == '-') {
            throw new UnsupportedEncodingException();
        }
        try {
            return (byte) Integer.parseInt(substring, 16);
        } catch (NumberFormatException e) {
            throw new UnsupportedEncodingException();
        }
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        try {
            return new zzbge(decode(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr.length > 0 ? (zzbfw) zzac.zzw(com_google_android_gms_internal_zzbfw_Arr[0]) : zzbga.zzbKV), "#;/?:@&=+$,"));
        } catch (UnsupportedEncodingException e) {
            return zzbga.zzbKV;
        }
    }
}
