package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzv;

@zzmb
public final class zzps extends zzpd {
    private final String zzD;
    private final zzpz zzXK;

    public zzps(Context context, String str, String str2) {
        this(str2, zzv.zzcJ().zzh(context, str));
    }

    public zzps(String str, String str2) {
        this.zzXK = new zzpz(str2);
        this.zzD = str;
    }

    public void onStop() {
    }

    public void zzcm() {
        this.zzXK.zzu(this.zzD);
    }
}
