package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzaj.zza;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class zzdq {
    private static zzce<zza> zza(zzce<zza> com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza) {
        try {
            return new zzce(zzdm.zzR(zzhG(zzdm.zze((zza) com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza.getObject()))), com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza.zzPu());
        } catch (Throwable e) {
            zzbo.zzb("Escape URI: unsupported encoding", e);
            return com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza;
        }
    }

    private static zzce<zza> zza(zzce<zza> com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza, int i) {
        if (zzl((zza) com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza.getObject())) {
            switch (i) {
                case 12:
                    return zza(com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza);
                default:
                    zzbo.e("Unsupported Value Escaping: " + i);
                    return com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza;
            }
        }
        zzbo.e("Escaping can only be applied to strings.");
        return com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza;
    }

    static zzce<zza> zza(zzce<zza> com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza, int... iArr) {
        zzce zza;
        for (int zza2 : iArr) {
            zza = zza(zza, zza2);
        }
        return zza;
    }

    static String zzhG(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
    }

    private static boolean zzl(zza com_google_android_gms_internal_zzaj_zza) {
        return zzdm.zzj(com_google_android_gms_internal_zzaj_zza) instanceof String;
    }
}
