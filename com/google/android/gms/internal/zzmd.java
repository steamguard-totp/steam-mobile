package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzv;
import org.json.JSONObject;

@zzmb
public class zzmd extends zzpd implements com.google.android.gms.internal.zzme.zza {
    private final Context mContext;
    private final zzav zzGr;
    private zzmh zzKG;
    zzjj zzKq;
    zzmk zzPp;
    private Runnable zzPq;
    private final Object zzPr = new Object();
    private final com.google.android.gms.internal.zzmc.zza zzQQ;
    private final com.google.android.gms.internal.zzmh.zza zzQR;
    zzpk zzQS;

    @zzmb
    static final class zza extends Exception {
        private final int zzPF;

        public zza(String str, int i) {
            super(str);
            this.zzPF = i;
        }

        public int getErrorCode() {
            return this.zzPF;
        }
    }

    public zzmd(Context context, com.google.android.gms.internal.zzmh.zza com_google_android_gms_internal_zzmh_zza, zzav com_google_android_gms_internal_zzav, com.google.android.gms.internal.zzmc.zza com_google_android_gms_internal_zzmc_zza) {
        this.zzQQ = com_google_android_gms_internal_zzmc_zza;
        this.mContext = context;
        this.zzQR = com_google_android_gms_internal_zzmh_zza;
        this.zzGr = com_google_android_gms_internal_zzav;
    }

    private void zzd(int i, String str) {
        if (i == 3 || i == -1) {
            zzpy.zzbd(str);
        } else {
            zzpy.zzbe(str);
        }
        if (this.zzPp == null) {
            this.zzPp = new zzmk(i);
        } else {
            this.zzPp = new zzmk(i, this.zzPp.zzKe);
        }
        this.zzQQ.zza(new com.google.android.gms.internal.zzov.zza(this.zzKG != null ? this.zzKG : new zzmh(this.zzQR, null, -1), this.zzPp, this.zzKq, null, i, -1, this.zzPp.zzRO, null));
    }

    public void onStop() {
        synchronized (this.zzPr) {
            if (this.zzQS != null) {
                this.zzQS.cancel();
            }
        }
    }

    zzpk zza(zzqa com_google_android_gms_internal_zzqa, zzqi<zzmh> com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh) {
        return zzme.zza(this.mContext, com_google_android_gms_internal_zzqa, com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, this);
    }

