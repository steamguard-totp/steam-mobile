package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;

public final class zzsq {
    public static zza<String> zzaeA = zza.zzq("analytics.simple_endpoint", "/collect");
    public static zza<String> zzaeB = zza.zzq("analytics.batching_endpoint", "/batch");
    public static zza<Integer> zzaeC = zza.zze("analytics.max_get_length", 2036);
    public static zza<String> zzaeD = zza.zzd("analytics.batching_strategy.k", zzsd.BATCH_BY_COUNT.name(), zzsd.BATCH_BY_COUNT.name());
    public static zza<String> zzaeE = zza.zzq("analytics.compression_strategy.k", zzsg.GZIP.name());
    public static zza<Integer> zzaeF = zza.zze("analytics.max_hits_per_request.k", 20);
    public static zza<Integer> zzaeG = zza.zze("analytics.max_hit_length.k", 8192);
    public static zza<Integer> zzaeH = zza.zze("analytics.max_post_length.k", 8192);
    public static zza<Integer> zzaeI = zza.zze("analytics.max_batch_post_length", 8192);
    public static zza<String> zzaeJ = zza.zzq("analytics.fallback_responses.k", "404,502");
    public static zza<Integer> zzaeK = zza.zze("analytics.batch_retry_interval.seconds.k", 3600);
    public static zza<Long> zzaeL = zza.zzb("analytics.service_monitor_interval", 86400000);
    public static zza<Integer> zzaeM = zza.zze("analytics.http_connection.connect_timeout_millis", 60000);
    public static zza<Integer> zzaeN = zza.zze("analytics.http_connection.read_timeout_millis", 61000);
    public static zza<Long> zzaeO = zza.zzb("analytics.campaigns.time_limit", 86400000);
    public static zza<String> zzaeP = zza.zzq("analytics.first_party_experiment_id", "");
    public static zza<Integer> zzaeQ = zza.zze("analytics.first_party_experiment_variant", 0);
    public static zza<Boolean> zzaeR = zza.zzf("analytics.test.disable_receiver", false);
    public static zza<Long> zzaeS = zza.zza("analytics.service_client.idle_disconnect_millis", 10000, 10000);
    public static zza<Long> zzaeT = zza.zzb("analytics.service_client.connect_timeout_millis", 5000);
    public static zza<Long> zzaeU = zza.zzb("analytics.service_client.second_connect_delay_millis", 5000);
    public static zza<Long> zzaeV = zza.zzb("analytics.service_client.unexpected_reconnect_millis", 60000);
    public static zza<Long> zzaeW = zza.zzb("analytics.service_client.reconnect_throttle_millis", 1800000);
    public static zza<Long> zzaeX = zza.zzb("analytics.monitoring.sample_period_millis", 86400000);
    public static zza<Long> zzaeY = zza.zzb("analytics.initialization_warning_threshold", 5000);
    public static zza<Boolean> zzaei = zza.zzf("analytics.service_enabled", false);
    public static zza<Boolean> zzaej = zza.zzf("analytics.service_client_enabled", true);
    public static zza<String> zzaek = zza.zzd("analytics.log_tag", "GAv4", "GAv4-SVC");
    public static zza<Long> zzael = zza.zzb("analytics.max_tokens", 60);
    public static zza<Float> zzaem = zza.zza("analytics.tokens_per_sec", 0.5f);
    public static zza<Integer> zzaen = zza.zza("analytics.max_stored_hits", 2000, 20000);
    public static zza<Integer> zzaeo = zza.zze("analytics.max_stored_hits_per_app", 2000);
    public static zza<Integer> zzaep = zza.zze("analytics.max_stored_properties_per_app", 100);
    public static zza<Long> zzaeq = zza.zza("analytics.local_dispatch_millis", 1800000, 120000);
    public static zza<Long> zzaer = zza.zza("analytics.initial_local_dispatch_millis", 5000, 5000);
    public static zza<Long> zzaes = zza.zzb("analytics.min_local_dispatch_millis", 120000);
    public static zza<Long> zzaet = zza.zzb("analytics.max_local_dispatch_millis", 7200000);
    public static zza<Long> zzaeu = zza.zzb("analytics.dispatch_alarm_millis", 7200000);
    public static zza<Long> zzaev = zza.zzb("analytics.max_dispatch_alarm_millis", 32400000);
    public static zza<Integer> zzaew = zza.zze("analytics.max_hits_per_dispatch", 20);
    public static zza<Integer> zzaex = zza.zze("analytics.max_hits_per_batch", 20);
    public static zza<String> zzaey = zza.zzq("analytics.insecure_host", "http://www.google-analytics.com");
    public static zza<String> zzaez = zza.zzq("analytics.secure_host", "https://ssl.google-analytics.com");

    public static final class zza<V> {
        private final V zzaeZ;
        private final zzabs<V> zzafa;

        private zza(zzabs<V> com_google_android_gms_internal_zzabs_V, V v) {
            zzac.zzw(com_google_android_gms_internal_zzabs_V);
            this.zzafa = com_google_android_gms_internal_zzabs_V;
            this.zzaeZ = v;
        }

        static zza<Float> zza(String str, float f) {
            return zza(str, f, f);
        }

        static zza<Float> zza(String str, float f, float f2) {
            return new zza(zzabs.zza(str, Float.valueOf(f2)), Float.valueOf(f));
        }

        static zza<Integer> zza(String str, int i, int i2) {
            return new zza(zzabs.zza(str, Integer.valueOf(i2)), Integer.valueOf(i));
        }

        static zza<Long> zza(String str, long j, long j2) {
            return new zza(zzabs.zza(str, Long.valueOf(j2)), Long.valueOf(j));
        }

        static zza<Boolean> zza(String str, boolean z, boolean z2) {
            return new zza(zzabs.zzj(str, z2), Boolean.valueOf(z));
        }

        static zza<Long> zzb(String str, long j) {
            return zza(str, j, j);
        }

        static zza<String> zzd(String str, String str2, String str3) {
            return new zza(zzabs.zzA(str, str3), str2);
        }

        static zza<Integer> zze(String str, int i) {
            return zza(str, i, i);
        }

        static zza<Boolean> zzf(String str, boolean z) {
            return zza(str, z, z);
        }

        static zza<String> zzq(String str, String str2) {
            return zzd(str, str2, str2);
        }

        public V get() {
            return this.zzaeZ;
        }
    }
}
