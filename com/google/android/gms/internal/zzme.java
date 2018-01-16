package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.util.zzi;

@zzmb
public final class zzme {

    public interface zza {
        void zzb(zzmk com_google_android_gms_internal_zzmk);
    }

    interface zzb {
        boolean zza(zzqa com_google_android_gms_internal_zzqa);
    }

    class AnonymousClass1 implements zzb {
        final /* synthetic */ Context zztd;

        AnonymousClass1(Context context) {
            this.zztd = context;
        }

        public boolean zza(zzqa com_google_android_gms_internal_zzqa) {
            return com_google_android_gms_internal_zzqa.zzYd || (zzi.zzaK(this.zztd) && !((Boolean) zzfx.zzBF.get()).booleanValue());
        }
    }

    public static zzpk zza(Context context, zzqa com_google_android_gms_internal_zzqa, zzqi<zzmh> com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, zza com_google_android_gms_internal_zzme_zza) {
        return zza(context, com_google_android_gms_internal_zzqa, com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, com_google_android_gms_internal_zzme_zza, new AnonymousClass1(context));
    }

    static zzpk zza(Context context, zzqa com_google_android_gms_internal_zzqa, zzqi<zzmh> com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, zza com_google_android_gms_internal_zzme_zza, zzb com_google_android_gms_internal_zzme_zzb) {
        return com_google_android_gms_internal_zzme_zzb.zza(com_google_android_gms_internal_zzqa) ? zza(context, com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, com_google_android_gms_internal_zzme_zza) : zzb(context, com_google_android_gms_internal_zzqa, com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, com_google_android_gms_internal_zzme_zza);
    }

    private static zzpk zza(Context context, zzqi<zzmh> com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, zza com_google_android_gms_internal_zzme_zza) {
        zzpy.zzbc("Fetching ad response from local ad request service.");
        zzpk com_google_android_gms_internal_zzmf_zza = new com.google.android.gms.internal.zzmf.zza(context, com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, com_google_android_gms_internal_zzme_zza);
        com_google_android_gms_internal_zzmf_zza.zziw();
        return com_google_android_gms_internal_zzmf_zza;
    }

    private static zzpk zzb(Context context, zzqa com_google_android_gms_internal_zzqa, zzqi<zzmh> com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, zza com_google_android_gms_internal_zzme_zza) {
        zzpy.zzbc("Fetching ad response from remote ad request service.");
        if (zzeh.zzeO().zzP(context)) {
            return new com.google.android.gms.internal.zzmf.zzb(context, com_google_android_gms_internal_zzqa, com_google_android_gms_internal_zzqi_com_google_android_gms_internal_zzmh, com_google_android_gms_internal_zzme_zza);
        }
        zzpy.zzbe("Failed to connect to remote ad request service.");
        return null;
    }
}
