package com.valvesoftware.android.steam.community;

import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import org.json.JSONObject;

public class TimeCorrector {
    private static TimeCorrector s_instance = null;
    private int m_AdjustedTimeProbeFrequencySeconds = 300;
    private int m_HintProbeFrequencySeconds = 60;
    private long m_LargeTimeJink = 86400;
    private int m_MaxAttempts = 3;
    private int m_ProbeFrequencySeconds = 3600;
    private long m_SkewToleranceSeconds = 60;
    private int m_SyncTimeout = 60;
    private int m_TryAgainSeconds = 300;
    private int m_attemptCount;
    private boolean m_bForceSync;
    private boolean m_bLastSyncFailed;
    private boolean m_bSynchronizing;
    private long m_lastLocalTime;
    private long m_lastProbeTime;
    private long m_lastSyncTime;
    private long m_nextRetryTime;
    private long m_timeAdjustment;

    private abstract class TimeRequestHandler {
        public abstract void handleResult(boolean z, long j, long j2, long j3);

        private TimeRequestHandler() {
        }
    }

    public static TimeCorrector getInstance() {
        if (s_instance == null) {
            s_instance = new TimeCorrector();
        }
        return s_instance;
    }

    public void update() {
        if (bNeedsProbe()) {
            startSync();
        } else {
            checkForZombieSync();
        }
    }

    public long currentTimeSeconds() {
        return systemTimeSeconds() + this.m_timeAdjustment;
    }

    public boolean bUsingAdjustedTime() {
        return this.m_timeAdjustment != 0;
    }

    public void hintSync() {
        if (!this.m_bSynchronizing) {
            long now = systemTimeSeconds();
            if (this.m_lastProbeTime == 0) {
                this.m_bForceSync = true;
            } else if (now - this.m_lastProbeTime < ((long) this.m_HintProbeFrequencySeconds)) {
            } else {
                if (bUsingAdjustedTime() || this.m_bLastSyncFailed) {
                    this.m_bForceSync = true;
                }
            }
        }
    }

    private boolean bNeedsProbe() {
        if (this.m_bSynchronizing) {
            return false;
        }
        if (this.m_bForceSync) {
            this.m_bForceSync = false;
            return true;
        }
        boolean result = bLocalTimeJumped();
        if (!result) {
            long now = systemTimeSeconds();
            if (this.m_nextRetryTime > 0 && now > this.m_nextRetryTime) {
                result = true;
            } else if (bUsingAdjustedTime()) {
                result = now - this.m_lastProbeTime >= ((long) this.m_AdjustedTimeProbeFrequencySeconds);
            } else {
                result = now - this.m_lastProbeTime >= ((long) this.m_ProbeFrequencySeconds);
            }
        }
        return result;
    }

    private void startSync() {
        this.m_bSynchronizing = true;
        this.m_attemptCount = 0;
        this.m_nextRetryTime = 0;
        this.m_bLastSyncFailed = false;
        this.m_lastProbeTime = systemTimeSeconds();
        continueSync();
    }

    private void retrySync() {
        if (this.m_attemptCount <= this.m_MaxAttempts) {
            continueSync();
        } else {
            failedSync((long) this.m_TryAgainSeconds);
        }
    }

    private void checkForZombieSync() {
        if (this.m_bSynchronizing && systemTimeSeconds() - this.m_lastProbeTime > ((long) (this.m_SyncTimeout * this.m_MaxAttempts))) {
            failedSync((long) this.m_TryAgainSeconds);
        }
    }

    private void continueSync() {
        this.m_attemptCount++;
        getServerTime(new TimeRequestHandler() {
            public void handleResult(boolean bSuccess, long requestStartTime, long serverTime, long now) {
                if (bSuccess) {
                    boolean bUseServerTime = true;
                    long delta = serverTime - now;
                    if (now < requestStartTime) {
                        bUseServerTime = false;
                    }
                    if (serverTime < 1418057957 || serverTime > 4133808000L) {
                        bUseServerTime = false;
                    }
                    if (now - requestStartTime > 10) {
                        bUseServerTime = false;
                    }
                    if (delta < TimeCorrector.this.m_SkewToleranceSeconds) {
                        bUseServerTime = false;
                    }
                    if (!bUseServerTime) {
                        delta = 0;
                    }
                    TimeCorrector.this.successfulSync(delta);
                    return;
                }
                TimeCorrector.this.retrySync();
            }
        });
    }

