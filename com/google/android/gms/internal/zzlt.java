package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.zzja.zzb;
import com.google.android.gms.internal.zzja.zze;
import com.google.android.gms.internal.zzqi.zzc;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzmb
public class zzlt {
    private static final long zzPS = TimeUnit.SECONDS.toMillis(60);
    private static boolean zzPT = false;
    private static zzja zzPU = null;
    private static final Object zztU = new Object();
    private final Context mContext;
    private final zzr zzGl;
    private final zzav zzGr;
    private zziy zzPV;
    private zze zzPW;
    private zzix zzPX;
    private boolean zzPY = false;
    private final com.google.android.gms.internal.zzov.zza zzPo;

    public static abstract class zza {
        public abstract void zze(zzjb com_google_android_gms_internal_zzjb);

        public void zziO() {
        }
    }

    public zzlt(Context context, com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, zzr com_google_android_gms_ads_internal_zzr, zzav com_google_android_gms_internal_zzav) {
        this.mContext = context;
        this.zzPo = com_google_android_gms_internal_zzov_zza;
        this.zzGl = com_google_android_gms_ads_internal_zzr;
        this.zzGr = com_google_android_gms_internal_zzav;
        this.zzPY = ((Boolean) zzfx.zzDT.get()).booleanValue();
    }

    public static String zza(com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, String str) {
        String valueOf = String.valueOf(com_google_android_gms_internal_zzov_zza.zzVB.zzNb.indexOf("https") == 0 ? "https:" : "http:");
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private void zziG() {
        synchronized (zztU) {
            if (!zzPT) {
                zzPU = new zzja(this.mContext.getApplicationContext() != null ? this.mContext.getApplicationContext() : this.mContext, this.zzPo.zzSF.zzvf, zza(this.zzPo, (String) zzfx.zzDR.get()), new zzpn<zzix>(this) {
                    final /* synthetic */ zzlt zzQa;

                    {
                        this.zzQa = r1;
                    }

                    public void zza(zzix com_google_android_gms_internal_zzix) {
                        com_google_android_gms_internal_zzix.zza(this.zzQa.zzGl, this.zzQa.zzGl, this.zzQa.zzGl, this.zzQa.zzGl, false, null, null, null, null);
                    }

                    public /* synthetic */ void zzd(Object obj) {
                        zza((zzix) obj);
                    }
                }, new zzb());
                zzPT = true;
            }
        }
    }

    private void zziH() {
        this.zzPW = new zze(zziM().zzc(this.zzGr));
    }

    private void zziI() {
        this.zzPV = new zziy();
    }

    private void zziJ() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        this.zzPX = (zzix) zziK().zza(this.mContext, this.zzPo.zzSF.zzvf, zza(this.zzPo, (String) zzfx.zzDR.get()), this.zzGr, this.zzGl.zzbz()).get(zzPS, TimeUnit.MILLISECONDS);
        this.zzPX.zza(this.zzGl, this.zzGl, this.zzGl, this.zzGl, false, null, null, null, null);
    }

    public void zza(final zza com_google_android_gms_internal_zzlt_zza) {
        if (this.zzPY) {
            zze zziN = zziN();
            if (zziN == null) {
                zzpy.zzbe("SharedJavascriptEngine not initialized");
                return;
            } else {
                zziN.zza(new zzc<zzjb>(this) {
                    public void zzb(zzjb com_google_android_gms_internal_zzjb) {
                        com_google_android_gms_internal_zzlt_zza.zze(com_google_android_gms_internal_zzjb);
                    }

                    public /* synthetic */ void zzd(Object obj) {
                        zzb((zzjb) obj);
                    }
                }, new com.google.android.gms.internal.zzqi.zza(this) {
                    public void run() {
                        com_google_android_gms_internal_zzlt_zza.zziO();
                    }
                });
                return;
            }
        }
        zzjb zziL = zziL();
        if (zziL == null) {
            zzpy.zzbe("JavascriptEngine not initialized");
        } else {
            com_google_android_gms_internal_zzlt_zza.zze(zziL);
        }
    }

    public void zziE() {
        if (this.zzPY) {
            zziG();
        } else {
            zziI();
        }
    }

    public void zziF() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        if (this.zzPY) {
            zziH();
        } else {
            zziJ();
        }
    }

    protected zziy zziK() {
        return this.zzPV;
    }

    protected zzix zziL() {
        return this.zzPX;
    }

    protected zzja zziM() {
        return zzPU;
    }

    protected zze zziN() {
        return this.zzPW;
    }
}
