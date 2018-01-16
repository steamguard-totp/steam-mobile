package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import com.google.android.gms.common.zze;

public final class zzi {
    private static Boolean zzaGN;
    private static Boolean zzaGO;
    private static Boolean zzaGP;

    @TargetApi(20)
    public static boolean zzaI(Context context) {
        if (zzaGN == null) {
            boolean z = zzs.zzyG() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
            zzaGN = Boolean.valueOf(z);
        }
        return zzaGN.booleanValue();
    }

    @TargetApi(24)
    public static boolean zzaJ(Context context) {
        return !zzs.isAtLeastN() && zzaI(context);
    }

    @TargetApi(21)
    public static boolean zzaK(Context context) {
        if (zzaGO == null) {
            boolean z = zzs.zzyI() && context.getPackageManager().hasSystemFeature("cn.google");
            zzaGO = Boolean.valueOf(z);
        }
        return zzaGO.booleanValue();
    }

    public static boolean zzaL(Context context) {
        if (zzaGP == null) {
            zzaGP = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot"));
        }
        return zzaGP.booleanValue();
    }

    public static boolean zzyw() {
        boolean z = zze.zzaxl;
        return "user".equals(Build.TYPE);
    }
}
