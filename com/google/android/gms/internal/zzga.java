package com.google.android.gms.internal;

import android.text.TextUtils;

@zzmb
public class zzga {
    public zzfz zza(zzfy com_google_android_gms_internal_zzfy) {
        if (com_google_android_gms_internal_zzfy == null) {
            throw new IllegalArgumentException("CSI configuration can't be null. ");
        } else if (!com_google_android_gms_internal_zzfy.zzfp()) {
            zzpe.v("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
            return null;
        } else if (com_google_android_gms_internal_zzfy.getContext() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(com_google_android_gms_internal_zzfy.zzdw())) {
            return new zzfz(com_google_android_gms_internal_zzfy.getContext(), com_google_android_gms_internal_zzfy.zzdw(), com_google_android_gms_internal_zzfy.zzfq(), com_google_android_gms_internal_zzfy.zzfr());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
