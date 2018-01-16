package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaze.zzc;
import com.google.android.gms.tagmanager.zzbb;
import java.util.Map;

public class zzbex extends zzazv {
    private final zzc zzbIr;
    private final zzbb zzbJM;

    public zzbex(zzbb com_google_android_gms_tagmanager_zzbb, zzc com_google_android_gms_internal_zzaze_zzc) {
        this.zzbJM = com_google_android_gms_tagmanager_zzbb;
        this.zzbIr = com_google_android_gms_internal_zzaze_zzc;
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        boolean z2 = com_google_android_gms_internal_zzbfw_Arr.length == 1 || com_google_android_gms_internal_zzbfw_Arr.length == 2;
        zzac.zzas(z2);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbge);
        zzbga com_google_android_gms_internal_zzbga = com_google_android_gms_internal_zzbfw_Arr.length > 1 ? com_google_android_gms_internal_zzbfw_Arr[1] : zzbga.zzbKV;
        if (!(com_google_android_gms_internal_zzbga == zzbga.zzbKV || (com_google_android_gms_internal_zzbga instanceof zzbgc))) {
            z = false;
        }
        zzac.zzas(z);
        zzaym zzQK = this.zzbIr.zzQK();
        String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw_Arr[0]).zzRF();
        Bundle bundle = null;
        if (com_google_android_gms_internal_zzbga != zzbga.zzbKV) {
            bundle = zzbgf.zzar((Map) ((zzbgc) com_google_android_gms_internal_zzbga).zzRF());
        }
        try {
            this.zzbJM.zza(zzQK.zzQr(), str, bundle, zzQK.currentTimeMillis());
        } catch (RemoteException e) {
            String str2 = "Error calling measurement proxy:";
            String valueOf = String.valueOf(e.getMessage());
            zzayx.e(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        return zzbga.zzbKV;
    }
}
