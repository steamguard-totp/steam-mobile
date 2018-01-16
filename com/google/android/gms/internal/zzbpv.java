package com.google.android.gms.internal;

public class zzbpv {
    private static final boolean zzcir = zzZV();

    private static boolean zzZV() {
        try {
            Class.forName("android.app.Activity");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static boolean zzZW() {
        return zzcir;
    }
}
