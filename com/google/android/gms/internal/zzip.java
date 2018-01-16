package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zzl;

@zzmb
public class zzip {
    private final Context mContext;
    private final zzjs zzsD;
    private final zzd zzsz;
    private final zzqa zztr;

    zzip(Context context, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa, zzd com_google_android_gms_ads_internal_zzd) {
        this.mContext = context;
        this.zzsD = com_google_android_gms_internal_zzjs;
        this.zztr = com_google_android_gms_internal_zzqa;
        this.zzsz = com_google_android_gms_ads_internal_zzd;
    }

    public Context getApplicationContext() {
        return this.mContext.getApplicationContext();
    }

    public zzl zzag(String str) {
        return new zzl(this.mContext, new zzec(), str, this.zzsD, this.zztr, this.zzsz);
    }

    public zzl zzah(String str) {
        return new zzl(this.mContext.getApplicationContext(), new zzec(), str, this.zzsD, this.zztr, this.zzsz);
    }

    public zzip zzgi() {
        return new zzip(getApplicationContext(), this.zzsD, this.zztr, this.zzsz);
    }
}
