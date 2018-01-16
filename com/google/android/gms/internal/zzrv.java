package com.google.android.gms.internal;

import com.google.android.gms.common.zzc;

public class zzrv {
    public static final String VERSION = String.valueOf(zzc.GOOGLE_PLAY_SERVICES_VERSION_CODE / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
    public static final String zzacP;

    static {
        String str = "ma";
        String valueOf = String.valueOf(VERSION);
        zzacP = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
    }
}
