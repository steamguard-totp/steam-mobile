package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.zzs;

@zzmb
public class zzln {

    public interface zza {
        void zzb(zzov com_google_android_gms_internal_zzov);
    }

    public zzpk zza(Context context, com.google.android.gms.ads.internal.zza com_google_android_gms_ads_internal_zza, com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, zzav com_google_android_gms_internal_zzav, zzqp com_google_android_gms_internal_zzqp, zzjs com_google_android_gms_internal_zzjs, zza com_google_android_gms_internal_zzln_zza, zzgf com_google_android_gms_internal_zzgf) {
        zzmk com_google_android_gms_internal_zzmk = com_google_android_gms_internal_zzov_zza.zzVB;
        zzpk com_google_android_gms_internal_zzlr = com_google_android_gms_internal_zzmk.zzRK ? new zzlr(context, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzjs, com_google_android_gms_internal_zzln_zza, com_google_android_gms_internal_zzgf, com_google_android_gms_internal_zzqp) : (com_google_android_gms_internal_zzmk.zzzn || (com_google_android_gms_ads_internal_zza instanceof zzr)) ? (com_google_android_gms_internal_zzmk.zzzn && (com_google_android_gms_ads_internal_zza instanceof zzr)) ? new zzls(context, (zzr) com_google_android_gms_ads_internal_zza, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzln_zza, com_google_android_gms_internal_zzgf) : new zzlp(com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzln_zza) : (((Boolean) zzfx.zzBN.get()).booleanValue() && com_google_android_gms_internal_zzmk.zzRQ) ? new zzll(context, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzqp, com_google_android_gms_internal_zzln_zza) : (((Boolean) zzfx.zzCg.get()).booleanValue() && zzs.zzyF() && !zzs.zzyH() && com_google_android_gms_internal_zzqp != null && com_google_android_gms_internal_zzqp.zzbD().zzzl) ? new zzlq(context, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzqp, com_google_android_gms_internal_zzln_zza) : new zzlo(context, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zzqp, com_google_android_gms_internal_zzln_zza);
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(com_google_android_gms_internal_zzlr.getClass().getName());
        zzpy.zzbc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        com_google_android_gms_internal_zzlr.zziw();
        return com_google_android_gms_internal_zzlr;
    }

    public zzpk zza(Context context, com.google.android.gms.internal.zzov.zza com_google_android_gms_internal_zzov_zza, zznp com_google_android_gms_internal_zznp) {
        zzpk com_google_android_gms_internal_zzog = new zzog(context, com_google_android_gms_internal_zzov_zza, com_google_android_gms_internal_zznp);
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(com_google_android_gms_internal_zzog.getClass().getName());
        zzpy.zzbc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        com_google_android_gms_internal_zzog.zziw();
        return com_google_android_gms_internal_zzog;
    }
}
