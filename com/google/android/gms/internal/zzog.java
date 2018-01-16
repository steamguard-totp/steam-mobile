package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.zzov.zza;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Future;
import org.json.JSONObject;

@zzmb
public class zzog extends zzpd implements zzof {
    private final Context mContext;
    private final zza zzPo;
    private final long zzUP;
    private final ArrayList<Future> zzVa;
    private final ArrayList<String> zzVb;
    private final HashMap<String, zzoa> zzVc;
    private final List<zzob> zzVd;
    private final HashSet<String> zzVe;
    private final zznp zzVf;
    private final Object zzrN;

    public zzog(Context context, zza com_google_android_gms_internal_zzov_zza, zznp com_google_android_gms_internal_zznp) {
        this(context, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zznp, ((Long) zzfx.zzCs.get()).longValue());
    }

    zzog(Context context, zza com_google_android_gms_internal_zzov_zza, zznp com_google_android_gms_internal_zznp, long j) {
        this.zzVa = new ArrayList();
        this.zzVb = new ArrayList();
        this.zzVc = new HashMap();
        this.zzVd = new ArrayList();
        this.zzVe = new HashSet();
        this.zzrN = new Object();
        this.mContext = context;
        this.zzPo = com_google_android_gms_internal_zzov_zza;
        this.zzVf = com_google_android_gms_internal_zznp;
        this.zzUP = j;
    }

    private static int zzR(int i) {
        switch (i) {
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
                return 4;
            case 6:
                return 0;
            case 7:
                return 3;
            default:
                return 6;
        }
    }

    private zzov zza(int i, String str, zzji com_google_android_gms_internal_zzji) {
        return new zzov(this.zzPo.zzSF.zzRd, null, this.zzPo.zzVB.zzJY, i, this.zzPo.zzVB.zzJZ, this.zzPo.zzVB.zzRM, this.zzPo.zzVB.orientation, this.zzPo.zzVB.zzKe, this.zzPo.zzSF.zzRg, this.zzPo.zzVB.zzRK, com_google_android_gms_internal_zzji, null, str, this.zzPo.zzVr, null, this.zzPo.zzVB.zzRL, this.zzPo.zzvj, this.zzPo.zzVB.zzRJ, this.zzPo.zzVv, this.zzPo.zzVB.zzRO, this.zzPo.zzVB.zzRP, this.zzPo.zzVp, null, this.zzPo.zzVB.zzRZ, this.zzPo.zzVB.zzSa, this.zzPo.zzVB.zzSb, this.zzPo.zzVB.zzSc, this.zzPo.zzVB.zzSd, zzjv(), this.zzPo.zzVB.zzKb, this.zzPo.zzVB.zzSg);
    }

    private zzov zza(String str, zzji com_google_android_gms_internal_zzji) {
        return zza(-2, str, com_google_android_gms_internal_zzji);
    }

    private static String zza(zzob com_google_android_gms_internal_zzob) {
        String str = com_google_android_gms_internal_zzob.zzJJ;
        int zzR = zzR(com_google_android_gms_internal_zzob.errorCode);
        return new StringBuilder(String.valueOf(str).length() + 33).append(str).append(".").append(zzR).append(".").append(com_google_android_gms_internal_zzob.zzKF).toString();
    }

    private void zza(String str, String str2, zzji com_google_android_gms_internal_zzji) {
        synchronized (this.zzrN) {
            zzoh zzaM = this.zzVf.zzaM(str);
            if (zzaM == null || zzaM.zzjx() == null || zzaM.zzjw() == null) {
                this.zzVd.add(new zzob.zza().zzaP(com_google_android_gms_internal_zzji.zzJJ).zzaO(str).zzl(0).zzac(7).zzjt());
                return;
            }
            zzpd zza = zza(str, str2, com_google_android_gms_internal_zzji, zzaM);
            this.zzVa.add((Future) zza.zziw());
            this.zzVb.add(str);
            this.zzVc.put(str, zza);
        }
    }

    private zzov zzju() {
        return zza(3, null, null);
    }

