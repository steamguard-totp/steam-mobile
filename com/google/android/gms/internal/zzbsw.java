package com.google.android.gms.internal;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class zzbsw extends zzbsd<Date> {
    public static final zzbse zzcnX = new zzbse() {
        public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
            return com_google_android_gms_internal_zzbth_T.zzacb() == Date.class ? new zzbsw() : null;
        }
    };
    private final DateFormat zzcmh = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat zzcmi = DateFormat.getDateTimeInstance(2, 2);
    private final DateFormat zzcmj = zzabP();

    private static DateFormat zzabP() {
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    private synchronized Date zzjV(String str) {
        Date parse;
        try {
            parse = this.zzcmi.parse(str);
        } catch (ParseException e) {
            try {
                parse = this.zzcmh.parse(str);
            } catch (ParseException e2) {
                try {
                    parse = this.zzcmj.parse(str);
                } catch (Throwable e3) {
                    throw new zzbsa(str, e3);
                }
            }
        }
        return parse;
    }

    public synchronized void zza(zzbtk com_google_android_gms_internal_zzbtk, Date date) throws IOException {
        if (date == null) {
            com_google_android_gms_internal_zzbtk.zzaca();
        } else {
            com_google_android_gms_internal_zzbtk.zzjX(this.zzcmh.format(date));
        }
    }

    public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        return zzk(com_google_android_gms_internal_zzbti);
    }

    public Date zzk(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
            return zzjV(com_google_android_gms_internal_zzbti.nextString());
        }
        com_google_android_gms_internal_zzbti.nextNull();
        return null;
    }
}
