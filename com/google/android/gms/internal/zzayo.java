package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;

class zzayo {
    private final long zzafh;
    private final long zzbEk;
    private final long zzbEl;
    private String zzbEm;
    private String zzbHK;
    private Map<String, String> zzbHL;
    private String zzbHM;

    zzayo(long j, long j2, long j3) {
        this.zzbEk = j;
        this.zzafh = j2;
        this.zzbEl = j3;
    }

    long zzPi() {
        return this.zzbEk;
    }

    long zzPj() {
        return this.zzbEl;
    }

    String zzPk() {
        return this.zzbEm;
    }

    String zzQt() {
        return this.zzbHK;
    }

    Map<String, String> zzQu() {
        return this.zzbHL;
    }

    String zzQv() {
        return this.zzbHM;
    }

    void zzam(Map<String, String> map) {
        this.zzbHL = map;
    }

    void zzhH(String str) {
        this.zzbHK = str;
    }

    void zzhI(String str) {
        this.zzbHM = str;
    }

    void zzhl(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim())) {
            this.zzbEm = str;
        }
    }
}
