package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class zzbcm extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 1 || com_google_android_gms_internal_zzbfw_Arr.length == 2;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        Matcher matcher = Pattern.compile(com_google_android_gms_internal_zzbfw_Arr.length < 2 ? "" : zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1])).matcher((String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF());
        return matcher.find() ? new zzbfy(Double.valueOf((double) matcher.start())) : new zzbfy(Double.valueOf(-1.0d));
    }
}
