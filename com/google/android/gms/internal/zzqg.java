package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

@zzmb
class zzqg {
    private final Object zzYp = new Object();
    private final List<Runnable> zzYq = new ArrayList();
    private final List<Runnable> zzYr = new ArrayList();
    private boolean zzYs = false;

    private void zze(Runnable runnable) {
        zzph.zza(runnable);
    }

    private void zzf(Runnable runnable) {
        zzpx.zzXU.post(runnable);
    }

    public void zzc(Runnable runnable) {
        synchronized (this.zzYp) {
            if (this.zzYs) {
                zze(runnable);
            } else {
                this.zzYq.add(runnable);
            }
        }
    }

    public void zzd(Runnable runnable) {
        synchronized (this.zzYp) {
            if (this.zzYs) {
                zzf(runnable);
            } else {
                this.zzYr.add(runnable);
            }
        }
    }

    public void zzkM() {
        synchronized (this.zzYp) {
            if (this.zzYs) {
                return;
            }
            for (Runnable zze : this.zzYq) {
                zze(zze);
            }
            for (Runnable zze2 : this.zzYr) {
                zzf(zze2);
            }
            this.zzYq.clear();
            this.zzYr.clear();
            this.zzYs = true;
        }
    }
}
