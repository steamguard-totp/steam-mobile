package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzrw;
import com.google.android.gms.internal.zzsq;
import com.google.android.gms.internal.zzsq.zza;
import com.google.android.gms.internal.zzsw;
import com.google.android.gms.internal.zzth;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class GoogleAnalytics extends zza {
    private static List<Runnable> zzaaF = new ArrayList();
    private Set<Object> zzaaG = new HashSet();
    private boolean zzaaI;
    private volatile boolean zzaaJ;
    private boolean zzaaK;
    private boolean zztW;

    public GoogleAnalytics(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
    }

    public static GoogleAnalytics getInstance(Context context) {
        return zzrw.zzW(context).zznE();
    }

    public static void zzlW() {
        synchronized (GoogleAnalytics.class) {
            if (zzaaF != null) {
                for (Runnable run : zzaaF) {
                    run.run();
                }
                zzaaF = null;
            }
        }
    }

    private zzth zzma() {
        return zzlM().zzma();
    }

    public boolean getAppOptOut() {
        return this.zzaaJ;
    }

    public void initialize() {
        zzlV();
        this.zztW = true;
    }

    public boolean isDryRunEnabled() {
        return this.zzaaI;
    }

    public boolean isInitialized() {
        return this.zztW;
    }

    public Tracker newTracker(String str) {
        Tracker tracker;
        synchronized (this) {
            tracker = new Tracker(zzlM(), str, null);
            tracker.initialize();
        }
        return tracker;
    }

    public void setDryRun(boolean z) {
        this.zzaaI = z;
    }

    @Deprecated
    public void setLogger(Logger logger) {
        zzsw.setLogger(logger);
        if (!this.zzaaK) {
            zza com_google_android_gms_internal_zzsq_zza = zzsq.zzaek;
            String str = (String) zzsq.zzaek.get();
            new StringBuilder(String.valueOf(str).length() + 112).append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.").append(str).append(" DEBUG").toString();
            this.zzaaK = true;
        }
    }

    void zzlV() {
        zzth zzma = zzma();
        zzma.zzpi();
        if (zzma.zzpm()) {
            setDryRun(zzma.zzpn());
        }
        zzma.zzpi();
    }

    public String zzlX() {
        zzac.zzdo("getClientId can not be called from the main thread");
        return zzlM().zznH().zzop();
    }
}
