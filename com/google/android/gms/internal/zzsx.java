package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import java.util.Map;
import java.util.Map.Entry;

public class zzsx extends zzru {
    private static String zzafr = "3";
    private static String zzafs = "01VDIWEA?";
    private static zzsx zzaft;

    public zzsx(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
    }

    public static zzsx zzpw() {
        return zzaft;
    }

    public void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        String str2 = (String) zzsq.zzaek.get();
        if (Log.isLoggable(str2, i)) {
            Log.println(i, str2, zzrt.zzc(str, obj, obj2, obj3));
        }
        if (i >= 5) {
            zzb(i, str, obj, obj2, obj3);
        }
    }

    public void zza(zzst com_google_android_gms_internal_zzst, String str) {
        Object obj;
        if (str == null) {
            obj = "no reason provided";
        }
        Object com_google_android_gms_internal_zzst2 = com_google_android_gms_internal_zzst != null ? com_google_android_gms_internal_zzst.toString() : "no hit data";
        String str2 = "Discarding hit. ";
        String valueOf = String.valueOf(obj);
        zzd(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), com_google_android_gms_internal_zzst2);
    }

    public synchronized void zzb(int i, String str, Object obj, Object obj2, Object obj3) {
        int i2 = 0;
        synchronized (this) {
            zzac.zzw(str);
            if (i >= 0) {
                i2 = i;
            }
            int length = i2 >= zzafs.length() ? zzafs.length() - 1 : i2;
            char c = zzns().zzow() ? 'C' : 'c';
            String str2 = zzafr;
            char charAt = zzafs.charAt(length);
            String str3 = zzrv.VERSION;
            String valueOf = String.valueOf(zzrt.zzc(str, zzm(obj), zzm(obj2), zzm(obj3)));
            String stringBuilder = new StringBuilder(((String.valueOf(str2).length() + 3) + String.valueOf(str3).length()) + String.valueOf(valueOf).length()).append(str2).append(charAt).append(c).append(str3).append(":").append(valueOf).toString();
            if (stringBuilder.length() > 1024) {
                stringBuilder = stringBuilder.substring(0, 1024);
            }
            zzta zznF = zznp().zznF();
            if (zznF != null) {
                zznF.zzpJ().zzcb(stringBuilder);
            }
        }
    }

    public void zzg(Map<String, String> map, String str) {
        Object obj;
        Object stringBuilder;
        if (str == null) {
            obj = "no reason provided";
        }
        if (map != null) {
            StringBuilder stringBuilder2 = new StringBuilder();
            for (Entry entry : map.entrySet()) {
                if (stringBuilder2.length() > 0) {
                    stringBuilder2.append(',');
                }
                stringBuilder2.append((String) entry.getKey());
                stringBuilder2.append('=');
                stringBuilder2.append((String) entry.getValue());
            }
            stringBuilder = stringBuilder2.toString();
        } else {
            stringBuilder = "no hit data";
        }
        String str2 = "Discarding hit. ";
        String valueOf = String.valueOf(obj);
        zzd(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), stringBuilder);
    }

    protected String zzm(Object obj) {
        if (obj == null) {
            return null;
        }
        Object l = obj instanceof Integer ? new Long((long) ((Integer) obj).intValue()) : obj;
        if (!(l instanceof Long)) {
            return l instanceof Boolean ? String.valueOf(l) : l instanceof Throwable ? l.getClass().getCanonicalName() : "-";
        } else {
            if (Math.abs(((Long) l).longValue()) < 100) {
                return String.valueOf(l);
            }
            String str = String.valueOf(l).charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(((Long) l).longValue()));
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(Math.round(Math.pow(10.0d, (double) (valueOf.length() - 1))));
            stringBuilder.append("...");
            stringBuilder.append(str);
            stringBuilder.append(Math.round(Math.pow(10.0d, (double) valueOf.length()) - 1.0d));
            return stringBuilder.toString();
        }
    }

    protected void zzmr() {
        synchronized (zzsx.class) {
            zzaft = this;
        }
    }
}
