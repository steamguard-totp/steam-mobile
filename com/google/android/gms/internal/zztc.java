package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;

public final class zztc {
    private static Boolean zzaax;

    public static boolean zzU(Context context) {
        zzac.zzw(context);
        if (zzaax != null) {
            return zzaax.booleanValue();
        }
        boolean zzr = zztg.zzr(context, "com.google.android.gms.analytics.AnalyticsService");
        zzaax = Boolean.valueOf(zzr);
        return zzr;
    }
}
