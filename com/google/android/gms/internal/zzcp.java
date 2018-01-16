package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.zzcq.zza;
import com.google.android.gms.internal.zzcq.zzd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.WeakHashMap;

@zzmb
public class zzcp implements zzcr {
    private final Object zzrN = new Object();
    private final zzqa zztr;
    private final WeakHashMap<zzov, zzcq> zzvX = new WeakHashMap();
    private final ArrayList<zzcq> zzvY = new ArrayList();
    private final Context zzvZ;
    private final zzja zzwa;

    public zzcp(Context context, zzqa com_google_android_gms_internal_zzqa, zzja com_google_android_gms_internal_zzja) {
        this.zzvZ = context.getApplicationContext();
        this.zztr = com_google_android_gms_internal_zzqa;
        this.zzwa = com_google_android_gms_internal_zzja;
    }

    public void zza(zzcq com_google_android_gms_internal_zzcq) {
        synchronized (this.zzrN) {
            if (!com_google_android_gms_internal_zzcq.zzdF()) {
                this.zzvY.remove(com_google_android_gms_internal_zzcq);
                Iterator it = this.zzvX.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Entry) it.next()).getValue() == com_google_android_gms_internal_zzcq) {
                        it.remove();
                    }
                }
            }
        }
    }

    public void zza(zzec com_google_android_gms_internal_zzec, zzov com_google_android_gms_internal_zzov) {
        zza(com_google_android_gms_internal_zzec, com_google_android_gms_internal_zzov, com_google_android_gms_internal_zzov.zzMZ.getView());
    }

    public void zza(zzec com_google_android_gms_internal_zzec, zzov com_google_android_gms_internal_zzov, View view) {
        zza(com_google_android_gms_internal_zzec, com_google_android_gms_internal_zzov, new zzd(view, com_google_android_gms_internal_zzov), null);
    }

    public void zza(zzec com_google_android_gms_internal_zzec, zzov com_google_android_gms_internal_zzov, View view, zzjb com_google_android_gms_internal_zzjb) {
        zza(com_google_android_gms_internal_zzec, com_google_android_gms_internal_zzov, new zzd(view, com_google_android_gms_internal_zzov), com_google_android_gms_internal_zzjb);
    }

    public void zza(zzec com_google_android_gms_internal_zzec, zzov com_google_android_gms_internal_zzov, zzcx com_google_android_gms_internal_zzcx, zzjb com_google_android_gms_internal_zzjb) {
        synchronized (this.zzrN) {
            zzcq com_google_android_gms_internal_zzcq;
            if (zzi(com_google_android_gms_internal_zzov)) {
                com_google_android_gms_internal_zzcq = (zzcq) this.zzvX.get(com_google_android_gms_internal_zzov);
            } else {
                com_google_android_gms_internal_zzcq = new zzcq(this.zzvZ, com_google_android_gms_internal_zzec, com_google_android_gms_internal_zzov, this.zztr, com_google_android_gms_internal_zzcx);
                com_google_android_gms_internal_zzcq.zza((zzcr) this);
                this.zzvX.put(com_google_android_gms_internal_zzov, com_google_android_gms_internal_zzcq);
                this.zzvY.add(com_google_android_gms_internal_zzcq);
            }
            if (com_google_android_gms_internal_zzjb != null) {
                com_google_android_gms_internal_zzcq.zza(new zzcs(com_google_android_gms_internal_zzcq, com_google_android_gms_internal_zzjb));
            } else {
                com_google_android_gms_internal_zzcq.zza(new zzct(com_google_android_gms_internal_zzcq, this.zzwa));
            }
        }
    }

    public void zza(zzec com_google_android_gms_internal_zzec, zzov com_google_android_gms_internal_zzov, zzgu com_google_android_gms_internal_zzgu) {
        zza(com_google_android_gms_internal_zzec, com_google_android_gms_internal_zzov, new zza(com_google_android_gms_internal_zzgu), null);
    }

    public boolean zzi(zzov com_google_android_gms_internal_zzov) {
        boolean z;
        synchronized (this.zzrN) {
            zzcq com_google_android_gms_internal_zzcq = (zzcq) this.zzvX.get(com_google_android_gms_internal_zzov);
            z = com_google_android_gms_internal_zzcq != null && com_google_android_gms_internal_zzcq.zzdF();
        }
        return z;
    }

    public void zzj(zzov com_google_android_gms_internal_zzov) {
        synchronized (this.zzrN) {
            zzcq com_google_android_gms_internal_zzcq = (zzcq) this.zzvX.get(com_google_android_gms_internal_zzov);
            if (com_google_android_gms_internal_zzcq != null) {
                com_google_android_gms_internal_zzcq.zzdD();
            }
        }
    }

    public void zzk(zzov com_google_android_gms_internal_zzov) {
        synchronized (this.zzrN) {
            zzcq com_google_android_gms_internal_zzcq = (zzcq) this.zzvX.get(com_google_android_gms_internal_zzov);
            if (com_google_android_gms_internal_zzcq != null) {
                com_google_android_gms_internal_zzcq.stop();
            }
        }
    }

    public void zzl(zzov com_google_android_gms_internal_zzov) {
        synchronized (this.zzrN) {
            zzcq com_google_android_gms_internal_zzcq = (zzcq) this.zzvX.get(com_google_android_gms_internal_zzov);
            if (com_google_android_gms_internal_zzcq != null) {
                com_google_android_gms_internal_zzcq.pause();
            }
        }
    }

    public void zzm(zzov com_google_android_gms_internal_zzov) {
        synchronized (this.zzrN) {
            zzcq com_google_android_gms_internal_zzcq = (zzcq) this.zzvX.get(com_google_android_gms_internal_zzov);
            if (com_google_android_gms_internal_zzcq != null) {
                com_google_android_gms_internal_zzcq.resume();
            }
        }
    }
}
