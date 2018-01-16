package com.google.android.gms.internal;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class zzbte extends zzbsd<Time> {
    public static final zzbse zzcnX = new zzbse() {
        public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
            return com_google_android_gms_internal_zzbth_T.zzacb() == Time.class ? new zzbte() : null;
        }
    };
    private final DateFormat zzcox = new SimpleDateFormat("hh:mm:ss a");

    public synchronized void zza(zzbtk com_google_android_gms_internal_zzbtk, Time time) throws IOException {
        com_google_android_gms_internal_zzbtk.zzjX(time == null ? null : this.zzcox.format(time));
    }

    public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        return zzn(com_google_android_gms_internal_zzbti);
    }

    public synchronized Time zzn(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        Time time;
        if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
            com_google_android_gms_internal_zzbti.nextNull();
            time = null;
        } else {
            try {
                time = new Time(this.zzcox.parse(com_google_android_gms_internal_zzbti.nextString()).getTime());
            } catch (Throwable e) {
                throw new zzbsa(e);
            }
        }
        return time;
    }
}
