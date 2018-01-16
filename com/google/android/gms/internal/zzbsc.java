package com.google.android.gms.internal;

import java.io.IOException;

final class zzbsc<T> extends zzbsd<T> {
    private zzbsd<T> zzcmC;
    private final zzbrz<T> zzcmR;
    private final zzbrq<T> zzcmS;
    private final zzbrl zzcmT;
    private final zzbth<T> zzcmU;
    private final zzbse zzcmV;

    private static class zza implements zzbse {
        private final zzbrz<?> zzcmR;
        private final zzbrq<?> zzcmS;
        private final zzbth<?> zzcmW;
        private final boolean zzcmX;
        private final Class<?> zzcmY;

        private zza(Object obj, zzbth<?> com_google_android_gms_internal_zzbth_, boolean z, Class<?> cls) {
            this.zzcmR = obj instanceof zzbrz ? (zzbrz) obj : null;
            this.zzcmS = obj instanceof zzbrq ? (zzbrq) obj : null;
            boolean z2 = (this.zzcmR == null && this.zzcmS == null) ? false : true;
            zzbsj.zzas(z2);
            this.zzcmW = com_google_android_gms_internal_zzbth_;
            this.zzcmX = z;
            this.zzcmY = cls;
        }

        public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
            boolean isAssignableFrom = this.zzcmW != null ? this.zzcmW.equals(com_google_android_gms_internal_zzbth_T) || (this.zzcmX && this.zzcmW.zzacc() == com_google_android_gms_internal_zzbth_T.zzacb()) : this.zzcmY.isAssignableFrom(com_google_android_gms_internal_zzbth_T.zzacb());
            return isAssignableFrom ? new zzbsc(this.zzcmR, this.zzcmS, com_google_android_gms_internal_zzbrl, com_google_android_gms_internal_zzbth_T, this) : null;
        }
    }

    private zzbsc(zzbrz<T> com_google_android_gms_internal_zzbrz_T, zzbrq<T> com_google_android_gms_internal_zzbrq_T, zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T, zzbse com_google_android_gms_internal_zzbse) {
        this.zzcmR = com_google_android_gms_internal_zzbrz_T;
        this.zzcmS = com_google_android_gms_internal_zzbrq_T;
        this.zzcmT = com_google_android_gms_internal_zzbrl;
        this.zzcmU = com_google_android_gms_internal_zzbth_T;
        this.zzcmV = com_google_android_gms_internal_zzbse;
    }

    public static zzbse zza(zzbth<?> com_google_android_gms_internal_zzbth_, Object obj) {
        return new zza(obj, com_google_android_gms_internal_zzbth_, false, null);
    }

    private zzbsd<T> zzabG() {
        zzbsd<T> com_google_android_gms_internal_zzbsd_T = this.zzcmC;
        if (com_google_android_gms_internal_zzbsd_T != null) {
            return com_google_android_gms_internal_zzbsd_T;
        }
        com_google_android_gms_internal_zzbsd_T = this.zzcmT.zza(this.zzcmV, this.zzcmU);
        this.zzcmC = com_google_android_gms_internal_zzbsd_T;
        return com_google_android_gms_internal_zzbsd_T;
    }

    public static zzbse zzb(zzbth<?> com_google_android_gms_internal_zzbth_, Object obj) {
        return new zza(obj, com_google_android_gms_internal_zzbth_, com_google_android_gms_internal_zzbth_.zzacc() == com_google_android_gms_internal_zzbth_.zzacb(), null);
    }

    public void zza(zzbtk com_google_android_gms_internal_zzbtk, T t) throws IOException {
        if (this.zzcmR == null) {
            zzabG().zza(com_google_android_gms_internal_zzbtk, t);
        } else if (t == null) {
            com_google_android_gms_internal_zzbtk.zzaca();
        } else {
            zzbss.zzb(this.zzcmR.zza(t, this.zzcmU.zzacc(), this.zzcmT.zzcmA), com_google_android_gms_internal_zzbtk);
        }
    }

    public T zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
        if (this.zzcmS == null) {
            return zzabG().zzb(com_google_android_gms_internal_zzbti);
        }
        zzbrr zzh = zzbss.zzh(com_google_android_gms_internal_zzbti);
        if (zzh.zzaby()) {
            return null;
        }
        try {
            return this.zzcmS.zzb(zzh, this.zzcmU.zzacc(), this.zzcmT.zzcmz);
        } catch (zzbrv e) {
            throw e;
        } catch (Throwable e2) {
            throw new zzbrv(e2);
        }
    }
}
