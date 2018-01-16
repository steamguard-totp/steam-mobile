package com.google.android.gms.internal;

import android.os.Build.VERSION;
import java.io.File;

public class zzsp {
    public static int version() {
        try {
            return Integer.parseInt(VERSION.SDK);
        } catch (NumberFormatException e) {
            zzsw.zzf("Invalid version number", VERSION.SDK);
            return 0;
        }
    }

    public static boolean zzbZ(String str) {
        if (version() < 9) {
            return false;
        }
        File file = new File(str);
        file.setReadable(false, false);
        file.setWritable(false, false);
        file.setReadable(true, true);
        file.setWritable(true, true);
        return true;
    }
}
