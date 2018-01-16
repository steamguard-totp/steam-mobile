package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzhf.zza;
import java.util.List;

@zzmb
public class zzgq extends zza implements zzgu.zza {
    private Bundle mExtras;
    private String zzFS;
    private List<zzgo> zzFT;
    private String zzFU;
    private String zzFW;
    private zzgm zzGa;
    private zzgu zzGd;
    private zzgz zzGe;
    private String zzGf;
    private Object zzrN = new Object();

    public zzgq(String str, List list, String str2, zzgz com_google_android_gms_internal_zzgz, String str3, String str4, zzgm com_google_android_gms_internal_zzgm, Bundle bundle) {
        this.zzFS = str;
        this.zzFT = list;
        this.zzFU = str2;
        this.zzGe = com_google_android_gms_internal_zzgz;
        this.zzFW = str3;
        this.zzGf = str4;
        this.zzGa = com_google_android_gms_internal_zzgm;
        this.mExtras = bundle;
    }

    public void destroy() {
        this.zzFS = null;
        this.zzFT = null;
        this.zzFU = null;
        this.zzGe = null;
        this.zzFW = null;
        this.zzGf = null;
        this.zzGa = null;
        this.mExtras = null;
        this.zzrN = null;
        this.zzGd = null;
    }

    public String getAdvertiser() {
        return this.zzGf;
    }

    public String getBody() {
        return this.zzFU;
    }

    public String getCallToAction() {
        return this.zzFW;
    }

    public String getCustomTemplateId() {
        return "";
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public String getHeadline() {
        return this.zzFS;
    }

    public List getImages() {
        return this.zzFT;
    }

    public void zzb(zzgu com_google_android_gms_internal_zzgu) {
        synchronized (this.zzrN) {
            this.zzGd = com_google_android_gms_internal_zzgu;
        }
    }

    public zzd zzfM() {
        return zze.zzA(this.zzGd);
    }

    public String zzfN() {
        return "1";
    }

    public zzgm zzfO() {
        return this.zzGa;
    }

    public zzgz zzfQ() {
        return this.zzGe;
    }
}
