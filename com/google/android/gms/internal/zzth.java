package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public class zzth extends zzru {
    protected boolean zzaaI;
    protected String zzabK;
    protected String zzabL;
    protected int zzaeb;
    protected boolean zzafU;
    protected boolean zzafV;
    protected int zzafd;

    public zzth(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
    }

    private static int zzcj(String str) {
        String toLowerCase = str.toLowerCase();
        return "verbose".equals(toLowerCase) ? 0 : "info".equals(toLowerCase) ? 1 : "warning".equals(toLowerCase) ? 2 : "error".equals(toLowerCase) ? 3 : -1;
    }

    void zza(zzss com_google_android_gms_internal_zzss) {
        int zzcj;
        zzbO("Loading global XML config values");
        if (com_google_android_gms_internal_zzss.zzpg()) {
            String zzmx = com_google_android_gms_internal_zzss.zzmx();
            this.zzabK = zzmx;
            zzb("XML config - app name", zzmx);
        }
        if (com_google_android_gms_internal_zzss.zzph()) {
            zzmx = com_google_android_gms_internal_zzss.zzmy();
            this.zzabL = zzmx;
            zzb("XML config - app version", zzmx);
        }
        if (com_google_android_gms_internal_zzss.zzpi()) {
            zzcj = zzcj(com_google_android_gms_internal_zzss.zzpj());
            if (zzcj >= 0) {
                this.zzaeb = zzcj;
                zza("XML config - log level", Integer.valueOf(zzcj));
            }
        }
        if (com_google_android_gms_internal_zzss.zzpk()) {
            zzcj = com_google_android_gms_internal_zzss.zzpl();
            this.zzafd = zzcj;
            this.zzafU = true;
            zzb("XML config - dispatch period (sec)", Integer.valueOf(zzcj));
        }
        if (com_google_android_gms_internal_zzss.zzpm()) {
            boolean zzpn = com_google_android_gms_internal_zzss.zzpn();
            this.zzaaI = zzpn;
            this.zzafV = true;
            zzb("XML config - dry run", Boolean.valueOf(zzpn));
        }
    }

    protected void zzmr() {
        zzqc();
    }

    public String zzmx() {
        zznA();
        return this.zzabK;
    }

    public String zzmy() {
        zznA();
        return this.zzabL;
    }

    public boolean zzpi() {
        zznA();
        return false;
    }

    public boolean zzpk() {
        zznA();
        return this.zzafU;
    }

    public boolean zzpm() {
        zznA();
        return this.zzafV;
    }

    public boolean zzpn() {
        zznA();
        return this.zzaaI;
    }

    public int zzqb() {
        zznA();
        return this.zzafd;
    }

    protected void zzqc() {
        ApplicationInfo applicationInfo;
        Context context = getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 129);
        } catch (NameNotFoundException e) {
            zzd("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzbR("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null) {
            int i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource");
            if (i > 0) {
                zzss com_google_android_gms_internal_zzss = (zzss) new zzsr(zznp()).zzaG(i);
                if (com_google_android_gms_internal_zzss != null) {
                    zza(com_google_android_gms_internal_zzss);
                }
            }
        }
    }
}
