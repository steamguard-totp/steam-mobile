package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzh;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzix.zza;
import org.json.JSONObject;

@zzmb
public class zziz implements zzix {
    private final zzqp zzGt;

    public zziz(Context context, zzqa com_google_android_gms_internal_zzqa, zzav com_google_android_gms_internal_zzav, zzd com_google_android_gms_ads_internal_zzd) {
        this.zzGt = zzv.zzcK().zza(context, new zzec(), false, false, com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzqa, null, null, com_google_android_gms_ads_internal_zzd);
        this.zzGt.getWebView().setWillNotDraw(true);
    }

    private void runOnUiThread(Runnable runnable) {
        if (zzeh.zzeO().zzkJ()) {
            runnable.run();
        } else {
            zzpi.zzWR.post(runnable);
        }
    }

    public void destroy() {
        this.zzGt.destroy();
    }

    public void zza(zzdt com_google_android_gms_internal_zzdt, zzh com_google_android_gms_ads_internal_overlay_zzh, zzht com_google_android_gms_internal_zzht, zzq com_google_android_gms_ads_internal_overlay_zzq, boolean z, zzhz com_google_android_gms_internal_zzhz, zzib com_google_android_gms_internal_zzib, zze com_google_android_gms_ads_internal_zze, zzkp com_google_android_gms_internal_zzkp) {
        this.zzGt.zzkV().zza(com_google_android_gms_internal_zzdt, com_google_android_gms_ads_internal_overlay_zzh, com_google_android_gms_internal_zzht, com_google_android_gms_ads_internal_overlay_zzq, z, com_google_android_gms_internal_zzhz, com_google_android_gms_internal_zzib, new zze(this.zzGt.getContext(), false), com_google_android_gms_internal_zzkp, null);
    }

    public void zza(final zza com_google_android_gms_internal_zzix_zza) {
        this.zzGt.zzkV().zza(new zzqq.zza(this) {
            public void zza(zzqp com_google_android_gms_internal_zzqp, boolean z) {
                com_google_android_gms_internal_zzix_zza.zzgu();
            }
        });
    }

    public void zza(String str, zzhx com_google_android_gms_internal_zzhx) {
        this.zzGt.zzkV().zza(str, com_google_android_gms_internal_zzhx);
    }

    public void zza(final String str, final JSONObject jSONObject) {
        runOnUiThread(new Runnable(this) {
            final /* synthetic */ zziz zzIZ;

            public void run() {
                this.zzIZ.zzGt.zza(str, jSONObject);
            }
        });
    }

    public void zzal(String str) {
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[]{str});
        runOnUiThread(new Runnable(this) {
            final /* synthetic */ zziz zzIZ;

            public void run() {
                this.zzIZ.zzGt.loadData(format, "text/html", "UTF-8");
            }
        });
    }

    public void zzam(final String str) {
        runOnUiThread(new Runnable(this) {
            final /* synthetic */ zziz zzIZ;

            public void run() {
                this.zzIZ.zzGt.loadUrl(str);
            }
        });
    }

    public void zzan(final String str) {
        runOnUiThread(new Runnable(this) {
            final /* synthetic */ zziz zzIZ;

            public void run() {
                this.zzIZ.zzGt.loadData(str, "text/html", "UTF-8");
            }
        });
    }

    public void zzb(String str, zzhx com_google_android_gms_internal_zzhx) {
        this.zzGt.zzkV().zzb(str, com_google_android_gms_internal_zzhx);
    }

    public void zzb(String str, JSONObject jSONObject) {
        this.zzGt.zzb(str, jSONObject);
    }

    public zzjc zzgt() {
        return new zzjd(this);
    }

    public void zzi(final String str, final String str2) {
        runOnUiThread(new Runnable(this) {
            final /* synthetic */ zziz zzIZ;

            public void run() {
                this.zzIZ.zzGt.zzi(str, str2);
            }
        });
    }
}
