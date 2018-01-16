package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzaf.zza;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class zzau extends zzat {
    private static final String TAG = zzau.class.getSimpleName();

    protected zzau(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzau zza(String str, Context context, boolean z) {
        zzat.zza(context, z);
        return new zzau(context, str, z);
    }

    protected List<Callable<Void>> zzb(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza, zzad.zza com_google_android_gms_internal_zzad_zza) {
        if (com_google_android_gms_internal_zzbc.zzaJ() == null || !this.zzpX) {
            return super.zzb(com_google_android_gms_internal_zzbc, com_google_android_gms_internal_zzaf_zza, com_google_android_gms_internal_zzad_zza);
        }
        int zzT = com_google_android_gms_internal_zzbc.zzT();
        List<Callable<Void>> arrayList = new ArrayList();
        arrayList.addAll(super.zzb(com_google_android_gms_internal_zzbc, com_google_android_gms_internal_zzaf_zza, com_google_android_gms_internal_zzad_zza));
        arrayList.add(new zzbm(com_google_android_gms_internal_zzbc, zzay.zzaj(), zzay.zzak(), com_google_android_gms_internal_zzaf_zza, zzT, 24));
        return arrayList;
    }
}
