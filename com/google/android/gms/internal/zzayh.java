package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.tagmanager.zzay;
import com.google.android.gms.tagmanager.zzbb;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

public class zzayh {
    private final Context mContext;
    private final ExecutorService zzFe;
    private final zzbfe zzbHm;
    private final zzbb zzbHp;
    private final ScheduledExecutorService zzbHx;
    private final zzay zzbHy;

    public zzayh(Context context, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) {
        this(context, com_google_android_gms_tagmanager_zzbb, com_google_android_gms_tagmanager_zzay, new zzbfe(context), zzazo.zzQR(), zzazo.zzQS());
    }

    zzayh(Context context, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay, zzbfe com_google_android_gms_internal_zzbfe, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.mContext = ((Context) zzac.zzw(context)).getApplicationContext();
        this.zzbHp = (zzbb) zzac.zzw(com_google_android_gms_tagmanager_zzbb);
        this.zzbHy = (zzay) zzac.zzw(com_google_android_gms_tagmanager_zzay);
        this.zzbHm = (zzbfe) zzac.zzw(com_google_android_gms_internal_zzbfe);
        this.zzFe = (ExecutorService) zzac.zzw(executorService);
        this.zzbHx = (ScheduledExecutorService) zzac.zzw(scheduledExecutorService);
    }

    public zzayg zzm(String str, String str2, String str3) {
        return new zzayg(str, str2, str3, new zzazf(this.mContext, this.zzbHp, this.zzbHy, str), this.zzbHm, this.zzFe, this.zzbHx, this.zzbHp, zzh.zzyv(), new zzayi(this.mContext, str));
    }
}
