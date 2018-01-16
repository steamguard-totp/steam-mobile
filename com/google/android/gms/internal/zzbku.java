package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.TimeUnit;

public final class zzbku {
    public static final zzapn<Boolean> zzbXh = zzapn.zzb(0, "crash:enabled", Boolean.valueOf(true));
    public static final zzapn<String> zzbXi = zzapn.zzc(0, "crash:gateway_url", "https://mobilecrashreporting.googleapis.com/v1/crashes:batchCreate?key=");
    public static final zzapn<Integer> zzbXj = zzapn.zzb(0, "crash:log_buffer_capacity", 100);
    public static final zzapn<Integer> zzbXk = zzapn.zzb(0, "crash:log_buffer_max_total_size", 32768);
    public static final zzapn<Integer> zzbXl = zzapn.zzb(0, "crash:crash_backlog_capacity", 5);
    public static final zzapn<Long> zzbXm = zzapn.zzb(0, "crash:crash_backlog_max_age", 604800000);
    public static final zzapn<Long> zzbXn = zzapn.zzb(0, "crash:starting_backoff", TimeUnit.SECONDS.toMillis(1));
    public static final zzapn<Long> zzbXo = zzapn.zzb(0, "crash:backoff_limit", TimeUnit.MINUTES.toMillis(60));
    public static final zzapn<Integer> zzbXp = zzapn.zzb(0, "crash:retry_num_attempts", 12);
    public static final zzapn<Integer> zzbXq = zzapn.zzb(0, "crash:batch_size", 5);
    public static final zzapn<Long> zzbXr = zzapn.zzb(0, "crash:batch_throttle", TimeUnit.MINUTES.toMillis(5));
    public static final zzapn<Integer> zzbXs = zzapn.zzb(0, "crash:frame_depth", 60);
    public static final zzapn<Integer> zzbXt = zzapn.zzb(0, "crash:receiver_delay", 100);
    public static final zzapn<Integer> zzbXu = zzapn.zzb(0, "crash:thread_idle_timeout", 10);

    public static final void initialize(Context context) {
        zzapr.zzCQ();
        zzapo.initialize(context);
    }
}
