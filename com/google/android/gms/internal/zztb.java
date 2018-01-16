package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;

public final class zztb {
    static Boolean zzaaw;
    static Object zztU = new Object();

    public static boolean zzT(Context context) {
        zzac.zzw(context);
        if (zzaaw != null) {
            return zzaaw.booleanValue();
        }
        boolean zza = zztg.zza(context, "com.google.android.gms.analytics.AnalyticsReceiver", false);
        zzaaw = Boolean.valueOf(zza);
        return zza;
    }
}
