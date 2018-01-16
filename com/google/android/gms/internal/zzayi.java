package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.internal.zzac;
import java.util.Random;

public class zzayi {
    private final Context mContext;
    private final String zzbCS;
    private final Random zzzI;

    public zzayi(Context context, String str) {
        this(context, str, new Random());
    }

    zzayi(Context context, String str, Random random) {
        this.mContext = (Context) zzac.zzw(context);
        this.zzbCS = (String) zzac.zzw(str);
        this.zzzI = random;
    }

    private SharedPreferences zzOP() {
        Context context = this.mContext;
        String valueOf = String.valueOf("v5_gtmContainerRefreshPolicy_");
        String valueOf2 = String.valueOf(this.zzbCS);
        return context.getSharedPreferences(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), 0);
    }

    private long zzg(long j, long j2) {
        SharedPreferences zzOP = zzOP();
        long max = Math.max(0, zzOP.getLong("FORBIDDEN_COUNT", 0));
        return (long) (((float) (((long) ((((float) max) / ((float) ((Math.max(0, zzOP.getLong("SUCCESSFUL_COUNT", 0)) + max) + 1))) * ((float) (j2 - j)))) + j)) * this.zzzI.nextFloat());
    }

    public long zzOL() {
        return 43200000 + zzg(7200000, 259200000);
    }

    public long zzOM() {
        return 3600000 + zzg(600000, 86400000);
    }

    @SuppressLint({"CommitPrefEdits"})
    public void zzON() {
        SharedPreferences zzOP = zzOP();
        long j = zzOP.getLong("FORBIDDEN_COUNT", 0);
        long j2 = zzOP.getLong("SUCCESSFUL_COUNT", 0);
        Editor edit = zzOP.edit();
        long min = j == 0 ? 3 : Math.min(10, 1 + j);
        j = Math.max(0, Math.min(j2, 10 - min));
        edit.putLong("FORBIDDEN_COUNT", min);
        edit.putLong("SUCCESSFUL_COUNT", j);
        zzazk.zza(edit);
    }

    @SuppressLint({"CommitPrefEdits"})
    public void zzOO() {
        SharedPreferences zzOP = zzOP();
        long j = zzOP.getLong("SUCCESSFUL_COUNT", 0);
        long j2 = zzOP.getLong("FORBIDDEN_COUNT", 0);
        j = Math.min(10, j + 1);
        j2 = Math.max(0, Math.min(j2, 10 - j));
        Editor edit = zzOP.edit();
        edit.putLong("SUCCESSFUL_COUNT", j);
        edit.putLong("FORBIDDEN_COUNT", j2);
        zzazk.zza(edit);
    }

    public long zzQn() {
        return Math.max(0, zzOP().getLong("FORBIDDEN_COUNT", 0)) == 0 ? 0 : zzg(10000, 600000) + 10000;
    }

    public boolean zzQo() {
        return Math.max(0, zzOP().getLong("FORBIDDEN_COUNT", 0)) > 0;
    }
}
