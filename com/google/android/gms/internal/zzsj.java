package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzt;
import java.util.HashSet;
import java.util.Set;

public class zzsj {
    private final zzrw zzaam;
    private volatile Boolean zzadY;
    private String zzadZ;
    private Set<Integer> zzaea;

    protected zzsj(zzrw com_google_android_gms_internal_zzrw) {
        zzac.zzw(com_google_android_gms_internal_zzrw);
        this.zzaam = com_google_android_gms_internal_zzrw;
    }

    public int zzoA() {
        return ((Integer) zzsq.zzaeH.get()).intValue();
    }

    public int zzoB() {
        return ((Integer) zzsq.zzaeI.get()).intValue();
    }

    public long zzoC() {
        return ((Long) zzsq.zzaer.get()).longValue();
    }

    public long zzoD() {
        return ((Long) zzsq.zzaeq.get()).longValue();
    }

    public long zzoE() {
        return ((Long) zzsq.zzaeu.get()).longValue();
    }

    public long zzoF() {
        return ((Long) zzsq.zzaev.get()).longValue();
    }

    public int zzoG() {
        return ((Integer) zzsq.zzaew.get()).intValue();
    }

    public int zzoH() {
        return ((Integer) zzsq.zzaex.get()).intValue();
    }

    public long zzoI() {
        return (long) ((Integer) zzsq.zzaeK.get()).intValue();
    }

    public String zzoJ() {
        return (String) zzsq.zzaez.get();
    }

    public String zzoK() {
        return (String) zzsq.zzaey.get();
    }

    public String zzoL() {
        return (String) zzsq.zzaeA.get();
    }

    public String zzoM() {
        return (String) zzsq.zzaeB.get();
    }

    public zzsd zzoN() {
        return zzsd.zzbX((String) zzsq.zzaeD.get());
    }

    public zzsg zzoO() {
        return zzsg.zzbY((String) zzsq.zzaeE.get());
    }

    public Set<Integer> zzoP() {
        String str = (String) zzsq.zzaeJ.get();
        if (this.zzaea == null || this.zzadZ == null || !this.zzadZ.equals(str)) {
            String[] split = TextUtils.split(str, ",");
            Set hashSet = new HashSet();
            for (String parseInt : split) {
                try {
                    hashSet.add(Integer.valueOf(Integer.parseInt(parseInt)));
                } catch (NumberFormatException e) {
                }
            }
            this.zzadZ = str;
            this.zzaea = hashSet;
        }
        return this.zzaea;
    }

    public long zzoQ() {
        return ((Long) zzsq.zzaeS.get()).longValue();
    }

    public long zzoR() {
        return ((Long) zzsq.zzaeT.get()).longValue();
    }

    public long zzoS() {
        return ((Long) zzsq.zzaeW.get()).longValue();
    }

    public int zzoT() {
        return ((Integer) zzsq.zzaen.get()).intValue();
    }

    public int zzoU() {
        return ((Integer) zzsq.zzaep.get()).intValue();
    }

    public String zzoV() {
        return "google_analytics_v4.db";
    }

    public int zzoW() {
        return ((Integer) zzsq.zzaeM.get()).intValue();
    }

    public int zzoX() {
        return ((Integer) zzsq.zzaeN.get()).intValue();
    }

    public long zzoY() {
        return ((Long) zzsq.zzaeO.get()).longValue();
    }

    public long zzoZ() {
        return ((Long) zzsq.zzaeX.get()).longValue();
    }

    public boolean zzow() {
        if (this.zzadY == null) {
            synchronized (this) {
                if (this.zzadY == null) {
                    ApplicationInfo applicationInfo = this.zzaam.getContext().getApplicationInfo();
                    String zzyK = zzt.zzyK();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = str != null && str.equals(zzyK);
                        this.zzadY = Boolean.valueOf(z);
                    }
                    if ((this.zzadY == null || !this.zzadY.booleanValue()) && "com.google.android.gms.analytics".equals(zzyK)) {
                        this.zzadY = Boolean.TRUE;
                    }
                    if (this.zzadY == null) {
                        this.zzadY = Boolean.TRUE;
                        this.zzaam.zznr().zzbS("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzadY.booleanValue();
    }

    public boolean zzox() {
        return ((Boolean) zzsq.zzaej.get()).booleanValue();
    }

    public int zzoy() {
        return ((Integer) zzsq.zzaeC.get()).intValue();
    }

    public int zzoz() {
        return ((Integer) zzsq.zzaeG.get()).intValue();
    }
}
