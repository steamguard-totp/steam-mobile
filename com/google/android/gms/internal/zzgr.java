package com.google.android.gms.internal;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.internal.zzhh.zza;
import java.util.Arrays;
import java.util.List;

@zzmb
public class zzgr extends zza implements zzgu.zza {
    private final zzgm zzGa;
    private zzgu zzGd;
    private final String zzGg;
    private final SimpleArrayMap<String, zzgo> zzGh;
    private final SimpleArrayMap<String, String> zzGi;
    private final Object zzrN = new Object();

    public zzgr(String str, SimpleArrayMap<String, zzgo> simpleArrayMap, SimpleArrayMap<String, String> simpleArrayMap2, zzgm com_google_android_gms_internal_zzgm) {
        this.zzGg = str;
        this.zzGh = simpleArrayMap;
        this.zzGi = simpleArrayMap2;
        this.zzGa = com_google_android_gms_internal_zzgm;
    }

    public List<String> getAvailableAssetNames() {
        int i = 0;
        String[] strArr = new String[(this.zzGh.size() + this.zzGi.size())];
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzGh.size(); i3++) {
            strArr[i2] = (String) this.zzGh.keyAt(i3);
            i2++;
        }
        while (i < this.zzGi.size()) {
            strArr[i2] = (String) this.zzGi.keyAt(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    public String getCustomTemplateId() {
        return this.zzGg;
    }

    public void performClick(String str) {
        synchronized (this.zzrN) {
            if (this.zzGd == null) {
                zzpy.e("Attempt to call performClick before ad initialized.");
                return;
            }
            this.zzGd.zza(null, str, null, null, null);
        }
    }

    public void recordImpression() {
        synchronized (this.zzrN) {
            if (this.zzGd == null) {
                zzpy.e("Attempt to perform recordImpression before ad initialized.");
                return;
            }
            this.zzGd.zzb(null, null);
        }
    }

    public String zzY(String str) {
        return (String) this.zzGi.get(str);
    }

    public zzgz zzZ(String str) {
        return (zzgz) this.zzGh.get(str);
    }

    public void zzb(zzgu com_google_android_gms_internal_zzgu) {
        synchronized (this.zzrN) {
            this.zzGd = com_google_android_gms_internal_zzgu;
        }
    }

    public String zzfN() {
        return "3";
    }

    public zzgm zzfO() {
        return this.zzGa;
    }
}
