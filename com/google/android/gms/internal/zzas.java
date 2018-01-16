package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.internal.zzaf.zza;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class zzas extends zzat {
    private static final String TAG = zzas.class.getSimpleName();
    private Info zzpU;

    protected zzas(Context context) {
        super(context, "");
    }

    public static zzas zzc(Context context) {
        zzat.zza(context, true);
        return new zzas(context);
    }

    protected zza zza(Context context, View view) {
        return null;
    }

    public String zza(String str, String str2) {
        return zzan.zza(str, str2, true);
    }

    public void zza(Info info) {
        this.zzpU = info;
    }

    protected void zza(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza, zzad.zza com_google_android_gms_internal_zzad_zza) {
        if (!com_google_android_gms_internal_zzbc.zzaO()) {
            zza(zzb(com_google_android_gms_internal_zzbc, com_google_android_gms_internal_zzaf_zza, com_google_android_gms_internal_zzad_zza));
        } else if (this.zzpU != null) {
            Object id = this.zzpU.getId();
            if (!TextUtils.isEmpty(id)) {
                com_google_android_gms_internal_zzaf_zza.zzbV = zzbe.zzr(id);
                com_google_android_gms_internal_zzaf_zza.zzbW = Integer.valueOf(5);
                com_google_android_gms_internal_zzaf_zza.zzbX = Boolean.valueOf(this.zzpU.isLimitAdTrackingEnabled());
            }
            this.zzpU = null;
        }
    }

    protected List<Callable<Void>> zzb(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza, zzad.zza com_google_android_gms_internal_zzad_zza) {
        List<Callable<Void>> arrayList = new ArrayList();
        if (com_google_android_gms_internal_zzbc.zzaJ() == null) {
            return arrayList;
        }
        zzbc com_google_android_gms_internal_zzbc2 = com_google_android_gms_internal_zzbc;
        arrayList.add(new zzbm(com_google_android_gms_internal_zzbc2, zzay.zzaj(), zzay.zzak(), com_google_android_gms_internal_zzaf_zza, com_google_android_gms_internal_zzbc.zzT(), 24));
        return arrayList;
    }
}
