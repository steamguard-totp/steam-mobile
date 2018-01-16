package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzhx;
import com.google.android.gms.internal.zzja;
import com.google.android.gms.internal.zzjb;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzox;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.internal.zzqi.zzb;
import com.google.android.gms.internal.zzqi.zzc;
import com.google.android.gms.internal.zzqp;
import java.util.Map;
import org.json.JSONObject;

@zzmb
public class zzg {
    private Context mContext;
    private final Object zzrN = new Object();
    public final zzhx zzsX = new zzhx(this) {
        final /* synthetic */ zzg zzsY;

        {
            this.zzsY = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            com_google_android_gms_internal_zzqp.zzb("/appSettingsFetched", (zzhx) this);
            synchronized (this.zzsY.zzrN) {
                if (map != null) {
                    if ("true".equalsIgnoreCase((String) map.get("isSuccessful"))) {
                        zzv.zzcN().zzd(this.zzsY.mContext, (String) map.get("appSettingsJson"));
                    }
                }
            }
        }
    };

    private static boolean zza(zzox com_google_android_gms_internal_zzox) {
        if (com_google_android_gms_internal_zzox == null) {
            return true;
        }
        boolean z = (((zzv.zzcP().currentTimeMillis() - com_google_android_gms_internal_zzox.zzjF()) > ((Long) zzfx.zzEr.get()).longValue() ? 1 : ((zzv.zzcP().currentTimeMillis() - com_google_android_gms_internal_zzox.zzjF()) == ((Long) zzfx.zzEr.get()).longValue() ? 0 : -1)) > 0) || !com_google_android_gms_internal_zzox.zzjG();
        return z;
    }

    public void zza(Context context, zzqa com_google_android_gms_internal_zzqa, boolean z, zzox com_google_android_gms_internal_zzox, String str, String str2) {
        if (!zza(com_google_android_gms_internal_zzox)) {
            return;
        }
        if (context == null) {
            zzpy.zzbe("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            zzpy.zzbe("App settings could not be fetched. Required parameters missing");
        } else {
            this.mContext = context;
            final zzja zzd = zzv.zzcJ().zzd(context, com_google_android_gms_internal_zzqa);
            final String str3 = str;
            final String str4 = str2;
            final boolean z2 = z;
            final Context context2 = context;
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzg zzsY;

                public void run() {
                    zzd.zzgv().zza(new zzc<zzjb>(this) {
                        final /* synthetic */ AnonymousClass2 zzte;

                        {
                            this.zzte = r1;
                        }

                        public void zzb(zzjb com_google_android_gms_internal_zzjb) {
                            com_google_android_gms_internal_zzjb.zza("/appSettingsFetched", this.zzte.zzsY.zzsX);
                            try {
                                JSONObject jSONObject = new JSONObject();
                                if (!TextUtils.isEmpty(str3)) {
                                    jSONObject.put("app_id", str3);
                                } else if (!TextUtils.isEmpty(str4)) {
                                    jSONObject.put("ad_unit_id", str4);
                                }
                                jSONObject.put("is_init", z2);
                                jSONObject.put("pn", context2.getPackageName());
                                com_google_android_gms_internal_zzjb.zza("AFMA_fetchAppSettings", jSONObject);
                            } catch (Throwable e) {
                                com_google_android_gms_internal_zzjb.zzb("/appSettingsFetched", this.zzte.zzsY.zzsX);
                                zzpy.zzb("Error requesting application settings", e);
                            }
                        }

                        public /* synthetic */ void zzd(Object obj) {
                            zzb((zzjb) obj);
                        }
                    }, new zzb());
                }
            });
        }
    }
}
