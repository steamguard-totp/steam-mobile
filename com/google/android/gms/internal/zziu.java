package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.internal.zzac;
import java.util.Iterator;
import java.util.LinkedList;

@zzmb
class zziu {
    private final LinkedList<zza> zzIC = new LinkedList();
    private zzdy zzID;
    private final int zzIE;
    private boolean zzIF;
    private final String zztq;

    class zza {
        zzl zzIG;
        zzdy zzIH;
        zziq zzII;
        long zzIJ;
        boolean zzIK;
        boolean zzIL;
        final /* synthetic */ zziu zzIM;

        zza(zziu com_google_android_gms_internal_zziu, zzip com_google_android_gms_internal_zzip) {
            this.zzIM = com_google_android_gms_internal_zziu;
            this.zzIG = com_google_android_gms_internal_zzip.zzah(com_google_android_gms_internal_zziu.zztq);
            this.zzII = new zziq();
            this.zzII.zzc(this.zzIG);
        }

        zza(zziu com_google_android_gms_internal_zziu, zzip com_google_android_gms_internal_zzip, zzdy com_google_android_gms_internal_zzdy) {
            this(com_google_android_gms_internal_zziu, com_google_android_gms_internal_zzip);
            this.zzIH = com_google_android_gms_internal_zzdy;
        }

        void zzgq() {
            if (!this.zzIK) {
                this.zzIL = this.zzIG.zzb(zzis.zzl(this.zzIH != null ? this.zzIH : this.zzIM.zzID));
                this.zzIK = true;
                this.zzIJ = zzv.zzcP().currentTimeMillis();
            }
        }
    }

    zziu(zzdy com_google_android_gms_internal_zzdy, String str, int i) {
        zzac.zzw(com_google_android_gms_internal_zzdy);
        zzac.zzw(str);
        this.zzID = com_google_android_gms_internal_zzdy;
        this.zztq = str;
        this.zzIE = i;
    }

    String getAdUnitId() {
        return this.zztq;
    }

    int getNetworkType() {
        return this.zzIE;
    }

    int size() {
        return this.zzIC.size();
    }

    void zza(zzip com_google_android_gms_internal_zzip, zzdy com_google_android_gms_internal_zzdy) {
        this.zzIC.add(new zza(this, com_google_android_gms_internal_zzip, com_google_android_gms_internal_zzdy));
    }

    void zzb(zzip com_google_android_gms_internal_zzip) {
        zza com_google_android_gms_internal_zziu_zza = new zza(this, com_google_android_gms_internal_zzip);
        this.zzIC.add(com_google_android_gms_internal_zziu_zza);
        com_google_android_gms_internal_zziu_zza.zzgq();
    }

    zzdy zzgl() {
        return this.zzID;
    }

    int zzgm() {
        Iterator it = this.zzIC.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = ((zza) it.next()).zzIK ? i + 1 : i;
        }
        return i;
    }

    void zzgn() {
        Iterator it = this.zzIC.iterator();
        while (it.hasNext()) {
            ((zza) it.next()).zzgq();
        }
    }

    void zzgo() {
        this.zzIF = true;
    }

    boolean zzgp() {
        return this.zzIF;
    }

    zza zzp(zzdy com_google_android_gms_internal_zzdy) {
        if (com_google_android_gms_internal_zzdy != null) {
            this.zzID = com_google_android_gms_internal_zzdy;
        }
        return (zza) this.zzIC.remove();
    }
}
