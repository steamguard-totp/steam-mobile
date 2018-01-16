package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.io.IOException;
import java.util.List;

public class zzbjh extends zzbsd<zzbjx> {
    private zzbrl zzbVW;

    public void zza(zzbrl com_google_android_gms_internal_zzbrl) {
        this.zzbVW = (zzbrl) zzac.zzw(com_google_android_gms_internal_zzbrl);
    }

    public void zza(zzbtk com_google_android_gms_internal_zzbtk, zzbjx com_google_android_gms_internal_zzbjx) throws IOException {
        int i = 0;
        if (com_google_android_gms_internal_zzbjx == null) {
            com_google_android_gms_internal_zzbtk.zzaca();
            return;
        }
        zzbsd zzj = this.zzbVW.zzj(String.class);
        com_google_android_gms_internal_zzbtk.zzabW();
        List zzUA = com_google_android_gms_internal_zzbjx.zzUA();
        int size = zzUA != null ? zzUA.size() : 0;
        while (i < size) {
            zzj.zza(com_google_android_gms_internal_zzbtk, (String) zzUA.get(i));
            i++;
        }
        com_google_android_gms_internal_zzbtk.zzabX();
    }

    public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        return zzd(com_google_android_gms_internal_zzbti);
    }

    public zzbjx zzd(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
        zzbjx com_google_android_gms_internal_zzbjx = new zzbjx();
        zzbsd zzj = this.zzbVW.zzj(String.class);
        com_google_android_gms_internal_zzbti.beginArray();
        while (com_google_android_gms_internal_zzbti.hasNext()) {
            com_google_android_gms_internal_zzbjx.zzUA().add((String) zzj.zzb(com_google_android_gms_internal_zzbti));
        }
        com_google_android_gms_internal_zzbti.endArray();
        return com_google_android_gms_internal_zzbjx;
    }
}
