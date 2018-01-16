package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.zzaq;
import com.google.android.gms.internal.zzau;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzph;
import com.google.android.gms.internal.zzpy;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@zzmb
class zzi implements zzaq, Runnable {
    private zzw zzsw;
    private final List<Object[]> zztf = new Vector();
    private final AtomicReference<zzaq> zztg = new AtomicReference();
    CountDownLatch zzth = new CountDownLatch(1);

    public zzi(zzw com_google_android_gms_ads_internal_zzw) {
        this.zzsw = com_google_android_gms_ads_internal_zzw;
        if (zzeh.zzeO().zzkJ()) {
            zzph.zza((Runnable) this);
        } else {
            run();
        }
    }

    private void zzcf() {
        if (!this.zztf.isEmpty()) {
            for (Object[] objArr : this.zztf) {
                if (objArr.length == 1) {
                    ((zzaq) this.zztg.get()).zza((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    ((zzaq) this.zztg.get()).zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.zztf.clear();
        }
    }

    private Context zzg(Context context) {
        if (!((Boolean) zzfx.zzBd.get()).booleanValue()) {
            return context;
        }
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    public void run() {
        try {
            boolean z = !((Boolean) zzfx.zzBz.get()).booleanValue() || this.zzsw.zzvf.zzYd;
            zza(zzd(this.zzsw.zzvf.zzaZ, zzg(this.zzsw.zzqr), z));
        } finally {
            this.zzth.countDown();
            this.zzsw = null;
        }
    }

    public String zza(Context context, String str, View view) {
        if (zzce()) {
            zzaq com_google_android_gms_internal_zzaq = (zzaq) this.zztg.get();
            if (com_google_android_gms_internal_zzaq != null) {
                zzcf();
                return com_google_android_gms_internal_zzaq.zza(zzg(context), str, view);
            }
        }
        return "";
    }

    public String zza(Context context, byte[] bArr) {
        if (zzce()) {
            zzaq com_google_android_gms_internal_zzaq = (zzaq) this.zztg.get();
            if (com_google_android_gms_internal_zzaq != null) {
                zzcf();
                return com_google_android_gms_internal_zzaq.zzb(zzg(context));
            }
        }
        return "";
    }

    public void zza(int i, int i2, int i3) {
        zzaq com_google_android_gms_internal_zzaq = (zzaq) this.zztg.get();
        if (com_google_android_gms_internal_zzaq != null) {
            zzcf();
            com_google_android_gms_internal_zzaq.zza(i, i2, i3);
            return;
        }
        this.zztf.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    public void zza(MotionEvent motionEvent) {
        zzaq com_google_android_gms_internal_zzaq = (zzaq) this.zztg.get();
        if (com_google_android_gms_internal_zzaq != null) {
            zzcf();
            com_google_android_gms_internal_zzaq.zza(motionEvent);
            return;
        }
        this.zztf.add(new Object[]{motionEvent});
    }

    protected void zza(zzaq com_google_android_gms_internal_zzaq) {
        this.zztg.set(com_google_android_gms_internal_zzaq);
    }

    public String zzb(Context context) {
        return zza(context, null);
    }

    protected boolean zzce() {
        try {
            this.zzth.await();
            return true;
        } catch (Throwable e) {
            zzpy.zzc("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    protected zzaq zzd(String str, Context context, boolean z) {
        return zzau.zza(str, context, z);
    }
}
