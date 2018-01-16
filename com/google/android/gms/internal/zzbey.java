package com.google.android.gms.internal;

import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.common.internal.zzac;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class zzbey extends zzazv {
    private final zzayp zzbJK;

    public zzbey(zzayp com_google_android_gms_internal_zzayp) {
        this.zzbJK = com_google_android_gms_internal_zzayp;
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = false;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
        zzac.zzas(!(com_google_android_gms_internal_zzbfw instanceof zzbga));
        zzbga com_google_android_gms_internal_zzbga = com_google_android_gms_internal_zzbfw_Arr.length > 1 ? com_google_android_gms_internal_zzbfw_Arr[1] : zzbga.zzbKV;
        boolean z2 = com_google_android_gms_internal_zzbga == zzbga.zzbKV || (com_google_android_gms_internal_zzbga instanceof zzbgb);
        zzac.zzas(z2);
        zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr.length > 2 ? com_google_android_gms_internal_zzbfw_Arr[2] : zzbga.zzbKV;
        if (com_google_android_gms_internal_zzbfw2 == zzbga.zzbKV || !(com_google_android_gms_internal_zzbfw2 instanceof zzbga)) {
            z = true;
        }
        zzac.zzas(z);
        Builder buildUpon = Uri.parse(zzazu.zzd(com_google_android_gms_internal_zzbfw)).buildUpon();
        if (com_google_android_gms_internal_zzbga != zzbga.zzbKV) {
            for (zzbfw com_google_android_gms_internal_zzbfw3 : (List) ((zzbgb) com_google_android_gms_internal_zzbga).zzRF()) {
                zzac.zzas(com_google_android_gms_internal_zzbfw3 instanceof zzbgc);
                for (Entry entry : ((Map) ((zzbgc) com_google_android_gms_internal_zzbfw3).zzRF()).entrySet()) {
                    buildUpon.appendQueryParameter(((String) entry.getKey()).toString(), zzazu.zzd(zzbgf.zza(com_google_android_gms_internal_zzazg, (zzbfw) entry.getValue())));
                }
            }
        }
        String uri = buildUpon.build().toString();
        String str;
        if (com_google_android_gms_internal_zzbfw2 == zzbga.zzbKV) {
            this.zzbJK.zzhi(uri);
            str = "SendPixel: url = ";
            uri = String.valueOf(uri);
            zzayx.v(uri.length() != 0 ? str.concat(uri) : new String(str));
        } else {
            str = zzazu.zzd(com_google_android_gms_internal_zzbfw2);
            this.zzbJK.zzah(uri, str);
            zzayx.v(new StringBuilder((String.valueOf(uri).length() + 30) + String.valueOf(str).length()).append("SendPixel: url = ").append(uri).append(", uniqueId = ").append(str).toString());
        }
        return zzbga.zzbKV;
    }
}
