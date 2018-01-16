package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.internal.zzacx;

public class zzd {
    @TargetApi(12)
    public static boolean zzx(Context context, String str) {
        if (!zzs.zzyy()) {
            return false;
        }
        "com.google.android.gms".equals(str);
        try {
            return (zzacx.zzaQ(context).getApplicationInfo(str, 0).flags & 2097152) != 0;
        } catch (NameNotFoundException e) {
            return false;
        }
    }
}
