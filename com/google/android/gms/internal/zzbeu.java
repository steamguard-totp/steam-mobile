package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class zzbeu extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 2 || com_google_android_gms_internal_zzbfw_Arr.length == 3;
        zzac.zzas(z);
        try {
            return new zzbfx(Boolean.valueOf(Pattern.compile(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]), com_google_android_gms_internal_zzbfw_Arr.length < 3 ? false : "true".equalsIgnoreCase(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[2])) ? 66 : 64).matcher(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[0])).find()));
        } catch (PatternSyntaxException e) {
            return new zzbfx(Boolean.valueOf(false));
        }
    }
}
