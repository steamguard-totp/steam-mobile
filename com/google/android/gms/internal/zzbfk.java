package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class zzbfk {
    private String zzbDw = "https://www.google-analytics.com";

    private String zzhG(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
        } catch (UnsupportedEncodingException e) {
            String str2 = "Cannot encode the string: ";
            String valueOf = String.valueOf(str);
            zzayx.e(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            return "";
        }
    }

    public String zzb(zzbfa com_google_android_gms_internal_zzbfa) {
        String str = this.zzbDw;
        String valueOf = String.valueOf("/gtm/android?");
        String zzRe = com_google_android_gms_internal_zzbfa.zzRd() ? com_google_android_gms_internal_zzbfa.zzRe() : zzc(com_google_android_gms_internal_zzbfa);
        return new StringBuilder(((String.valueOf(str).length() + 0) + String.valueOf(valueOf).length()) + String.valueOf(zzRe).length()).append(str).append(valueOf).append(zzRe).toString();
    }

    String zzc(zzbfa com_google_android_gms_internal_zzbfa) {
        if (com_google_android_gms_internal_zzbfa == null) {
            return "";
        }
        String trim = !com_google_android_gms_internal_zzbfa.zzRf().trim().equals("") ? com_google_android_gms_internal_zzbfa.zzRf().trim() : "-1";
        StringBuilder stringBuilder = new StringBuilder();
        if (com_google_android_gms_internal_zzbfa.zzRb() != null) {
            stringBuilder.append(com_google_android_gms_internal_zzbfa.zzRb());
        } else {
            stringBuilder.append("id");
        }
        stringBuilder.append("=").append(zzhG(com_google_android_gms_internal_zzbfa.getContainerId())).append("&").append("pv").append("=").append(zzhG(trim)).append("&").append("rv=5.0");
        if (com_google_android_gms_internal_zzbfa.zzRd()) {
            stringBuilder.append("&gtm_debug=x");
        }
        return stringBuilder.toString();
    }
}
