package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

public class zzayw {
    private static String zzbEt;
    static Map<String, String> zzbEu = new HashMap();

    public static String zzH(Context context, String str) {
        if (zzbEt == null) {
            synchronized (zzayw.class) {
                if (zzbEt == null) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_install_referrer", 0);
                    if (sharedPreferences != null) {
                        zzbEt = sharedPreferences.getString("referrer", "");
                    } else {
                        zzbEt = "";
                    }
                }
            }
        }
        return zzag(zzbEt, str);
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
