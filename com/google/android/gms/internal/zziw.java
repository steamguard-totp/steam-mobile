package com.google.android.gms.internal;

import android.os.Parcel;
import android.util.Base64;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@zzmb
class zziw {
    final int zzIE;
    final String zztq;
    final zzdy zzug;

    zziw(zzdy com_google_android_gms_internal_zzdy, String str, int i) {
        this.zzug = com_google_android_gms_internal_zzdy;
        this.zztq = str;
        this.zzIE = i;
    }

    zziw(zziu com_google_android_gms_internal_zziu) {
        this(com_google_android_gms_internal_zziu.zzgl(), com_google_android_gms_internal_zziu.getAdUnitId(), com_google_android_gms_internal_zziu.getNetworkType());
    }

    static zziw zzak(String str) throws IOException {
        String[] split = str.split("\u0000");
        if (split.length != 3) {
            throw new IOException("Incorrect field count for QueueSeed.");
        }
        Parcel obtain = Parcel.obtain();
        try {
            String str2 = new String(Base64.decode(split[0], 0), "UTF-8");
            int parseInt = Integer.parseInt(split[1]);
            byte[] decode = Base64.decode(split[2], 0);
            obtain.unmarshall(decode, 0, decode.length);
            obtain.setDataPosition(0);
            zziw com_google_android_gms_internal_zziw = new zziw((zzdy) zzdy.CREATOR.createFromParcel(obtain), str2, parseInt);
            obtain.recycle();
            return com_google_android_gms_internal_zziw;
        } catch (Throwable th) {
            obtain.recycle();
        }
    }

    String zzgs() {
        String encodeToString;
        Parcel obtain = Parcel.obtain();
        try {
            encodeToString = Base64.encodeToString(this.zztq.getBytes("UTF-8"), 0);
            String num = Integer.toString(this.zzIE);
            this.zzug.writeToParcel(obtain, 0);
            String encodeToString2 = Base64.encodeToString(obtain.marshall(), 0);
            encodeToString = new StringBuilder(((String.valueOf(encodeToString).length() + 2) + String.valueOf(num).length()) + String.valueOf(encodeToString2).length()).append(encodeToString).append("\u0000").append(num).append("\u0000").append(encodeToString2).toString();
            return encodeToString;
        } catch (UnsupportedEncodingException e) {
            encodeToString = "QueueSeed encode failed because UTF-8 is not available.";
            zzpy.e(encodeToString);
            return "";
        } finally {
            obtain.recycle();
        }
    }
}
