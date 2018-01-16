package com.google.android.gms.internal;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class zzbtd extends zzbsd<Date> {
    public static final zzbse zzcnX = new zzbse() {
        public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
            return com_google_android_gms_internal_zzbth_T.zzacb() == Date.class ? new zzbtd() : null;
        }
    };
    private final DateFormat zzcox = new SimpleDateFormat("MMM d, yyyy");

    public synchronized void zza(zzbtk com_google_android_gms_internal_zzbtk, Date date) throws IOException {
        com_google_android_gms_internal_zzbtk.zzjX(date == null ? null : this.zzcox.format(date));
    }

    public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        return zzm(com_google_android_gms_internal_zzbti);
    }

    public synchronized Date zzm(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        Date date;
        if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
            com_google_android_gms_internal_zzbti.nextNull();
            date = null;
        } else {
            try {
                date = new Date(this.zzcox.parse(com_google_android_gms_internal_zzbti.nextString()).getTime());
            } catch (Throwable e) {
                throw new zzbsa(e);
            }
        }
        return date;
    }
}
