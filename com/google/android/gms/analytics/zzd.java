package com.google.android.gms.analytics;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class zzd implements zzi {
    private static final Uri zzaaR;
    private final LogPrinter zzaaS = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Builder builder = new Builder();
        builder.scheme("uri");
        builder.authority("local");
        zzaaR = builder.build();
    }

    public void zzb(zze com_google_android_gms_analytics_zze) {
        List<zzf> arrayList = new ArrayList(com_google_android_gms_analytics_zze.zzmc());
        Collections.sort(arrayList, new Comparator<zzf>(this) {
            public /* synthetic */ int compare(Object obj, Object obj2) {
                return zza((zzf) obj, (zzf) obj2);
            }

            public int zza(zzf com_google_android_gms_analytics_zzf, zzf com_google_android_gms_analytics_zzf2) {
                return com_google_android_gms_analytics_zzf.getClass().getCanonicalName().compareTo(com_google_android_gms_analytics_zzf2.getClass().getCanonicalName());
            }
        });
        StringBuilder stringBuilder = new StringBuilder();
        for (zzf obj : arrayList) {
            Object obj2 = obj.toString();
            if (!TextUtils.isEmpty(obj2)) {
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(obj2);
            }
        }
        this.zzaaS.println(stringBuilder.toString());
    }

    public Uri zzlQ() {
        return zzaaR;
    }
}