    private String zzjv() {
        StringBuilder stringBuilder = new StringBuilder("");
        if (this.zzVd == null) {
            return stringBuilder.toString();
        }
        for (zzob com_google_android_gms_internal_zzob : this.zzVd) {
            if (!(com_google_android_gms_internal_zzob == null || TextUtils.isEmpty(com_google_android_gms_internal_zzob.zzJJ))) {
                stringBuilder.append(String.valueOf(zza(com_google_android_gms_internal_zzob)).concat("_"));
            }
        }
        return stringBuilder.substring(0, Math.max(0, stringBuilder.length() - 1));
    }

    public void onStop() {
    }

    protected zzoa zza(String str, String str2, zzji com_google_android_gms_internal_zzji, zzoh com_google_android_gms_internal_zzoh) {
        return new zzoa(this.mContext, str, str2, com_google_android_gms_internal_zzji, this.zzPo, com_google_android_gms_internal_zzoh, this, this.zzUP);
    }

    public void zza(String str, int i) {
    }

    public void zzaN(String str) {
        synchronized (this.zzrN) {
            this.zzVe.add(str);
        }
    }

    public void zzcm() {
        String str;
        zzoa com_google_android_gms_internal_zzoa;
        final zzov zza;
        for (zzji com_google_android_gms_internal_zzji : this.zzPo.zzVr.zzJW) {
            String str2 = com_google_android_gms_internal_zzji.zzJO;
            for (String str3 : com_google_android_gms_internal_zzji.zzJI) {
                String str32;
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str32) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str32)) {
                    try {
                        str32 = new JSONObject(str2).getString("class_name");
                    } catch (Throwable e) {
                        zzpy.zzb("Unable to determine custom event class name, skipping...", e);
                    }
                }
                zza(str32, str2, com_google_android_gms_internal_zzji);
            }
        }
        int i = 0;
        while (i < this.zzVa.size()) {
            try {
                ((Future) this.zzVa.get(i)).get();
                synchronized (this.zzrN) {
                    str = (String) this.zzVb.get(i);
                    if (!TextUtils.isEmpty(str)) {
                        com_google_android_gms_internal_zzoa = (zzoa) this.zzVc.get(str);
                        if (com_google_android_gms_internal_zzoa != null) {
                            this.zzVd.add(com_google_android_gms_internal_zzoa.zzjq());
                        }
                    }
                }
                synchronized (this.zzrN) {
                    if (this.zzVe.contains(this.zzVb.get(i))) {
                        str = (String) this.zzVb.get(i);
                        zza = zza(str, this.zzVc.get(str) != null ? ((zzoa) this.zzVc.get(str)).zzjr() : null);
                        zzpx.zzXU.post(new Runnable(this) {
                            final /* synthetic */ zzog zzVg;

                            public void run() {
                                this.zzVg.zzVf.zzb(zza);
                            }
                        });
                        return;
                    }
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                synchronized (this.zzrN) {
                    str = (String) this.zzVb.get(i);
                    if (!TextUtils.isEmpty(str)) {
                        com_google_android_gms_internal_zzoa = (zzoa) this.zzVc.get(str);
                        if (com_google_android_gms_internal_zzoa != null) {
                            this.zzVd.add(com_google_android_gms_internal_zzoa.zzjq());
                        }
                    }
                }
            } catch (Throwable e3) {
                zzpy.zzc("Unable to resolve rewarded adapter.", e3);
                synchronized (this.zzrN) {
                    str = (String) this.zzVb.get(i);
                    if (!TextUtils.isEmpty(str)) {
                        com_google_android_gms_internal_zzoa = (zzoa) this.zzVc.get(str);
                        if (com_google_android_gms_internal_zzoa != null) {
                            this.zzVd.add(com_google_android_gms_internal_zzoa.zzjq());
                        }
                    }
                }
            } catch (Throwable e32) {
                Throwable th = e32;
                synchronized (this.zzrN) {
                    str = (String) this.zzVb.get(i);
                    if (!TextUtils.isEmpty(str)) {
                        com_google_android_gms_internal_zzoa = (zzoa) this.zzVc.get(str);
                        if (com_google_android_gms_internal_zzoa != null) {
                            this.zzVd.add(com_google_android_gms_internal_zzoa.zzjq());
                        }
                    }
                }
            }
        }
        zza = zzju();
        zzpx.zzXU.post(new Runnable(this) {
            final /* synthetic */ zzog zzVg;

            public void run() {
                this.zzVg.zzVf.zzb(zza);
            }
        });
        return;
        i++;
    }
}
