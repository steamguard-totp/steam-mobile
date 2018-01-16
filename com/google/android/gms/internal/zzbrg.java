package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

final class zzbrg implements zzbrq<Date>, zzbrz<Date> {
    private final DateFormat zzcmh;
    private final DateFormat zzcmi;
    private final DateFormat zzcmj;

    zzbrg() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    public zzbrg(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    zzbrg(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    zzbrg(DateFormat dateFormat, DateFormat dateFormat2) {
        this.zzcmh = dateFormat;
        this.zzcmi = dateFormat2;
        this.zzcmj = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.zzcmj.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private Date zza(zzbrr com_google_android_gms_internal_zzbrr) {
        Date parse;
        synchronized (this.zzcmi) {
            try {
                parse = this.zzcmi.parse(com_google_android_gms_internal_zzbrr.zzabu());
            } catch (ParseException e) {
                try {
                    parse = this.zzcmh.parse(com_google_android_gms_internal_zzbrr.zzabu());
                } catch (ParseException e2) {
                    try {
                        parse = this.zzcmj.parse(com_google_android_gms_internal_zzbrr.zzabu());
                    } catch (Throwable e3) {
                        throw new zzbsa(com_google_android_gms_internal_zzbrr.zzabu(), e3);
                    }
                }
            }
        }
        return parse;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(zzbrg.class.getSimpleName());
        stringBuilder.append('(').append(this.zzcmi.getClass().getSimpleName()).append(')');
        return stringBuilder.toString();
    }

    public zzbrr zza(Date date, Type type, zzbry com_google_android_gms_internal_zzbry) {
        zzbrr com_google_android_gms_internal_zzbrx;
        synchronized (this.zzcmi) {
            com_google_android_gms_internal_zzbrx = new zzbrx(this.zzcmh.format(date));
        }
        return com_google_android_gms_internal_zzbrx;
    }

    public Date zza(zzbrr com_google_android_gms_internal_zzbrr, Type type, zzbrp com_google_android_gms_internal_zzbrp) throws zzbrv {
        if (com_google_android_gms_internal_zzbrr instanceof zzbrx) {
            Date zza = zza(com_google_android_gms_internal_zzbrr);
            if (type == Date.class) {
                return zza;
            }
            if (type == Timestamp.class) {
                return new Timestamp(zza.getTime());
            }
            if (type == java.sql.Date.class) {
                return new java.sql.Date(zza.getTime());
            }
            String valueOf = String.valueOf(getClass());
            String valueOf2 = String.valueOf(type);
            throw new IllegalArgumentException(new StringBuilder((String.valueOf(valueOf).length() + 23) + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot deserialize to ").append(valueOf2).toString());
        }
        throw new zzbrv("The date should be a string value");
    }

    public /* synthetic */ Object zzb(zzbrr com_google_android_gms_internal_zzbrr, Type type, zzbrp com_google_android_gms_internal_zzbrp) throws zzbrv {
        return zza(com_google_android_gms_internal_zzbrr, type, com_google_android_gms_internal_zzbrp);
    }
}
