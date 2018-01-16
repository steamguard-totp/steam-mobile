package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import java.util.concurrent.Future;

@zzmb
public final class zzpg {

    public interface zzb {
        void zzh(Bundle bundle);
    }

    private static abstract class zza extends zzpd {
        private zza() {
        }

        public void onStop() {
        }
    }

    class AnonymousClass10 extends zza {
        final /* synthetic */ zzb zzWD;
        final /* synthetic */ Context zztd;

        AnonymousClass10(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
            this.zztd = context;
            this.zzWD = com_google_android_gms_internal_zzpg_zzb;
            super();
        }

        public void zzcm() {
            SharedPreferences zzm = zzpg.zzm(this.zztd);
            Bundle bundle = new Bundle();
            bundle.putBoolean("use_https", zzm.getBoolean("use_https", true));
            if (this.zzWD != null) {
                this.zzWD.zzh(bundle);
            }
        }
    }

    class AnonymousClass11 extends zza {
        final /* synthetic */ zzb zzWD;
        final /* synthetic */ Context zztd;

        AnonymousClass11(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
            this.zztd = context;
            this.zzWD = com_google_android_gms_internal_zzpg_zzb;
            super();
        }

        public void zzcm() {
            SharedPreferences zzm = zzpg.zzm(this.zztd);
            Bundle bundle = new Bundle();
            bundle.putInt("webview_cache_version", zzm.getInt("webview_cache_version", 0));
            if (this.zzWD != null) {
                this.zzWD.zzh(bundle);
            }
        }
    }

    class AnonymousClass12 extends zza {
        final /* synthetic */ boolean zzWI;
        final /* synthetic */ Context zztd;

        AnonymousClass12(Context context, boolean z) {
            this.zztd = context;
            this.zzWI = z;
            super();
        }

        public void zzcm() {
            Editor edit = zzpg.zzm(this.zztd).edit();
            edit.putBoolean("content_url_opted_out", this.zzWI);
            edit.apply();
        }
    }

    class AnonymousClass13 extends zza {
        final /* synthetic */ zzb zzWD;
        final /* synthetic */ Context zztd;

        AnonymousClass13(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
            this.zztd = context;
            this.zzWD = com_google_android_gms_internal_zzpg_zzb;
            super();
        }

        public void zzcm() {
            SharedPreferences zzm = zzpg.zzm(this.zztd);
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", zzm.getBoolean("content_url_opted_out", true));
            if (this.zzWD != null) {
                this.zzWD.zzh(bundle);
            }
        }
    }

    class AnonymousClass14 extends zza {
        final /* synthetic */ String zzWB;
        final /* synthetic */ Context zztd;

        AnonymousClass14(Context context, String str) {
            this.zztd = context;
            this.zzWB = str;
            super();
        }

        public void zzcm() {
            Editor edit = zzpg.zzm(this.zztd).edit();
            edit.putString("content_url_hashes", this.zzWB);
            edit.apply();
        }
    }

    class AnonymousClass15 extends zza {
        final /* synthetic */ zzb zzWD;
        final /* synthetic */ Context zztd;

        AnonymousClass15(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
            this.zztd = context;
            this.zzWD = com_google_android_gms_internal_zzpg_zzb;
            super();
        }

        public void zzcm() {
            SharedPreferences zzm = zzpg.zzm(this.zztd);
            Bundle bundle = new Bundle();
            bundle.putString("content_url_hashes", zzm.getString("content_url_hashes", ""));
            if (this.zzWD != null) {
                this.zzWD.zzh(bundle);
            }
        }
    }

    class AnonymousClass1 extends zza {
        final /* synthetic */ boolean zzWA;
        final /* synthetic */ Context zztd;

        AnonymousClass1(Context context, boolean z) {
            this.zztd = context;
            this.zzWA = z;
            super();
        }

        public void zzcm() {
            Editor edit = zzpg.zzm(this.zztd).edit();
            edit.putBoolean("use_https", this.zzWA);
            edit.apply();
        }
    }

    class AnonymousClass2 extends zza {
        final /* synthetic */ String zzWB;
        final /* synthetic */ Context zztd;

        AnonymousClass2(Context context, String str) {
            this.zztd = context;
            this.zzWB = str;
            super();
        }

        public void zzcm() {
            Editor edit = zzpg.zzm(this.zztd).edit();
            edit.putString("content_vertical_hashes", this.zzWB);
            edit.apply();
        }
    }

    class AnonymousClass3 extends zza {
        final /* synthetic */ boolean zzWC;
        final /* synthetic */ Context zztd;

        AnonymousClass3(Context context, boolean z) {
            this.zztd = context;
            this.zzWC = z;
            super();
        }

        public void zzcm() {
            Editor edit = zzpg.zzm(this.zztd).edit();
            edit.putBoolean("auto_collect_location", this.zzWC);
            edit.apply();
        }
    }

    class AnonymousClass4 extends zza {
        final /* synthetic */ zzb zzWD;
        final /* synthetic */ Context zztd;

        AnonymousClass4(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
            this.zztd = context;
            this.zzWD = com_google_android_gms_internal_zzpg_zzb;
            super();
        }

