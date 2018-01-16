package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.io.IOException;
import java.util.List;

public class zzbiy extends zzbsd<zzbjn> {
    private zzbrl zzbVW;

    public zzbjn zza(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
        zzbjn com_google_android_gms_internal_zzbjn = new zzbjn();
        zzbsd zzj = this.zzbVW.zzj(zzbjl.class);
        com_google_android_gms_internal_zzbti.beginArray();
        while (com_google_android_gms_internal_zzbti.hasNext()) {
            com_google_android_gms_internal_zzbjn.zzUr().add((zzbjl) zzj.zzb(com_google_android_gms_internal_zzbti));
        }
        com_google_android_gms_internal_zzbti.endArray();
        return com_google_android_gms_internal_zzbjn;
    }

    public void zza(zzbrl com_google_android_gms_internal_zzbrl) {
        this.zzbVW = (zzbrl) zzac.zzw(com_google_android_gms_internal_zzbrl);
    }

    public void zza(zzbtk com_google_android_gms_internal_zzbtk, zzbjn com_google_android_gms_internal_zzbjn) throws IOException {
        int i = 0;
        if (com_google_android_gms_internal_zzbjn == null) {
            com_google_android_gms_internal_zzbtk.zzaca();
            return;
        }
        zzbsd zzj = this.zzbVW.zzj(zzbjl.class);
        com_google_android_gms_internal_zzbtk.zzabW();
        List zzUr = com_google_android_gms_internal_zzbjn.zzUr();
        int size = zzUr != null ? zzUr.size() : 0;
        while (i < size) {
            zzj.zza(com_google_android_gms_internal_zzbtk, (zzbjl) zzUr.get(i));
            i++;
        }
        com_google_android_gms_internal_zzbtk.zzabX();
    }

    public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        return zza(com_google_android_gms_internal_zzbti);
    }
}
