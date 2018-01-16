package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzeu.zza;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpl;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;

@zzmb
public class zzp extends zza {
    private static final Object zztU = new Object();
    private static zzp zztV;
    private final Context mContext;
    private final Object zzrN = new Object();
    private boolean zztW;
    private boolean zztX;
    private float zztY = -1.0f;
    private zzqa zztZ;

    zzp(Context context, zzqa com_google_android_gms_internal_zzqa) {
        this.mContext = context;
        this.zztZ = com_google_android_gms_internal_zzqa;
        this.zztW = false;
    }

    public static zzp zza(Context context, zzqa com_google_android_gms_internal_zzqa) {
        zzp com_google_android_gms_ads_internal_zzp;
        synchronized (zztU) {
            if (zztV == null) {
                zztV = new zzp(context.getApplicationContext(), com_google_android_gms_internal_zzqa);
            }
            com_google_android_gms_ads_internal_zzp = zztV;
        }
        return com_google_android_gms_ads_internal_zzp;
    }

    public static zzp zzcn() {
        zzp com_google_android_gms_ads_internal_zzp;
        synchronized (zztU) {
            com_google_android_gms_ads_internal_zzp = zztV;
        }
        return com_google_android_gms_ads_internal_zzp;
    }

    public void initialize() {
        synchronized (zztU) {
            if (this.zztW) {
                zzpy.zzbe("Mobile ads is initialized already.");
                return;
            }
            this.zztW = true;
            zzfx.initialize(this.mContext);
            zzv.zzcN().zzc(this.mContext, this.zztZ);
            zzv.zzcO().initialize(this.mContext);
        }
    }

    public void setAppMuted(boolean z) {
        synchronized (this.zzrN) {
            this.zztX = z;
        }
    }

    public void setAppVolume(float f) {
        synchronized (this.zzrN) {
            this.zztY = f;
        }
    }

    public void zzb(zzd com_google_android_gms_dynamic_zzd, String str) {
        zzpl zzc = zzc(com_google_android_gms_dynamic_zzd, str);
        if (zzc == null) {
            zzpy.e("Context is null. Failed to open debug menu.");
        } else {
            zzc.showDialog();
        }
    }

    protected zzpl zzc(zzd com_google_android_gms_dynamic_zzd, String str) {
        if (com_google_android_gms_dynamic_zzd == null) {
            return null;
        }
        Context context = (Context) zze.zzE(com_google_android_gms_dynamic_zzd);
        if (context == null) {
            return null;
        }
        zzpl com_google_android_gms_internal_zzpl = new zzpl(context);
        com_google_android_gms_internal_zzpl.setAdUnitId(str);
        return com_google_android_gms_internal_zzpl;
    }

    public float zzco() {
        float f;
        synchronized (this.zzrN) {
            f = this.zztY;
        }
        return f;
    }

    public boolean zzcp() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zztY >= 0.0f;
        }
        return z;
    }

    public boolean zzcq() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zztX;
        }
        return z;
    }

    public void zzy(String str) {
        zzfx.initialize(this.mContext);
        if (!TextUtils.isEmpty(str) && ((Boolean) zzfx.zzEp.get()).booleanValue()) {
            zzv.zzdf().zza(this.mContext, this.zztZ, true, null, str, null);
        }
    }
}
