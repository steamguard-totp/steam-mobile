package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.tagmanager.zzay;
import com.google.android.gms.tagmanager.zzbb;

public class zzazf {
    private final Context mContext;
    private final String zzbCS;
    private final zzbb zzbHp;
    private final zzay zzbHy;

    public zzazf(Context context, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay, String str) {
        this.mContext = context.getApplicationContext();
        this.zzbHp = com_google_android_gms_tagmanager_zzbb;
        this.zzbHy = com_google_android_gms_tagmanager_zzay;
        this.zzbCS = str;
    }

    public zzaze zza(zzbfr com_google_android_gms_internal_zzbfr, zzbfu com_google_android_gms_internal_zzbfu) {
        return new zzaze(this.mContext, this.zzbCS, com_google_android_gms_internal_zzbfr, com_google_android_gms_internal_zzbfu, this.zzbHp, this.zzbHy);
    }
}
