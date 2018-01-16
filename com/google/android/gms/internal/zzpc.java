package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import java.math.BigInteger;
import java.util.Locale;

@zzmb
public final class zzpc {
    private static String zzWw;
    private static final Object zztU = new Object();

    public static String zza(Context context, String str, String str2) {
        String str3;
        synchronized (zztU) {
            if (zzWw == null && !TextUtils.isEmpty(str)) {
                zzb(context, str, str2);
            }
            str3 = zzWw;
        }
        return str3;
    }

    private static void zzb(Context context, String str, String str2) {
        try {
            ClassLoader classLoader = context.createPackageContext(str2, 3).getClassLoader();
            Class cls = Class.forName("com.google.ads.mediation.MediationAdapter", false, classLoader);
            BigInteger bigInteger = new BigInteger(new byte[1]);
            String[] split = str.split(",");
            BigInteger bigInteger2 = bigInteger;
            for (int i = 0; i < split.length; i++) {
                if (zzv.zzcJ().zza(classLoader, cls, split[i])) {
                    bigInteger2 = bigInteger2.setBit(i);
                }
            }
            zzWw = String.format(Locale.US, "%X", new Object[]{bigInteger2});
        } catch (Throwable th) {
            zzWw = "err";
        }
    }

    public static String zzke() {
        String str;
        synchronized (zztU) {
            str = zzWw;
        }
        return str;
    }
}
