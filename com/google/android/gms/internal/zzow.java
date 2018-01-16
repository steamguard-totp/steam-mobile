package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@zzmb
public class zzow {
    private boolean zzTw;
    private final LinkedList<zza> zzVC;
    private final String zzVD;
    private final String zzVE;
    private long zzVF;
    private long zzVG;
    private long zzVH;
    private long zzVI;
    private long zzVJ;
    private long zzVK;
    private final Object zzrN;
    private final zzoy zzuG;

    @zzmb
    private static final class zza {
        private long zzVL = -1;
        private long zzVM = -1;

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong("topen", this.zzVL);
            bundle.putLong("tclose", this.zzVM);
            return bundle;
        }

        public long zzjC() {
            return this.zzVM;
        }

        public void zzjD() {
            this.zzVM = SystemClock.elapsedRealtime();
        }

        public void zzjE() {
            this.zzVL = SystemClock.elapsedRealtime();
        }
    }

    public zzow(zzoy com_google_android_gms_internal_zzoy, String str, String str2) {
        this.zzrN = new Object();
        this.zzVF = -1;
        this.zzVG = -1;
        this.zzTw = false;
        this.zzVH = -1;
        this.zzVI = 0;
        this.zzVJ = -1;
        this.zzVK = -1;
        this.zzuG = com_google_android_gms_internal_zzoy;
        this.zzVD = str;
        this.zzVE = str2;
        this.zzVC = new LinkedList();
    }

    public zzow(String str, String str2) {
        this(zzv.zzcN(), str, str2);
    }

    public Bundle toBundle() {
        Bundle bundle;
        synchronized (this.zzrN) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.zzVD);
            bundle.putString("slotid", this.zzVE);
            bundle.putBoolean("ismediation", this.zzTw);
            bundle.putLong("treq", this.zzVJ);
            bundle.putLong("tresponse", this.zzVK);
            bundle.putLong("timp", this.zzVG);
            bundle.putLong("tload", this.zzVH);
            bundle.putLong("pcc", this.zzVI);
            bundle.putLong("tfetch", this.zzVF);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzVC.iterator();
            while (it.hasNext()) {
                arrayList.add(((zza) it.next()).toBundle());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public void zzC(boolean z) {
        synchronized (this.zzrN) {
            if (this.zzVK != -1) {
                this.zzVH = SystemClock.elapsedRealtime();
                if (!z) {
                    this.zzVG = this.zzVH;
                    this.zzuG.zza(this);
                }
            }
        }
    }

    public void zzD(boolean z) {
        synchronized (this.zzrN) {
            if (this.zzVK != -1) {
                this.zzTw = z;
                this.zzuG.zza(this);
            }
        }
    }

    public void zzjA() {
        synchronized (this.zzrN) {
            if (this.zzVK != -1) {
                zza com_google_android_gms_internal_zzow_zza = new zza();
                com_google_android_gms_internal_zzow_zza.zzjE();
                this.zzVC.add(com_google_android_gms_internal_zzow_zza);
                this.zzVI++;
                this.zzuG.zzjM().zzjA();
                this.zzuG.zza(this);
            }
        }
    }

    public void zzjB() {
        synchronized (this.zzrN) {
            if (!(this.zzVK == -1 || this.zzVC.isEmpty())) {
                zza com_google_android_gms_internal_zzow_zza = (zza) this.zzVC.getLast();
                if (com_google_android_gms_internal_zzow_zza.zzjC() == -1) {
                    com_google_android_gms_internal_zzow_zza.zzjD();
                    this.zzuG.zza(this);
                }
            }
        }
    }

    public void zzjz() {
        synchronized (this.zzrN) {
            if (this.zzVK != -1 && this.zzVG == -1) {
                this.zzVG = SystemClock.elapsedRealtime();
                this.zzuG.zza(this);
            }
            this.zzuG.zzjM().zzjz();
        }
    }

    public void zzm(long j) {
        synchronized (this.zzrN) {
            this.zzVK = j;
            if (this.zzVK != -1) {
                this.zzuG.zza(this);
            }
        }
    }

    public void zzn(long j) {
        synchronized (this.zzrN) {
            if (this.zzVK != -1) {
                this.zzVF = j;
                this.zzuG.zza(this);
            }
        }
    }

    public void zzt(zzdy com_google_android_gms_internal_zzdy) {
        synchronized (this.zzrN) {
            this.zzVJ = SystemClock.elapsedRealtime();
            this.zzuG.zzjM().zzb(com_google_android_gms_internal_zzdy, this.zzVJ);
        }
    }
}