        public void zzcm() {
            SharedPreferences zzm = zzpg.zzm(this.zztd);
            Bundle bundle = new Bundle();
            bundle.putBoolean("auto_collect_location", zzm.getBoolean("auto_collect_location", false));
            if (this.zzWD != null) {
                this.zzWD.zzh(bundle);
            }
        }
    }

    class AnonymousClass5 extends zza {
        final /* synthetic */ String zzWE;
        final /* synthetic */ long zzWF;
        final /* synthetic */ Context zztd;

        AnonymousClass5(Context context, String str, long j) {
            this.zztd = context;
            this.zzWE = str;
            this.zzWF = j;
            super();
        }

        public void zzcm() {
            Editor edit = zzpg.zzm(this.zztd).edit();
            edit.putString("app_settings_json", this.zzWE);
            edit.putLong("app_settings_last_update_ms", this.zzWF);
            edit.apply();
        }
    }

    class AnonymousClass6 extends zza {
        final /* synthetic */ zzb zzWD;
        final /* synthetic */ Context zztd;

        AnonymousClass6(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
            this.zztd = context;
            this.zzWD = com_google_android_gms_internal_zzpg_zzb;
            super();
        }

        public void zzcm() {
            SharedPreferences zzm = zzpg.zzm(this.zztd);
            Bundle bundle = new Bundle();
            bundle.putString("app_settings_json", zzm.getString("app_settings_json", ""));
            bundle.putLong("app_settings_last_update_ms", zzm.getLong("app_settings_last_update_ms", 0));
            if (this.zzWD != null) {
                this.zzWD.zzh(bundle);
            }
        }
    }

    class AnonymousClass7 extends zza {
        final /* synthetic */ long zzWG;
        final /* synthetic */ Context zztd;

        AnonymousClass7(Context context, long j) {
            this.zztd = context;
            this.zzWG = j;
            super();
        }

        public void zzcm() {
            Editor edit = zzpg.zzm(this.zztd).edit();
            edit.putLong("app_last_background_time_ms", this.zzWG);
            edit.apply();
        }
    }

    class AnonymousClass8 extends zza {
        final /* synthetic */ zzb zzWD;
        final /* synthetic */ Context zztd;

        AnonymousClass8(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
            this.zztd = context;
            this.zzWD = com_google_android_gms_internal_zzpg_zzb;
            super();
        }

        public void zzcm() {
            SharedPreferences zzm = zzpg.zzm(this.zztd);
            Bundle bundle = new Bundle();
            bundle.putLong("app_last_background_time_ms", zzm.getLong("app_last_background_time_ms", 0));
            if (this.zzWD != null) {
                this.zzWD.zzh(bundle);
            }
        }
    }

    class AnonymousClass9 extends zza {
        final /* synthetic */ int zzWH;
        final /* synthetic */ Context zztd;

        AnonymousClass9(Context context, int i) {
            this.zztd = context;
            this.zzWH = i;
            super();
        }

        public void zzcm() {
            Editor edit = zzpg.zzm(this.zztd).edit();
            edit.putInt("request_in_session_count", this.zzWH);
            edit.apply();
        }
    }

    public static Future zza(Context context, int i) {
        return (Future) new AnonymousClass9(context, i).zziw();
    }

    public static Future zza(Context context, long j) {
        return (Future) new AnonymousClass7(context, j).zziw();
    }

    public static Future zza(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
        return (Future) new AnonymousClass10(context, com_google_android_gms_internal_zzpg_zzb).zziw();
    }

    public static Future zza(Context context, String str, long j) {
        return (Future) new AnonymousClass5(context, str, j).zziw();
    }

    public static Future zzb(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
        return (Future) new AnonymousClass11(context, com_google_android_gms_internal_zzpg_zzb).zziw();
    }

    public static Future zzc(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
        return (Future) new AnonymousClass13(context, com_google_android_gms_internal_zzpg_zzb).zziw();
    }

    public static Future zzc(Context context, boolean z) {
        return (Future) new AnonymousClass1(context, z).zziw();
    }

    public static Future zzd(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
        return (Future) new AnonymousClass15(context, com_google_android_gms_internal_zzpg_zzb).zziw();
    }

    public static Future zze(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
        return (Future) new AnonymousClass4(context, com_google_android_gms_internal_zzpg_zzb).zziw();
    }

    public static Future zze(Context context, boolean z) {
        return (Future) new AnonymousClass12(context, z).zziw();
    }

    public static Future zzf(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
        return (Future) new AnonymousClass6(context, com_google_android_gms_internal_zzpg_zzb).zziw();
    }

    public static Future zzf(Context context, String str) {
        return (Future) new AnonymousClass14(context, str).zziw();
    }

    public static Future zzf(Context context, boolean z) {
        return (Future) new AnonymousClass3(context, z).zziw();
    }

    public static Future zzg(Context context, zzb com_google_android_gms_internal_zzpg_zzb) {
        return (Future) new AnonymousClass8(context, com_google_android_gms_internal_zzpg_zzb).zziw();
    }

    public static Future zzg(Context context, String str) {
        return (Future) new AnonymousClass2(context, str).zziw();
    }

    public static SharedPreferences zzm(Context context) {
        return context.getSharedPreferences("admob", 0);
    }
}
