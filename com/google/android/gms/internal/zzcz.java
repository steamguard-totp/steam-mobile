package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzmb
public class zzcz {
    private final Object zzrN = new Object();
    private int zzxt;
    private List<zzcy> zzxu = new LinkedList();

    public boolean zza(zzcy com_google_android_gms_internal_zzcy) {
        boolean z;
        synchronized (this.zzrN) {
            if (this.zzxu.contains(com_google_android_gms_internal_zzcy)) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean zzb(zzcy com_google_android_gms_internal_zzcy) {
        synchronized (this.zzrN) {
            Iterator it = this.zzxu.iterator();
            while (it.hasNext()) {
                zzcy com_google_android_gms_internal_zzcy2 = (zzcy) it.next();
                if (!((Boolean) zzfx.zzBU.get()).booleanValue() || zzv.zzcN().zzjJ()) {
                    if (((Boolean) zzfx.zzBW.get()).booleanValue() && !zzv.zzcN().zzjK() && com_google_android_gms_internal_zzcy != com_google_android_gms_internal_zzcy2 && com_google_android_gms_internal_zzcy2.zzdX().equals(com_google_android_gms_internal_zzcy.zzdX())) {
                        it.remove();
                        return true;
                    }
                } else if (com_google_android_gms_internal_zzcy != com_google_android_gms_internal_zzcy2 && com_google_android_gms_internal_zzcy2.zzdV().equals(com_google_android_gms_internal_zzcy.zzdV())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public void zzc(zzcy com_google_android_gms_internal_zzcy) {
        synchronized (this.zzrN) {
            if (this.zzxu.size() >= 10) {
                zzpy.zzbc("Queue is full, current size = " + this.zzxu.size());
                this.zzxu.remove(0);
            }
            int i = this.zzxt;
            this.zzxt = i + 1;
            com_google_android_gms_internal_zzcy.zzn(i);
            this.zzxu.add(com_google_android_gms_internal_zzcy);
        }
    }

    public zzcy zzed() {
        zzcy com_google_android_gms_internal_zzcy = null;
        int i = 0;
        synchronized (this.zzrN) {
            if (this.zzxu.size() == 0) {
                zzpy.zzbc("Queue empty");
                return null;
            } else if (this.zzxu.size() >= 2) {
                int i2 = Integer.MIN_VALUE;
                int i3 = 0;
                for (zzcy com_google_android_gms_internal_zzcy2 : this.zzxu) {
                    zzcy com_google_android_gms_internal_zzcy3;
                    int i4;
                    int score = com_google_android_gms_internal_zzcy2.getScore();
                    if (score > i2) {
                        i = score;
                        com_google_android_gms_internal_zzcy3 = com_google_android_gms_internal_zzcy2;
                        i4 = i3;
                    } else {
                        i4 = i;
                        com_google_android_gms_internal_zzcy3 = com_google_android_gms_internal_zzcy;
                        i = i2;
                    }
                    i3++;
                    i2 = i;
                    com_google_android_gms_internal_zzcy = com_google_android_gms_internal_zzcy3;
                    i = i4;
                }
                this.zzxu.remove(i);
                return com_google_android_gms_internal_zzcy;
            } else {
                com_google_android_gms_internal_zzcy2 = (zzcy) this.zzxu.get(0);
                com_google_android_gms_internal_zzcy2.zzdY();
                return com_google_android_gms_internal_zzcy2;
            }
        }
    }
}
