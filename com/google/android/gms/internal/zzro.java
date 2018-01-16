package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.zzf;
import com.google.android.gms.common.internal.zzac;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public final class zzro extends zzf<zzro> {
    private String zzacn;
    private int zzaco;
    private int zzacp;
    private String zzacq;
    private String zzacr;
    private boolean zzacs;
    private boolean zzact;

    public zzro() {
        this(false);
    }

    public zzro(boolean z) {
        this(z, zzmZ());
    }

    public zzro(boolean z, int i) {
        zzac.zzcR(i);
        this.zzaco = i;
        this.zzact = z;
    }

    static int zzmZ() {
        UUID randomUUID = UUID.randomUUID();
        int leastSignificantBits = (int) (randomUUID.getLeastSignificantBits() & 2147483647L);
        if (leastSignificantBits != 0) {
            return leastSignificantBits;
        }
        leastSignificantBits = (int) (randomUUID.getMostSignificantBits() & 2147483647L);
        if (leastSignificantBits != 0) {
            return leastSignificantBits;
        }
        Log.e("GAv4", "UUID.randomUUID() returned 0.");
        return Integer.MAX_VALUE;
    }

    public void setScreenName(String str) {
        this.zzacn = str;
    }

    public String toString() {
        Map hashMap = new HashMap();
        hashMap.put("screenName", this.zzacn);
        hashMap.put("interstitial", Boolean.valueOf(this.zzacs));
        hashMap.put("automatic", Boolean.valueOf(this.zzact));
        hashMap.put("screenId", Integer.valueOf(this.zzaco));
        hashMap.put("referrerScreenId", Integer.valueOf(this.zzacp));
        hashMap.put("referrerScreenName", this.zzacq);
        hashMap.put("referrerUri", this.zzacr);
        return zzf.zzj(hashMap);
    }

    public void zzT(boolean z) {
        this.zzact = z;
    }

    public void zzU(boolean z) {
        this.zzacs = z;
    }

    public void zza(zzro com_google_android_gms_internal_zzro) {
        if (!TextUtils.isEmpty(this.zzacn)) {
            com_google_android_gms_internal_zzro.setScreenName(this.zzacn);
        }
        if (this.zzaco != 0) {
            com_google_android_gms_internal_zzro.zzaD(this.zzaco);
        }
        if (this.zzacp != 0) {
            com_google_android_gms_internal_zzro.zzaE(this.zzacp);
        }
        if (!TextUtils.isEmpty(this.zzacq)) {
            com_google_android_gms_internal_zzro.zzbG(this.zzacq);
        }
        if (!TextUtils.isEmpty(this.zzacr)) {
            com_google_android_gms_internal_zzro.zzbH(this.zzacr);
        }
        if (this.zzacs) {
            com_google_android_gms_internal_zzro.zzU(this.zzacs);
        }
        if (this.zzact) {
            com_google_android_gms_internal_zzro.zzT(this.zzact);
        }
    }

    public void zzaD(int i) {
        this.zzaco = i;
    }

    public void zzaE(int i) {
        this.zzacp = i;
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzro) com_google_android_gms_analytics_zzf);
    }

    public void zzbG(String str) {
        this.zzacq = str;
    }

    public void zzbH(String str) {
        if (TextUtils.isEmpty(str)) {
            this.zzacr = null;
        } else {
            this.zzacr = str;
        }
    }

    public String zzna() {
        return this.zzacn;
    }

    public int zznb() {
        return this.zzaco;
    }

    public String zznc() {
        return this.zzacr;
    }
}
