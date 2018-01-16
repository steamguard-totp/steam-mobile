package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

public class zzbf {
    static Map<String, String> zzbEu = new HashMap();

    public static void zzI(Context context, String str) {
        String zzag = zzag(str, "conv");
        if (zzag != null && zzag.length() > 0) {
            zzbEu.put(zzag, str);
            zzdd.zzc(context, "gtm_click_referrers", zzag, str);
        }
    }

    public static String zzag(String str, String str2) {
        if (str2 == null) {
            return str.length() > 0 ? str : null;
        } else {
            String str3 = "http://hostname/?";
            String valueOf = String.valueOf(str);
            return Uri.parse(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3)).getQueryParameter(str2);
        }
    }
}
