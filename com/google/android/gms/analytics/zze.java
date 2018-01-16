package com.google.android.gms.analytics;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class zze {
    private final zzg zzaaT;
    private boolean zzaaU;
    private long zzaaV;
    private long zzaaW;
    private long zzaaX;
    private long zzaaY;
    private long zzaaZ;
    private boolean zzaba;
    private final Map<Class<? extends zzf>, zzf> zzabb;
    private final List<zzi> zzabc;
    private final com.google.android.gms.common.util.zze zzuI;

    zze(zze com_google_android_gms_analytics_zze) {
        this.zzaaT = com_google_android_gms_analytics_zze.zzaaT;
        this.zzuI = com_google_android_gms_analytics_zze.zzuI;
        this.zzaaV = com_google_android_gms_analytics_zze.zzaaV;
        this.zzaaW = com_google_android_gms_analytics_zze.zzaaW;
        this.zzaaX = com_google_android_gms_analytics_zze.zzaaX;
        this.zzaaY = com_google_android_gms_analytics_zze.zzaaY;
        this.zzaaZ = com_google_android_gms_analytics_zze.zzaaZ;
        this.zzabc = new ArrayList(com_google_android_gms_analytics_zze.zzabc);
        this.zzabb = new HashMap(com_google_android_gms_analytics_zze.zzabb.size());
        for (Entry entry : com_google_android_gms_analytics_zze.zzabb.entrySet()) {
            zzf zzc = zzc((Class) entry.getKey());
            ((zzf) entry.getValue()).zzb(zzc);
            this.zzabb.put((Class) entry.getKey(), zzc);
        }
    }

    zze(zzg com_google_android_gms_analytics_zzg, com.google.android.gms.common.util.zze com_google_android_gms_common_util_zze) {
        zzac.zzw(com_google_android_gms_analytics_zzg);
        zzac.zzw(com_google_android_gms_common_util_zze);
        this.zzaaT = com_google_android_gms_analytics_zzg;
        this.zzuI = com_google_android_gms_common_util_zze;
        this.zzaaY = 1800000;
        this.zzaaZ = 3024000000L;
        this.zzabb = new HashMap();
        this.zzabc = new ArrayList();
    }

    private static <T extends zzf> T zzc(Class<T> cls) {
        try {
            return (zzf) cls.newInstance();
        } catch (Throwable e) {
            throw new IllegalArgumentException("dataType doesn't have default constructor", e);
        } catch (Throwable e2) {
            throw new IllegalArgumentException("dataType default constructor is not accessible", e2);
        }
    }

    public <T extends zzf> T zza(Class<T> cls) {
        return (zzf) this.zzabb.get(cls);
    }

    public void zza(zzf com_google_android_gms_analytics_zzf) {
        zzac.zzw(com_google_android_gms_analytics_zzf);
        Class cls = com_google_android_gms_analytics_zzf.getClass();
        if (cls.getSuperclass() != zzf.class) {
            throw new IllegalArgumentException();
        }
        com_google_android_gms_analytics_zzf.zzb(zzb(cls));
    }

    public <T extends zzf> T zzb(Class<T> cls) {
        zzf com_google_android_gms_analytics_zzf = (zzf) this.zzabb.get(cls);
        if (com_google_android_gms_analytics_zzf != null) {
            return com_google_android_gms_analytics_zzf;
        }
        T zzc = zzc(cls);
        this.zzabb.put(cls, zzc);
        return zzc;
    }

    public zze zzmb() {
        return new zze(this);
    }

    public Collection<zzf> zzmc() {
        return this.zzabb.values();
    }

    public List<zzi> zzmd() {
        return this.zzabc;
    }

    public long zzme() {
        return this.zzaaV;
    }

    public void zzmf() {
        zzmj().zze(this);
    }

    public boolean zzmg() {
        return this.zzaaU;
    }

    void zzmh() {
        this.zzaaX = this.zzuI.elapsedRealtime();
        if (this.zzaaW != 0) {
            this.zzaaV = this.zzaaW;
        } else {
            this.zzaaV = this.zzuI.currentTimeMillis();
        }
        this.zzaaU = true;
    }

    zzg zzmi() {
        return this.zzaaT;
    }

    zzh zzmj() {
        return this.zzaaT.zzmj();
    }

    boolean zzmk() {
        return this.zzaba;
    }

    void zzml() {
        this.zzaba = true;
    }

    public void zzp(long j) {
        this.zzaaW = j;
    }
}
