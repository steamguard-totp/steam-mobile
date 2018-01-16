package com.google.android.gms.internal;

@zzmb
public class zzeh {
    private static final Object zztU = new Object();
    private static zzeh zzzF;
    private final zzpx zzzG = new zzpx();
    private final zzeg zzzH = new zzeg(new zzdx(), new zzdw(), new zzfd(), new zzhn(), new zznv(), new zzlf(), new zzkq());

    static {
        zza(new zzeh());
    }

    protected zzeh() {
    }

    protected static void zza(zzeh com_google_android_gms_internal_zzeh) {
        synchronized (zztU) {
            zzzF = com_google_android_gms_internal_zzeh;
        }
    }

    private static zzeh zzeN() {
        zzeh com_google_android_gms_internal_zzeh;
        synchronized (zztU) {
            com_google_android_gms_internal_zzeh = zzzF;
        }
        return com_google_android_gms_internal_zzeh;
    }

    public static zzpx zzeO() {
        return zzeN().zzzG;
    }

    public static zzeg zzeP() {
        return zzeN().zzzH;
    }
}
