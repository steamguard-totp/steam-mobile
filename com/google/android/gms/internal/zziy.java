package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzd;
import java.util.concurrent.Future;

@zzmb
public class zziy {

    private static class zza<JavascriptEngine> extends zzqc<JavascriptEngine> {
        JavascriptEngine zzIW;

        private zza() {
        }
    }

    private zzix zza(Context context, zzqa com_google_android_gms_internal_zzqa, final zza<zzix> com_google_android_gms_internal_zziy_zza_com_google_android_gms_internal_zzix, zzav com_google_android_gms_internal_zzav, zzd com_google_android_gms_ads_internal_zzd) {
        zzix com_google_android_gms_internal_zziz = new zziz(context, com_google_android_gms_internal_zzqa, com_google_android_gms_internal_zzav, com_google_android_gms_ads_internal_zzd);
        com_google_android_gms_internal_zziy_zza_com_google_android_gms_internal_zzix.zzIW = com_google_android_gms_internal_zziz;
        com_google_android_gms_internal_zziz.zza(new com.google.android.gms.internal.zzix.zza(this) {
            public void zzgu() {
                com_google_android_gms_internal_zziy_zza_com_google_android_gms_internal_zzix.zzh((zzix) com_google_android_gms_internal_zziy_zza_com_google_android_gms_internal_zzix.zzIW);
            }
        });
        return com_google_android_gms_internal_zziz;
    }

    public Future<zzix> zza(Context context, zzqa com_google_android_gms_internal_zzqa, String str, zzav com_google_android_gms_internal_zzav, zzd com_google_android_gms_ads_internal_zzd) {
        final Future com_google_android_gms_internal_zziy_zza = new zza();
        final Context context2 = context;
        final zzqa com_google_android_gms_internal_zzqa2 = com_google_android_gms_internal_zzqa;
        final zzav com_google_android_gms_internal_zzav2 = com_google_android_gms_internal_zzav;
        final zzd com_google_android_gms_ads_internal_zzd2 = com_google_android_gms_ads_internal_zzd;
        final String str2 = str;
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zziy zzIV;

            public void run() {
                this.zzIV.zza(context2, com_google_android_gms_internal_zzqa2, com_google_android_gms_internal_zziy_zza, com_google_android_gms_internal_zzav2, com_google_android_gms_ads_internal_zzd2).zzam(str2);
            }
        });
        return com_google_android_gms_internal_zziy_zza;
    }
}
