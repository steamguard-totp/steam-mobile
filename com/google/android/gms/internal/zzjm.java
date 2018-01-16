package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdOptions.Builder;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzjn.zza;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public class zzjm implements zza {
    private final Context mContext;
    private final String zzKo;
    private final long zzKp;
    private final zzjj zzKq;
    private final zzji zzKr;
    private final boolean zzKs;
    private zzjt zzKt;
    private int zzKu = -2;
    private zzjv zzKv;
    private final Object zzrN = new Object();
    private final zzjs zzsD;
    private final zzgw zztn;
    private final List<String> zzto;
    private final zzqa zztr;
    private zzdy zzug;
    private final zzec zzum;
    private final boolean zzvW;

    class AnonymousClass2 extends zzjv.zza {
        final /* synthetic */ int zzKy;

        AnonymousClass2(int i) {
            this.zzKy = i;
        }

        public int zzgH() throws RemoteException {
            return this.zzKy;
        }
    }

    public zzjm(Context context, String str, zzjs com_google_android_gms_internal_zzjs, zzjj com_google_android_gms_internal_zzjj, zzji com_google_android_gms_internal_zzji, zzdy com_google_android_gms_internal_zzdy, zzec com_google_android_gms_internal_zzec, zzqa com_google_android_gms_internal_zzqa, boolean z, boolean z2, zzgw com_google_android_gms_internal_zzgw, List<String> list) {
        this.mContext = context;
        this.zzsD = com_google_android_gms_internal_zzjs;
        this.zzKr = com_google_android_gms_internal_zzji;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            this.zzKo = zzgC();
        } else {
            this.zzKo = str;
        }
        this.zzKq = com_google_android_gms_internal_zzjj;
        this.zzKp = com_google_android_gms_internal_zzjj.zzJX != -1 ? com_google_android_gms_internal_zzjj.zzJX : 10000;
        this.zzug = com_google_android_gms_internal_zzdy;
        this.zzum = com_google_android_gms_internal_zzec;
        this.zztr = com_google_android_gms_internal_zzqa;
        this.zzvW = z;
        this.zzKs = z2;
        this.zztn = com_google_android_gms_internal_zzgw;
        this.zzto = list;
    }

    private boolean zzE(int i) {
        try {
            Bundle zzgM = this.zzvW ? this.zzKt.zzgM() : this.zzum.zzzl ? this.zzKt.getInterstitialAdapterInfo() : this.zzKt.zzgL();
            if (zzgM == null) {
                return false;
            }
            return (zzgM.getInt("capabilities", 0) & i) == i;
        } catch (RemoteException e) {
            zzpy.zzbe("Could not get adapter info. Returning false");
            return false;
        }
    }

    private static zzjv zzF(int i) {
        return new AnonymousClass2(i);
    }

    private long zza(long j, long j2, long j3, long j4) {
        while (this.zzKu == -2) {
            zzb(j, j2, j3, j4);
        }
        return zzv.zzcP().elapsedRealtime() - j;
    }

    private void zza(zzjl com_google_android_gms_internal_zzjl) {
        String zzao = zzao(this.zzKr.zzJO);
        try {
            if (this.zztr.zzYc < 4100000) {
                if (this.zzum.zzzl) {
                    this.zzKt.zza(zze.zzA(this.mContext), this.zzug, zzao, com_google_android_gms_internal_zzjl);
                } else {
                    this.zzKt.zza(zze.zzA(this.mContext), this.zzum, this.zzug, zzao, (zzju) com_google_android_gms_internal_zzjl);
                }
            } else if (this.zzvW) {
                this.zzKt.zza(zze.zzA(this.mContext), this.zzug, zzao, this.zzKr.zzJG, com_google_android_gms_internal_zzjl, this.zztn, this.zzto);
            } else if (this.zzum.zzzl) {
                this.zzKt.zza(zze.zzA(this.mContext), this.zzug, zzao, this.zzKr.zzJG, (zzju) com_google_android_gms_internal_zzjl);
            } else if (!this.zzKs) {
                this.zzKt.zza(zze.zzA(this.mContext), this.zzum, this.zzug, zzao, this.zzKr.zzJG, com_google_android_gms_internal_zzjl);
            } else if (this.zzKr.zzJR != null) {
                this.zzKt.zza(zze.zzA(this.mContext), this.zzug, zzao, this.zzKr.zzJG, com_google_android_gms_internal_zzjl, new zzgw(zzap(this.zzKr.zzJV)), this.zzKr.zzJU);
            } else {
                this.zzKt.zza(zze.zzA(this.mContext), this.zzum, this.zzug, zzao, this.zzKr.zzJG, com_google_android_gms_internal_zzjl);
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not request ad from mediation adapter.", e);
            zzD(5);
        }
    }

    private String zzao(String str) {
        if (!(str == null || !zzgF() || zzE(2))) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                jSONObject.remove("cpm_floor_cents");
                str = jSONObject.toString();
            } catch (JSONException e) {
                zzpy.zzbe("Could not remove field. Returning the original value");
            }
        }
        return str;
    }

    private static NativeAdOptions zzap(String str) {
        Builder builder = new Builder();
        if (str == null) {
            return builder.build();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            builder.setRequestMultipleImages(jSONObject.optBoolean("multiple_images", false));
            builder.setReturnUrlsForImageAssets(jSONObject.optBoolean("only_urls", false));
            builder.setImageOrientation(zzaq(jSONObject.optString("native_image_orientation", "any")));
        } catch (Throwable e) {
            zzpy.zzc("Exception occurred when creating native ad options", e);
        }
        return builder.build();
    }

    private static int zzaq(String str) {
        return "landscape".equals(str) ? 2 : "portrait".equals(str) ? 1 : 0;
    }

    private void zzb(long j, long j2, long j3, long j4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j5 = j2 - (elapsedRealtime - j);
        elapsedRealtime = j4 - (elapsedRealtime - j3);
        if (j5 <= 0 || elapsedRealtime <= 0) {
            zzpy.zzbd("Timed out waiting for adapter.");
            this.zzKu = 3;
            return;
        }
        try {
            this.zzrN.wait(Math.min(j5, elapsedRealtime));
        } catch (InterruptedException e) {
            this.zzKu = -1;
        }
    }

    private String zzgC() {
        try {
            if (!TextUtils.isEmpty(this.zzKr.zzJK)) {
                return this.zzsD.zzas(this.zzKr.zzJK) ? "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter" : "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        } catch (RemoteException e) {
            zzpy.zzbe("Fail to determine the custom event's version, assuming the old one.");
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private zzjv zzgD() {
        if (this.zzKu != 0 || !zzgF()) {
            return null;
        }
        try {
            if (!(!zzE(4) || this.zzKv == null || this.zzKv.zzgH() == 0)) {
                return this.zzKv;
            }
        } catch (RemoteException e) {
            zzpy.zzbe("Could not get cpm value from MediationResponseMetadata");
        }
        return zzF(zzgG());
    }

    private zzjt zzgE() {
        String str = "Instantiating mediation adapter: ";
        String valueOf = String.valueOf(this.zzKo);
        zzpy.zzbd(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        if (!this.zzvW) {
            if (((Boolean) zzfx.zzDb.get()).booleanValue() && "com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzKo)) {
                return zza(new AdMobAdapter());
            }
            if (((Boolean) zzfx.zzDc.get()).booleanValue() && "com.google.ads.mediation.AdUrlAdapter".equals(this.zzKo)) {
                return zza(new AdUrlAdapter());
            }
            if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(this.zzKo)) {
                return new zzjz(new zzkh());
            }
        }
        try {
            return this.zzsD.zzar(this.zzKo);
        } catch (Throwable e) {
            Throwable th = e;
            String str2 = "Could not instantiate mediation adapter: ";
            valueOf = String.valueOf(this.zzKo);
            zzpy.zza(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), th);
            return null;
        }
    }

    private boolean zzgF() {
        return this.zzKq.zzKh != -1;
    }

    private int zzgG() {
        if (this.zzKr.zzJO == null) {
            return 0;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.zzKr.zzJO);
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzKo)) {
                return jSONObject.optInt("cpm_cents", 0);
            }
            int optInt = zzE(2) ? jSONObject.optInt("cpm_floor_cents", 0) : 0;
            return optInt == 0 ? jSONObject.optInt("penalized_average_cpm_cents", 0) : optInt;
        } catch (JSONException e) {
            zzpy.zzbe("Could not convert to json. Returning 0");
            return 0;
        }
    }

    public void cancel() {
        synchronized (this.zzrN) {
            try {
                if (this.zzKt != null) {
                    this.zzKt.destroy();
                }
            } catch (Throwable e) {
                zzpy.zzc("Could not destroy mediation adapter.", e);
            }
            this.zzKu = -1;
            this.zzrN.notify();
        }
    }

    public void zzD(int i) {
        synchronized (this.zzrN) {
            this.zzKu = i;
            this.zzrN.notify();
        }
    }

    public zzjn zza(long j, long j2) {
        zzjn com_google_android_gms_internal_zzjn;
        synchronized (this.zzrN) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            final zzjl com_google_android_gms_internal_zzjl = new zzjl();
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzjm zzKx;

                public void run() {
                    synchronized (this.zzKx.zzrN) {
                        if (this.zzKx.zzKu != -2) {
                            return;
                        }
                        this.zzKx.zzKt = this.zzKx.zzgE();
                        if (this.zzKx.zzKt == null) {
                            this.zzKx.zzD(4);
                        } else if (!this.zzKx.zzgF() || this.zzKx.zzE(1)) {
                            com_google_android_gms_internal_zzjl.zza(this.zzKx);
                            this.zzKx.zza(com_google_android_gms_internal_zzjl);
                        } else {
                            String zzf = this.zzKx.zzKo;
                            zzpy.zzbe(new StringBuilder(String.valueOf(zzf).length() + 56).append("Ignoring adapter ").append(zzf).append(" as delayed impression is not supported").toString());
                            this.zzKx.zzD(2);
                        }
                    }
                }
            });
            zzjl com_google_android_gms_internal_zzjl2 = com_google_android_gms_internal_zzjl;
            com_google_android_gms_internal_zzjn = new zzjn(this.zzKr, this.zzKt, this.zzKo, com_google_android_gms_internal_zzjl2, this.zzKu, zzgD(), zza(elapsedRealtime, this.zzKp, j, j2));
        }
        return com_google_android_gms_internal_zzjn;
    }

    protected zzjt zza(MediationAdapter mediationAdapter) {
        return new zzjz(mediationAdapter);
    }

    public void zza(int i, zzjv com_google_android_gms_internal_zzjv) {
        synchronized (this.zzrN) {
            this.zzKu = i;
            this.zzKv = com_google_android_gms_internal_zzjv;
            this.zzrN.notify();
        }
    }
}
