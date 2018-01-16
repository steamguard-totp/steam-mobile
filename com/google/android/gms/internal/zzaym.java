package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.tagmanager.zzbb;
import java.util.Date;
import java.util.Map;

public class zzaym implements zze {
    private final Bundle zzbHE;
    private final String zzbHF;
    private final Date zzbHG;
    private final String zzbHH;
    private Map<String, Object> zzbHI;
    private boolean zzbHJ;
    private final zzbb zzbHp;

    public zzaym(String str, Bundle bundle, String str2, Date date, boolean z, zzbb com_google_android_gms_tagmanager_zzbb) {
        this.zzbHF = str;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzbHE = bundle;
        this.zzbHG = date;
        this.zzbHH = str2;
        this.zzbHJ = z;
        this.zzbHp = com_google_android_gms_tagmanager_zzbb;
    }

    public long currentTimeMillis() {
        return this.zzbHG.getTime();
    }

    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    public long nanoTime() {
        return System.nanoTime();
    }

    public Map<String, Object> zzPd() {
        if (this.zzbHI == null) {
            try {
                this.zzbHI = this.zzbHp.zzPd();
            } catch (RemoteException e) {
                String str = "Error calling measurement proxy:";
                String valueOf = String.valueOf(e.getMessage());
                zzayx.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
        return this.zzbHI;
    }

    public String zzQp() {
        return this.zzbHF;
    }

    public Bundle zzQq() {
        return this.zzbHE;
    }

    public String zzQr() {
        return this.zzbHH;
    }

    public boolean zzQs() {
        return this.zzbHJ;
    }

    public void zzaO(boolean z) {
        this.zzbHJ = z;
    }
}
