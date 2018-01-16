package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.io.IOException;
import java.util.List;

public class zzbjg extends zzbsd<zzbjt> {
    private zzbrl zzbVW;

    public void zza(zzbrl com_google_android_gms_internal_zzbrl) {
        this.zzbVW = (zzbrl) zzac.zzw(com_google_android_gms_internal_zzbrl);
    }

    public void zza(zzbtk com_google_android_gms_internal_zzbtk, zzbjt com_google_android_gms_internal_zzbjt) throws IOException {
        int i = 0;
        if (com_google_android_gms_internal_zzbjt == null) {
            com_google_android_gms_internal_zzbtk.zzaca();
            return;
        }
        zzbsd zzj = this.zzbVW.zzj(zzbjr.class);
        com_google_android_gms_internal_zzbtk.zzabW();
        List zzUp = com_google_android_gms_internal_zzbjt.zzUp();
        int size = zzUp != null ? zzUp.size() : 0;
        while (i < size) {
            zzj.zza(com_google_android_gms_internal_zzbtk, (zzbjr) zzUp.get(i));
            i++;
        }
        com_google_android_gms_internal_zzbtk.zzabX();
    }

    public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        return zzc(com_google_android_gms_internal_zzbti);
    }

    public zzbjt zzc(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
        zzbjt com_google_android_gms_internal_zzbjt = new zzbjt();
        zzbsd zzj = this.zzbVW.zzj(zzbjr.class);
        com_google_android_gms_internal_zzbti.beginArray();
        while (com_google_android_gms_internal_zzbti.hasNext()) {
            com_google_android_gms_internal_zzbjt.zzUp().add((zzbjr) zzj.zzb(com_google_android_gms_internal_zzbti));
        }
        com_google_android_gms_internal_zzbti.endArray();
        return com_google_android_gms_internal_zzbjt;
    }
}
