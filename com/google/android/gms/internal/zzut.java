package com.google.android.gms.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;

public class zzut {
    public static String zzcs(String str) {
        boolean z = false;
        zzac.zzb(!TextUtils.isEmpty(str), (Object) "account type cannot be empty");
        String scheme = Uri.parse(str).getScheme();
        if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
            z = true;
        }
        zzac.zzb(z, (Object) "Account type must be an http or https URI");
        return str;
    }
}
