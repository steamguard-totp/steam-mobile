package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzov.zza;

@zzmb
public class zzoa extends zzpd implements zzoc, zzof {
    private final Context mContext;
    private final String zzKo;
    private int zzPF = 3;
    private final zza zzPo;
    private final zzoh zzUL;
    private final zzof zzUM;
    private final String zzUN;
    private final zzji zzUO;
    private final long zzUP;
    private int zzUQ = 0;
    private zzob zzUR;
    private final Object zzrN;

    public zzoa(Context context, String str, String str2, zzji com_google_android_gms_internal_zzji, zza com_google_android_gms_internal_zzov_zza, zzoh com_google_android_gms_internal_zzoh, zzof com_google_android_gms_internal_zzof, long j) {
        this.mContext = context;
        this.zzKo = str;
        this.zzUN = str2;
        this.zzUO = com_google_android_gms_internal_zzji;
        this.zzPo = com_google_android_gms_internal_zzov_zza;
        this.zzUL = com_google_android_gms_internal_zzoh;
        this.zzrN = new Object();
        this.zzUM = com_google_android_gms_internal_zzof;
        this.zzUP = j;
    }

    private void zza(zzdy com_google_android_gms_internal_zzdy, zzjt com_google_android_gms_internal_zzjt) {
        this.zzUL.zzjx().zza((zzof) this);
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzKo)) {
                com_google_android_gms_internal_zzjt.zza(com_google_android_gms_internal_zzdy, this.zzUN, this.zzUO.zzJG);
            } else {
                com_google_android_gms_internal_zzjt.zzc(com_google_android_gms_internal_zzdy, this.zzUN);
            }
        } catch (Throwable e) {
            zzpy.zzc("Fail to load ad from adapter.", e);
            zza(this.zzKo, 0);
        }
    }

    private void zzk(long j) {
        while (true) {
            synchronized (this.zzrN) {
                if (this.zzUQ != 0) {
                    break;
                } else if (!zzf(j)) {
                    this.zzUR = new zzob.zza().zzac(this.zzPF).zzl(zzv.zzcP().elapsedRealtime() - j).zzaO(this.zzKo).zzaP(this.zzUO.zzJJ).zzjt();
                    return;
                }
            }
        }
        this.zzUR = new zzob.zza().zzl(zzv.zzcP().elapsedRealtime() - j).zzac(1 == this.zzUQ ? 6 : this.zzPF).zzaO(this.zzKo).zzaP(this.zzUO.zzJJ).zzjt();
    }

    public void onStop() {
    }

    public void zza(String str, int i) {
        synchronized (this.zzrN) {
            this.zzUQ = 2;
            this.zzPF = i;
            this.zzrN.notify();
        }
    }

    public void zzaN(String str) {
        synchronized (this.zzrN) {
            this.zzUQ = 1;
            this.zzrN.notify();
        }
    }

    public void zzab(int i) {
        zza(this.zzKo, 0);
    }

    public void zzcm() {
        if (this.zzUL != null && this.zzUL.zzjx() != null && this.zzUL.zzjw() != null) {
            final zzoe zzjx = this.zzUL.zzjx();
            zzjx.zza(null);
            zzjx.zza((zzoc) this);
            final zzdy com_google_android_gms_internal_zzdy = this.zzPo.zzSF.zzRd;
            final zzjt zzjw = this.zzUL.zzjw();
            try {
                if (zzjw.isInitialized()) {
                    zzpx.zzXU.post(new Runnable(this) {
                        final /* synthetic */ zzoa zzUT;

                        public void run() {
                            this.zzUT.zza(com_google_android_gms_internal_zzdy, zzjw);
                        }
                    });
                } else {
                    zzpx.zzXU.post(new Runnable(this) {
                        final /* synthetic */ zzoa zzUT;

                        public void run() {
                            try {
                                zzjw.zza(zze.zzA(this.zzUT.mContext), com_google_android_gms_internal_zzdy, null, zzjx, this.zzUT.zzUN);
                            } catch (Throwable e) {
                                Throwable th = e;
                                String str = "Fail to initialize adapter ";
                                String valueOf = String.valueOf(this.zzUT.zzKo);
                                zzpy.zzc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), th);
                                this.zzUT.zza(this.zzUT.zzKo, 0);
                            }
                        }
                    });
                }
            } catch (Throwable e) {
                zzpy.zzc("Fail to check if adapter is initialized.", e);
                zza(this.zzKo, 0);
            }
            zzk(zzv.zzcP().elapsedRealtime());
            zzjx.zza(null);
            zzjx.zza(null);
            if (this.zzUQ == 1) {
                this.zzUM.zzaN(this.zzKo);
            } else {
                this.zzUM.zza(this.zzKo, this.zzPF);
            }
        }
    }

    protected boolean zzf(long j) {
        long elapsedRealtime = this.zzUP - (zzv.zzcP().elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            this.zzPF = 4;
            return false;
        }
        try {
            this.zzrN.wait(elapsedRealtime);
            return true;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            this.zzPF = 5;
            return false;
        }
    }

    public zzob zzjq() {
        zzob com_google_android_gms_internal_zzob;
        synchronized (this.zzrN) {
            com_google_android_gms_internal_zzob = this.zzUR;
        }
        return com_google_android_gms_internal_zzob;
    }

    public zzji zzjr() {
        return this.zzUO;
    }

    public void zzjs() {
        zza(this.zzPo.zzSF.zzRd, this.zzUL.zzjw());
    }
}
