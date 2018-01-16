package com.google.android.gms.analytics;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class zzg<T extends zzg> {
    private final zzh zzabd;
    protected final zze zzabe;
    private final List<Object> zzabf = new ArrayList();

    protected zzg(zzh com_google_android_gms_analytics_zzh, zze com_google_android_gms_common_util_zze) {
        zzac.zzw(com_google_android_gms_analytics_zzh);
        this.zzabd = com_google_android_gms_analytics_zzh;
        zze com_google_android_gms_analytics_zze = new zze(this, com_google_android_gms_common_util_zze);
        com_google_android_gms_analytics_zze.zzml();
        this.zzabe = com_google_android_gms_analytics_zze;
    }

    protected void zza(zze com_google_android_gms_analytics_zze) {
    }

    protected void zzd(zze com_google_android_gms_analytics_zze) {
        Iterator it = this.zzabf.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public zze zzlN() {
        zze zzmb = this.zzabe.zzmb();
        zzd(zzmb);
        return zzmb;
    }

    protected zzh zzmj() {
        return this.zzabd;
    }

    public zze zzmm() {
        return this.zzabe;
    }

    public List<zzi> zzmn() {
        return this.zzabe.zzmd();
    }
}
