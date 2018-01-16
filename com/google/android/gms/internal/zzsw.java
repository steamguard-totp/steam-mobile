package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;

@Deprecated
public class zzsw {
    private static volatile Logger zzafq;

    static {
        setLogger(new zzsk());
    }

    public static Logger getLogger() {
        return zzafq;
    }

    public static void setLogger(Logger logger) {
        zzafq = logger;
    }

    public static boolean zzai(int i) {
        return getLogger() != null && getLogger().getLogLevel() <= i;
    }

    public static void zzbe(String str) {
        zzsx zzpw = zzsx.zzpw();
        if (zzpw != null) {
            zzpw.zzbR(str);
        } else if (zzai(2)) {
            Log.w((String) zzsq.zzaek.get(), str);
        }
        Logger logger = zzafq;
        if (logger != null) {
            logger.warn(str);
        }
    }

    public static void zzf(String str, Object obj) {
        zzsx zzpw = zzsx.zzpw();
        if (zzpw != null) {
            zzpw.zze(str, obj);
        } else if (zzai(3)) {
            String stringBuilder;
            if (obj != null) {
                String valueOf = String.valueOf(obj);
                stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(valueOf).length()).append(str).append(":").append(valueOf).toString();
            } else {
                stringBuilder = str;
            }
            Log.e((String) zzsq.zzaek.get(), stringBuilder);
        }
        Logger logger = zzafq;
        if (logger != null) {
            logger.error(str);
        }
    }
}
