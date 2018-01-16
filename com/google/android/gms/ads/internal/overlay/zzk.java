package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzqp;

@zzmb
public abstract class zzk {
    public abstract zzj zza(Context context, zzqp com_google_android_gms_internal_zzqp, int i, boolean z, zzgf com_google_android_gms_internal_zzgf);

    protected boolean zzh(zzqp com_google_android_gms_internal_zzqp) {
        return com_google_android_gms_internal_zzqp.zzbD().zzzl;
    }

    protected boolean zzp(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return zzs.zzyA() && (applicationInfo == null || applicationInfo.targetSdkVersion >= 11);
    }
}
