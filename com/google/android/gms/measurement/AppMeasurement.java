package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaas;
import com.google.android.gms.internal.zzatp;
import com.google.android.gms.internal.zzaub;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.firebase.analytics.FirebaseAnalytics.UserProperty;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Deprecated
public class AppMeasurement {
    private final zzatp zzbpw;

    public static class zzf {
        public String zzbpA;
        public long zzbpB;
        public String zzbpz;

        public zzf(zzf com_google_android_gms_measurement_AppMeasurement_zzf) {
            this.zzbpz = com_google_android_gms_measurement_AppMeasurement_zzf.zzbpz;
            this.zzbpA = com_google_android_gms_measurement_AppMeasurement_zzf.zzbpA;
            this.zzbpB = com_google_android_gms_measurement_AppMeasurement_zzf.zzbpB;
        }
    }

    public interface zzc {
        void zzc(String str, String str2, Bundle bundle, long j);
    }

    public static final class zza extends Event {
        public static final Map<String, String> zzbpx = com.google.android.gms.common.util.zzf.zzb(new String[]{"app_clear_data", "app_exception", "app_remove", "app_install", "app_update", "firebase_campaign", "error", "first_open", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "firebase_ad_exposure", "firebase_adunit_exposure"}, new String[]{"_cd", "_ae", "_ui", "_in", "_au", "_cmp", "_err", "_f", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_e", "_xa", "_xu"});
    }

    public interface zzb {
        void zzb(String str, String str2, Bundle bundle, long j);
    }

    public interface zzd {
        boolean zza(zzf com_google_android_gms_measurement_AppMeasurement_zzf, zzf com_google_android_gms_measurement_AppMeasurement_zzf2);
    }

    public static final class zze extends Param {
        public static final Map<String, String> zzbpy = com.google.android.gms.common.util.zzf.zzb(new String[]{"firebase_conversion", "engagement_time_msec", "exposure_time", "ad_unit_id", "firebase_error", "firebase_error_value", "firebase_error_length", "debug", "realtime", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "message_device_time", "message_id", "message_name", "message_time", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count"}, new String[]{"_c", "_et", "_xt", "_ai", "_err", "_ev", "_el", "_dbg", "_r", "_o", "_sn", "_sc", "_si", "_ndt", "_nmid", "_nmn", "_nmt", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin"});
    }

    public static final class zzg extends UserProperty {
        public static final Map<String, String> zzbpC = com.google.android.gms.common.util.zzf.zzb(new String[]{"firebase_last_notification", "first_open_time", "last_deep_link_referrer", "user_id"}, new String[]{"_ln", "_fot", "_ldl", "_id"});
    }

    public AppMeasurement(zzatp com_google_android_gms_internal_zzatp) {
        zzac.zzw(com_google_android_gms_internal_zzatp);
        this.zzbpw = com_google_android_gms_internal_zzatp;
    }

    @Keep
    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return zzatp.zzbu(context).zzLw();
    }

    private void zzc(String str, String str2, Object obj) {
        this.zzbpw.zzJi().zzd(str, str2, obj);
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.zzbpw.zzJg().beginAdUnitExposure(str);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.zzbpw.zzJg().endAdUnitExposure(str);
    }

    @Keep
    public long generateEventId() {
        return this.zzbpw.zzJp().zzMi();
    }

    @Keep
    public String getAppInstanceId() {
        return this.zzbpw.zzJi().zzfS(null);
    }

    @Keep
    public String getAppInstanceIdOnPackageSide(String str) {
        return this.zzbpw.zzJi().getAppInstanceIdOnPackageSide(str);
    }

    @Keep
    public String getCurrentScreenName() {
        zzf zzLV = this.zzbpw.zzJm().zzLV();
        return zzLV != null ? zzLV.zzbpz : null;
    }

    @Keep
    public String getCurrentScreenNameOnPackageSide(String str) {
        zzf zzfU = this.zzbpw.zzJm().zzfU(str);
        return zzfU != null ? zzfU.zzbpz : null;
    }

    @Keep
    public String getGmpAppId() {
        try {
            return zzaas.zzwj();
        } catch (IllegalStateException e) {
            this.zzbpw.zzJt().zzLa().zzj("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Keep
    public String getGmpAppIdOnPackageSide(String str) {
        return this.zzbpw.zzJi().getGmpAppIdOnPackageSide(str);
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzbpw.zzJi().zze(str, str2, bundle);
    }

    @Keep
    public void registerOnScreenChangeCallback(zzd com_google_android_gms_measurement_AppMeasurement_zzd) {
        this.zzbpw.zzJm().registerOnScreenChangeCallback(com_google_android_gms_measurement_AppMeasurement_zzd);
    }

    @Keep
    public void unregisterOnScreenChangeCallback(zzd com_google_android_gms_measurement_AppMeasurement_zzd) {
        this.zzbpw.zzJm().unregisterOnScreenChangeCallback(com_google_android_gms_measurement_AppMeasurement_zzd);
    }

    public void zza(zzb com_google_android_gms_measurement_AppMeasurement_zzb) {
        this.zzbpw.zzJi().zza(com_google_android_gms_measurement_AppMeasurement_zzb);
    }

    public void zza(zzc com_google_android_gms_measurement_AppMeasurement_zzc) {
        this.zzbpw.zzJi().zza(com_google_android_gms_measurement_AppMeasurement_zzc);
    }

    public void zza(String str, String str2, Bundle bundle, long j) {
        this.zzbpw.zzJi().zzd(str, str2, bundle == null ? new Bundle() : bundle, j);
    }

    public Map<String, Object> zzaE(boolean z) {
        List<zzaub> zzaI = this.zzbpw.zzJi().zzaI(z);
        Map<String, Object> hashMap = new HashMap(zzaI.size());
        for (zzaub com_google_android_gms_internal_zzaub : zzaI) {
            hashMap.put(com_google_android_gms_internal_zzaub.name, com_google_android_gms_internal_zzaub.getValue());
        }
        return hashMap;
    }

    public void zzb(String str, String str2, Object obj) {
        zzc(str, str2, obj);
    }
}
