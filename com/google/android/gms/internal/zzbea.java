package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class zzbea extends zzazv {
    private String zza(String str, int i, Set<Character> set) {
        switch (i) {
            case 1:
                try {
                    return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
                } catch (UnsupportedEncodingException e) {
                    return str;
                }
            case 2:
                String replace = str.replace("\\", "\\\\");
                String str2 = replace;
                for (Character ch : set) {
                    CharSequence ch2 = ch.toString();
                    String str3 = "\\";
                    replace = String.valueOf(ch2);
                    str2 = str2.replace(ch2, replace.length() != 0 ? str3.concat(replace) : new String(str3));
                }
                return str2;
            default:
                return str;
        }
    }

    private void zza(StringBuilder stringBuilder, String str, int i, Set<Character> set) {
        stringBuilder.append(zza(str, i, set));
    }

    private void zza(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        int i = 2;
        int i2 = 1;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr.length > 1 ? com_google_android_gms_internal_zzbfw_Arr[1] : zzbga.zzbKV;
        String str = "";
        if (com_google_android_gms_internal_zzbfw_Arr.length > 2) {
            str = com_google_android_gms_internal_zzbfw_Arr[2] == zzbga.zzbKV ? "" : zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[2]);
        }
        String str2 = "=";
        if (com_google_android_gms_internal_zzbfw_Arr.length > 3) {
            str2 = com_google_android_gms_internal_zzbfw_Arr[3] == zzbga.zzbKV ? "=" : zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[3]);
        }
        Set set = null;
        if (com_google_android_gms_internal_zzbfw2 != zzbga.zzbKV) {
            zzac.zzas(com_google_android_gms_internal_zzbfw2 instanceof zzbge);
            if ("url".equals(com_google_android_gms_internal_zzbfw2.zzRF())) {
                i = 1;
            } else if (!"backslash".equals(com_google_android_gms_internal_zzbfw2.zzRF())) {
                return new zzbge("");
            } else {
                Set hashSet = new HashSet();
                zza(hashSet, str);
                zza(hashSet, str2);
                hashSet.remove(Character.valueOf('\\'));
                set = hashSet;
            }
        } else {
            i = 0;
        }
        StringBuilder stringBuilder = new StringBuilder();
        if (com_google_android_gms_internal_zzbfw instanceof zzbgb) {
            for (zzbfw com_google_android_gms_internal_zzbfw3 : (List) ((zzbgb) com_google_android_gms_internal_zzbfw3).zzRF()) {
                if (i2 == 0) {
                    stringBuilder.append(str);
                }
                zza(stringBuilder, zzazu.zzd(com_google_android_gms_internal_zzbfw3), i, set);
                i2 = 0;
            }
        } else if (com_google_android_gms_internal_zzbfw3 instanceof zzbgc) {
            Map map = (Map) ((zzbgc) com_google_android_gms_internal_zzbfw3).zzRF();
            int i3 = 1;
            for (String str3 : map.keySet()) {
                if (i3 == 0) {
                    stringBuilder.append(str);
                }
                String zzd = zzazu.zzd((zzbfw) map.get(str3));
                zza(stringBuilder, str3, i, set);
                stringBuilder.append(str2);
                zza(stringBuilder, zzd, i, set);
                i3 = 0;
            }
        } else {
            zza(stringBuilder, zzazu.zzd(com_google_android_gms_internal_zzbfw3), i, set);
        }
        return new zzbge(stringBuilder.toString());
    }
}
