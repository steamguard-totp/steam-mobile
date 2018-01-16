package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class zzbei extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 2);
        if (com_google_android_gms_internal_zzbfw_Arr[0] == zzbga.zzbKV || com_google_android_gms_internal_zzbfw_Arr[1] == zzbga.zzbKV) {
            return zzbga.zzbKV;
        }
        int i;
        CharSequence zzd = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[0]);
        String zzd2 = zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]);
        int i2 = 64;
        if (com_google_android_gms_internal_zzbfw_Arr.length > 2 && com_google_android_gms_internal_zzbfw_Arr[2] != zzbga.zzbKV && zzazu.zza(com_google_android_gms_internal_zzbfw_Arr[2])) {
            i2 = 66;
        }
        if (com_google_android_gms_internal_zzbfw_Arr.length <= 3 || com_google_android_gms_internal_zzbfw_Arr[3] == zzbga.zzbKV) {
            i = 1;
        } else if (!(com_google_android_gms_internal_zzbfw_Arr[3] instanceof zzbfy)) {
            return zzbga.zzbKV;
        } else {
            double zzc = zzazu.zzc(com_google_android_gms_internal_zzbfw_Arr[3]);
            if (Double.isInfinite(zzc) || zzc < 0.0d) {
                return zzbga.zzbKV;
            }
            i = (int) zzc;
        }
        String str = null;
        try {
            Matcher matcher = Pattern.compile(zzd2, i2).matcher(zzd);
            if (matcher.find() && matcher.groupCount() >= i) {
                str = matcher.group(i);
            }
            return str == null ? zzbga.zzbKV : new zzbge(str);
        } catch (PatternSyntaxException e) {
            return zzbga.zzbKV;
        }
    }
}
