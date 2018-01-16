package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzbab extends zzazv {
    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 1 || com_google_android_gms_internal_zzbfw_Arr.length == 2;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        List<zzbfw> list = (List) ((zzbgb) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr.length < 2 ? zzbga.zzbKV : com_google_android_gms_internal_zzbfw_Arr[1];
        CharSequence zzd = com_google_android_gms_internal_zzbfw == zzbga.zzbKV ? "," : zzazu.zzd(com_google_android_gms_internal_zzbfw);
        Iterable arrayList = new ArrayList();
        for (zzbfw com_google_android_gms_internal_zzbfw2 : list) {
            if (com_google_android_gms_internal_zzbfw2 == zzbga.zzbKU || com_google_android_gms_internal_zzbfw2 == zzbga.zzbKV) {
                arrayList.add("");
            } else {
                arrayList.add(zzazu.zzd(com_google_android_gms_internal_zzbfw2));
            }
        }
        return new zzbge(TextUtils.join(zzd, arrayList));
    }
}
