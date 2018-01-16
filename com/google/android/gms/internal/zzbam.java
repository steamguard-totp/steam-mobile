package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class zzbam extends zzazv {

    class zza implements Comparator<zzbfw<?>> {
        final /* synthetic */ zzbfz zzbJw;
        final /* synthetic */ zzazg zzbJx;

        zza(zzbam com_google_android_gms_internal_zzbam, zzbfz com_google_android_gms_internal_zzbfz, zzazg com_google_android_gms_internal_zzazg) {
            this.zzbJw = com_google_android_gms_internal_zzbfz;
            this.zzbJx = com_google_android_gms_internal_zzazg;
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return zze((zzbfw) obj, (zzbfw) obj2);
        }

        public int zze(zzbfw<?> com_google_android_gms_internal_zzbfw_, zzbfw<?> com_google_android_gms_internal_zzbfw_2) {
            if (com_google_android_gms_internal_zzbfw_ == null) {
                return com_google_android_gms_internal_zzbfw_2 != null ? 1 : 0;
            } else {
                if (com_google_android_gms_internal_zzbfw_2 == null) {
                    return com_google_android_gms_internal_zzbfw_ != null ? -1 : 0;
                } else {
                    zzbfw zzb = ((zzazt) this.zzbJw.zzRF()).zzb(this.zzbJx, com_google_android_gms_internal_zzbfw_, com_google_android_gms_internal_zzbfw_2);
                    zzac.zzar(zzb instanceof zzbfy);
                    return (int) ((Double) ((zzbfy) zzb).zzRF()).doubleValue();
                }
            }
        }
    }

    private static class zzb implements zzazt {
        private zzb() {
        }

        public zzbfw<?> zzb(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
            return new zzbfy(Double.valueOf((double) zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[0]).compareTo(zzazu.zzd(com_google_android_gms_internal_zzbfw_Arr[1]))));
        }
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        zzbfz com_google_android_gms_internal_zzbfz;
        zzac.zzw(com_google_android_gms_internal_zzbfw_Arr);
        boolean z = com_google_android_gms_internal_zzbfw_Arr.length == 1 || com_google_android_gms_internal_zzbfw_Arr.length == 2;
        zzac.zzas(z);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[0] instanceof zzbgb);
        zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_Arr[0];
        if (com_google_android_gms_internal_zzbfw_Arr.length == 2) {
            zzac.zzas(com_google_android_gms_internal_zzbfw_Arr[1] instanceof zzbfz);
            com_google_android_gms_internal_zzbfz = (zzbfz) com_google_android_gms_internal_zzbfw_Arr[1];
        } else {
            com_google_android_gms_internal_zzbfz = new zzbfz(new zzb());
        }
        Collections.sort((List) com_google_android_gms_internal_zzbgb.zzRF(), new zza(this, com_google_android_gms_internal_zzbfz, com_google_android_gms_internal_zzazg));
        return com_google_android_gms_internal_zzbfw_Arr[0];
    }
}
