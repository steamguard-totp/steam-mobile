package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzgu.zza;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

@zzmb
public class zzgt extends zzgv {
    private zzjw zzGj;
    private zzjx zzGk;
    private final zzr zzGl;
    private zzgu zzGm;
    private boolean zzGn;
    private Object zzrN;

    private zzgt(Context context, zzr com_google_android_gms_ads_internal_zzr, zzav com_google_android_gms_internal_zzav, zza com_google_android_gms_internal_zzgu_zza) {
        super(context, com_google_android_gms_ads_internal_zzr, null, com_google_android_gms_internal_zzav, null, com_google_android_gms_internal_zzgu_zza, null, null);
        this.zzGn = false;
        this.zzrN = new Object();
        this.zzGl = com_google_android_gms_ads_internal_zzr;
    }

    public zzgt(Context context, zzr com_google_android_gms_ads_internal_zzr, zzav com_google_android_gms_internal_zzav, zzjw com_google_android_gms_internal_zzjw, zza com_google_android_gms_internal_zzgu_zza) {
        this(context, com_google_android_gms_ads_internal_zzr, com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzgu_zza);
        this.zzGj = com_google_android_gms_internal_zzjw;
    }

    public zzgt(Context context, zzr com_google_android_gms_ads_internal_zzr, zzav com_google_android_gms_internal_zzav, zzjx com_google_android_gms_internal_zzjx, zza com_google_android_gms_internal_zzgu_zza) {
        this(context, com_google_android_gms_ads_internal_zzr, com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzgu_zza);
        this.zzGk = com_google_android_gms_internal_zzjx;
    }

    public zzgn zza(OnClickListener onClickListener) {
        return null;
    }

    public void zza(View view, Map<String, WeakReference<View>> map, OnTouchListener onTouchListener, OnClickListener onClickListener) {
        synchronized (this.zzrN) {
            this.zzGn = true;
            try {
                if (this.zzGj != null) {
                    this.zzGj.zzl(zze.zzA(view));
                } else if (this.zzGk != null) {
                    this.zzGk.zzl(zze.zzA(view));
                }
            } catch (Throwable e) {
                zzpy.zzc("Failed to call prepareAd", e);
            }
            this.zzGn = false;
        }
    }

    public void zza(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, View view2) {
        zzac.zzdn("performClick must be called on the main UI thread.");
        synchronized (this.zzrN) {
            if (this.zzGm != null) {
                this.zzGm.zza(view, map, jSONObject, view2);
                this.zzGl.onAdClicked();
            } else {
                try {
                    if (!(this.zzGj == null || this.zzGj.getOverrideClickHandling())) {
                        this.zzGj.zzk(zze.zzA(view));
                        this.zzGl.onAdClicked();
                    }
                    if (!(this.zzGk == null || this.zzGk.getOverrideClickHandling())) {
                        this.zzGk.zzk(zze.zzA(view));
                        this.zzGl.onAdClicked();
                    }
                } catch (Throwable e) {
                    zzpy.zzc("Failed to call performClick", e);
                }
            }
        }
    }

    public void zzb(View view, Map<String, WeakReference<View>> map) {
        zzac.zzdn("recordImpression must be called on the main UI thread.");
        synchronized (this.zzrN) {
            zzq(true);
            if (this.zzGm != null) {
                this.zzGm.zzb(view, map);
                this.zzGl.recordImpression();
            } else {
                try {
                    if (this.zzGj != null && !this.zzGj.getOverrideImpressionRecording()) {
                        this.zzGj.recordImpression();
                        this.zzGl.recordImpression();
                    } else if (!(this.zzGk == null || this.zzGk.getOverrideImpressionRecording())) {
                        this.zzGk.recordImpression();
                        this.zzGl.recordImpression();
                    }
                } catch (Throwable e) {
                    zzpy.zzc("Failed to call recordImpression", e);
                }
            }
        }
    }

    public void zzc(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.zzrN) {
            try {
                if (this.zzGj != null) {
                    this.zzGj.zzm(zze.zzA(view));
                } else if (this.zzGk != null) {
                    this.zzGk.zzm(zze.zzA(view));
                }
            } catch (Throwable e) {
                zzpy.zzc("Failed to call untrackView", e);
            }
        }
    }

    public void zzc(zzgu com_google_android_gms_internal_zzgu) {
        synchronized (this.zzrN) {
            this.zzGm = com_google_android_gms_internal_zzgu;
        }
    }

    public boolean zzfS() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzGn;
        }
        return z;
    }

    public zzgu zzfT() {
        zzgu com_google_android_gms_internal_zzgu;
        synchronized (this.zzrN) {
            com_google_android_gms_internal_zzgu = this.zzGm;
        }
        return com_google_android_gms_internal_zzgu;
    }

    public zzqp zzfU() {
        return null;
    }
}
