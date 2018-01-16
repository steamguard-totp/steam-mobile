package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzem;
import com.google.android.gms.internal.zzen.zza;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzgw;
import com.google.android.gms.internal.zzhj;
import com.google.android.gms.internal.zzhk;
import com.google.android.gms.internal.zzhl;
import com.google.android.gms.internal.zzhm;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzqa;

@zzmb
public class zzk extends zza {
    private final Context mContext;
    private final zzjs zzsD;
    private final zzd zzsz;
    private zzel zzti;
    private zzgw zztn;
    private zzet zztp;
    private final String zztq;
    private final zzqa zztr;
    private zzhj zztv;
    private zzhk zztw;
    private SimpleArrayMap<String, zzhl> zztx = new SimpleArrayMap();
    private SimpleArrayMap<String, zzhm> zzty = new SimpleArrayMap();

    public zzk(Context context, String str, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa, zzd com_google_android_gms_ads_internal_zzd) {
        this.mContext = context;
        this.zztq = str;
        this.zzsD = com_google_android_gms_internal_zzjs;
        this.zztr = com_google_android_gms_internal_zzqa;
        this.zzsz = com_google_android_gms_ads_internal_zzd;
    }

    public void zza(zzgw com_google_android_gms_internal_zzgw) {
        this.zztn = com_google_android_gms_internal_zzgw;
    }

    public void zza(zzhj com_google_android_gms_internal_zzhj) {
        this.zztv = com_google_android_gms_internal_zzhj;
    }

    public void zza(zzhk com_google_android_gms_internal_zzhk) {
        this.zztw = com_google_android_gms_internal_zzhk;
    }

    public void zza(String str, zzhm com_google_android_gms_internal_zzhm, zzhl com_google_android_gms_internal_zzhl) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
        }
        this.zzty.put(str, com_google_android_gms_internal_zzhm);
        this.zztx.put(str, com_google_android_gms_internal_zzhl);
    }

    public void zzb(zzel com_google_android_gms_internal_zzel) {
        this.zzti = com_google_android_gms_internal_zzel;
    }

    public void zzb(zzet com_google_android_gms_internal_zzet) {
        this.zztp = com_google_android_gms_internal_zzet;
    }

    public zzem zzci() {
        return new zzj(this.mContext, this.zztq, this.zzsD, this.zztr, this.zzti, this.zztv, this.zztw, this.zzty, this.zztx, this.zztn, this.zztp, this.zzsz);
    }
}
