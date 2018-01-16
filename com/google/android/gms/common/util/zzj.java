package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;

public final class zzj {
    private static IntentFilter zzaGQ = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static long zzaGR;
    private static float zzaGS = Float.NaN;

    @TargetApi(20)
    public static int zzaM(Context context) {
        int i = 1;
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, zzaGQ);
        int i2 = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        int i3 = (zzb(powerManager) ? 1 : 0) << 1;
        if (i2 == 0) {
            i = 0;
        }
        return i3 | i;
    }

    public static synchronized float zzaN(Context context) {
        float f;
        synchronized (zzj.class) {
            if (SystemClock.elapsedRealtime() - zzaGR >= 60000 || Float.isNaN(zzaGS)) {
                Intent registerReceiver = context.getApplicationContext().registerReceiver(null, zzaGQ);
                if (registerReceiver != null) {
                    zzaGS = ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
                }
                zzaGR = SystemClock.elapsedRealtime();
                f = zzaGS;
            } else {
                f = zzaGS;
            }
        }
        return f;
    }

    @TargetApi(20)
    public static boolean zzb(PowerManager powerManager) {
        return zzs.zzyG() ? powerManager.isInteractive() : powerManager.isScreenOn();
    }
}