    private void successfulSync(long timeAdjustment) {
        this.m_bSynchronizing = false;
        this.m_timeAdjustment = timeAdjustment;
        this.m_lastSyncTime = systemTimeSeconds();
    }

    private void failedSync(long retrySeconds) {
        this.m_timeAdjustment = 0;
        this.m_bSynchronizing = false;
        this.m_bLastSyncFailed = true;
        this.m_nextRetryTime = systemTimeSeconds() + retrySeconds;
    }

    private static long extractLongValue(JSONObject json, String key, long defaultValue, long minValue, long maxValue) {
        if (!json.has(key)) {
            return defaultValue;
        }
        long value = Long.parseLong(json.optString(key, "0"));
        if (value < minValue) {
            value = minValue;
        }
        if (value > maxValue) {
            value = maxValue;
        }
        return value;
    }

    private static int extractIntValue(JSONObject json, String key, int defaultValue, int minValue, int maxValue) {
        if (!json.has(key)) {
            return defaultValue;
        }
        try {
            int value = Integer.parseInt(json.optString(key, "0"));
            if (value < minValue) {
                value = minValue;
            }
            if (value > maxValue) {
                value = maxValue;
            }
            return value;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    private void extractSyncParameters(JSONObject json) {
        this.m_SkewToleranceSeconds = extractLongValue(json, "skew_tolerance_seconds", this.m_SkewToleranceSeconds, 10, 300);
        this.m_LargeTimeJink = extractLongValue(json, "large_time_jink", this.m_LargeTimeJink, 60, 31536000);
        this.m_ProbeFrequencySeconds = extractIntValue(json, "probe_frequency_seconds", this.m_ProbeFrequencySeconds, 60, 31536000);
        this.m_AdjustedTimeProbeFrequencySeconds = extractIntValue(json, "adjusted_time_probe_frequency_seconds", this.m_AdjustedTimeProbeFrequencySeconds, 60, 31536000);
        this.m_HintProbeFrequencySeconds = extractIntValue(json, "hint_probe_frequency_seconds", this.m_HintProbeFrequencySeconds, 60, 31536000);
        this.m_SyncTimeout = extractIntValue(json, "sync_timeout", this.m_SyncTimeout, 60, 31536000);
        this.m_TryAgainSeconds = extractIntValue(json, "try_again_seconds", this.m_TryAgainSeconds, 60, 31536000);
        this.m_MaxAttempts = extractIntValue(json, "max_attempts", this.m_MaxAttempts, 0, 10);
    }

    private void getServerTime(final TimeRequestHandler handler) {
        final long requestStartTime = systemTimeSeconds();
        RequestBuilder requestBuilder = Endpoints.getTwoFactorQueryTimeRequestBuilder();
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject json) {
                if (json.optBoolean("allow_correction", true)) {
                    long serverTime = Long.parseLong(json.optString("server_time", "0"));
                    TimeCorrector.this.extractSyncParameters(json);
                    if (serverTime > 0) {
                        handler.handleResult(true, requestStartTime, serverTime, TimeCorrector.this.systemTimeSeconds());
                        return;
                    }
                    handler.handleResult(false, requestStartTime, 0, TimeCorrector.this.systemTimeSeconds());
                    return;
                }
                handler.handleResult(false, requestStartTime, 0, TimeCorrector.this.systemTimeSeconds());
            }

            public void onError(RequestErrorInfo errorInfo) {
                handler.handleResult(false, requestStartTime, 0, TimeCorrector.this.systemTimeSeconds());
            }
        });
        SteamCommunityApplication.GetInstance().sendRequest(requestBuilder);
    }

    private boolean bLocalTimeJumped() {
        boolean result = false;
        long now = systemTimeSeconds();
        if (this.m_lastLocalTime > 0 && Math.abs(now - this.m_lastLocalTime) > this.m_LargeTimeJink) {
            result = true;
        }
        this.m_lastLocalTime = now;
        return result;
    }

    private long systemTimeSeconds() {
        return System.currentTimeMillis() / 1000;
    }
}