    protected zzec zzb(zzmh com_google_android_gms_internal_zzmh) throws zza {
        int i;
        if (this.zzPp.zzzo) {
            for (zzec com_google_android_gms_internal_zzec : com_google_android_gms_internal_zzmh.zzvj.zzzm) {
                if (com_google_android_gms_internal_zzec.zzzo) {
                    return new zzec(com_google_android_gms_internal_zzec, com_google_android_gms_internal_zzmh.zzvj.zzzm);
                }
            }
        }
        if (this.zzPp.zzRN == null) {
            throw new zza("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.zzPp.zzRN.split("x");
        if (split.length != 2) {
            String str = "Invalid ad size format from the ad response: ";
            String valueOf = String.valueOf(this.zzPp.zzRN);
            throw new zza(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            for (zzec com_google_android_gms_internal_zzec2 : com_google_android_gms_internal_zzmh.zzvj.zzzm) {
                float f = this.mContext.getResources().getDisplayMetrics().density;
                i = com_google_android_gms_internal_zzec2.width == -1 ? (int) (((float) com_google_android_gms_internal_zzec2.widthPixels) / f) : com_google_android_gms_internal_zzec2.width;
                int i2 = com_google_android_gms_internal_zzec2.height == -2 ? (int) (((float) com_google_android_gms_internal_zzec2.heightPixels) / f) : com_google_android_gms_internal_zzec2.height;
                if (parseInt == i && parseInt2 == i2 && !com_google_android_gms_internal_zzec2.zzzo) {
                    return new zzec(com_google_android_gms_internal_zzec2, com_google_android_gms_internal_zzmh.zzvj.zzzm);
                }
            }
            str = "The ad size from the ad response was not one of the requested sizes: ";
            valueOf = String.valueOf(this.zzPp.zzRN);
            throw new zza(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        } catch (NumberFormatException e) {
            str = "Invalid ad size number from the ad response: ";
            valueOf = String.valueOf(this.zzPp.zzRN);
            throw new zza(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        }
    }

    public void zzb(zzmk com_google_android_gms_internal_zzmk) {
        zzpy.zzbc("Received ad response.");
        this.zzPp = com_google_android_gms_internal_zzmk;
        long elapsedRealtime = zzv.zzcP().elapsedRealtime();
        synchronized (this.zzPr) {
            this.zzQS = null;
        }
        zzv.zzcN().zzd(this.mContext, this.zzPp.zzRB);
        try {
            if (this.zzPp.errorCode == -2 || this.zzPp.errorCode == -3) {
                JSONObject jSONObject;
                zziX();
                zzec zzb = this.zzKG.zzvj.zzzm != null ? zzb(this.zzKG) : null;
                zzv.zzcN().zzE(this.zzPp.zzRU);
                zzv.zzcN().zzF(this.zzPp.zzSh);
                if (!TextUtils.isEmpty(this.zzPp.zzRS)) {
                    try {
                        jSONObject = new JSONObject(this.zzPp.zzRS);
                    } catch (Throwable e) {
                        zzpy.zzb("Error parsing the JSON for Active View.", e);
                    }
                    this.zzQQ.zza(new com.google.android.gms.internal.zzov.zza(this.zzKG, this.zzPp, this.zzKq, zzb, -2, elapsedRealtime, this.zzPp.zzRO, jSONObject));
                    zzpi.zzWR.removeCallbacks(this.zzPq);
                    return;
                }
                jSONObject = null;
                this.zzQQ.zza(new com.google.android.gms.internal.zzov.zza(this.zzKG, this.zzPp, this.zzKq, zzb, -2, elapsedRealtime, this.zzPp.zzRO, jSONObject));
                zzpi.zzWR.removeCallbacks(this.zzPq);
                return;
            }
            throw new zza("There was a problem getting an ad response. ErrorCode: " + this.zzPp.errorCode, this.zzPp.errorCode);
        } catch (zza e2) {
            zzd(e2.getErrorCode(), e2.getMessage());
            zzpi.zzWR.removeCallbacks(this.zzPq);
        }
    }

    public void zzcm() {
        zzpy.zzbc("AdLoaderBackgroundTask started.");
        this.zzPq = new Runnable(this) {
            final /* synthetic */ zzmd zzQT;

            {
                this.zzQT = r1;
            }

            public void run() {
                synchronized (this.zzQT.zzPr) {
                    if (this.zzQT.zzQS == null) {
                        return;
                    }
                    this.zzQT.onStop();
                    this.zzQT.zzd(2, "Timed out waiting for ad response.");
                }
            }
        };
        zzpi.zzWR.postDelayed(this.zzPq, ((Long) zzfx.zzDd.get()).longValue());
        final zzqi com_google_android_gms_internal_zzqj = new zzqj();
        long elapsedRealtime = zzv.zzcP().elapsedRealtime();
        zzph.zza(new Runnable(this) {
            final /* synthetic */ zzmd zzQT;

            public void run() {
                synchronized (this.zzQT.zzPr) {
                    this.zzQT.zzQS = this.zzQT.zza(this.zzQT.zzQR.zzvf, com_google_android_gms_internal_zzqj);
                    if (this.zzQT.zzQS == null) {
                        this.zzQT.zzd(0, "Could not start the ad request service.");
                        zzpi.zzWR.removeCallbacks(this.zzQT.zzPq);
                    }
                }
            }
        });
        this.zzKG = new zzmh(this.zzQR, this.zzGr.zzW().zzb(this.mContext), elapsedRealtime);
        com_google_android_gms_internal_zzqj.zzg(this.zzKG);
    }

    protected void zziX() throws zza {
        if (this.zzPp.errorCode != -3) {
            if (TextUtils.isEmpty(this.zzPp.body)) {
                throw new zza("No fill from ad server.", 3);
            }
            zzv.zzcN().zzc(this.mContext, this.zzPp.zzRl);
            if (this.zzPp.zzRK) {
                try {
                    this.zzKq = new zzjj(this.zzPp.body);
                    zzv.zzcN().zzG(this.zzKq.zzKc);
                } catch (Throwable e) {
                    zzpy.zzb("Could not parse mediation config.", e);
                    String str = "Could not parse mediation config: ";
                    String valueOf = String.valueOf(this.zzPp.body);
                    throw new zza(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
                }
            }
            zzv.zzcN().zzG(this.zzPp.zzKc);
            if (!TextUtils.isEmpty(this.zzPp.zzRC) && ((Boolean) zzfx.zzEH.get()).booleanValue()) {
                zzpy.zzbc("Received cookie from server. Setting webview cookie in CookieManager.");
                CookieManager zzL = zzv.zzcL().zzL(this.mContext);
                if (zzL != null) {
                    zzL.setCookie("googleads.g.doubleclick.net", this.zzPp.zzRC);
                }
            }
        }
    }
}
