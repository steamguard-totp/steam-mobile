package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.internal.zzbfi.zza;

public abstract class zzbfd {
    private int zzAG;
    protected final zzayi zzbHq;
    protected final zzbfh zzbJV;
    protected final zzbff zzbJW;
    protected final zze zzuI;

    public zzbfd(int i, zzbfh com_google_android_gms_internal_zzbfh, zzbff com_google_android_gms_internal_zzbff, zzayi com_google_android_gms_internal_zzayi) {
        this(i, com_google_android_gms_internal_zzbfh, com_google_android_gms_internal_zzbff, com_google_android_gms_internal_zzayi, zzh.zzyv());
    }

    public zzbfd(int i, zzbfh com_google_android_gms_internal_zzbfh, zzbff com_google_android_gms_internal_zzbff, zzayi com_google_android_gms_internal_zzayi, zze com_google_android_gms_common_util_zze) {
        this.zzbJV = (zzbfh) zzac.zzw(com_google_android_gms_internal_zzbfh);
        zzac.zzw(com_google_android_gms_internal_zzbfh.zzRh());
        this.zzAG = i;
        this.zzbJW = (zzbff) zzac.zzw(com_google_android_gms_internal_zzbff);
        this.zzuI = (zze) zzac.zzw(com_google_android_gms_common_util_zze);
        this.zzbHq = com_google_android_gms_internal_zzayi;
    }

    public void zzM(byte[] bArr) {
        zzbfi com_google_android_gms_internal_zzbfi;
        zzbfi zzN = zzN(bArr);
        if (this.zzbHq != null && this.zzAG == 0) {
            this.zzbHq.zzOO();
        }
        if (zzN == null || zzN.getStatus() != Status.zzayh) {
            com_google_android_gms_internal_zzbfi = new zzbfi(Status.zzayj, this.zzAG);
        } else {
            zzbfr zzRn = zzN.zzRi().zzRn();
            com_google_android_gms_internal_zzbfi = new zzbfi(Status.zzayh, this.zzAG, new zza(this.zzbJV.zzRh(), bArr, zzRn, this.zzuI.currentTimeMillis()), zzN.zzRj());
        }
        zza(com_google_android_gms_internal_zzbfi);
    }

    protected zzbfi zzN(byte[] bArr) {
        zzbfi com_google_android_gms_internal_zzbfi = null;
        try {
            com_google_android_gms_internal_zzbfi = this.zzbJW.zzO(bArr);
        } catch (zzbfb e) {
            zzayx.zzbd("Resource data is corrupted");
        }
        return com_google_android_gms_internal_zzbfi;
    }

    protected abstract void zza(zzbfi com_google_android_gms_internal_zzbfi);

    public String zzmY(int i) {
        switch (i) {
            case 0:
                return "Resource not available";
            case 1:
                return "IOError";
            case 2:
                return "Server error";
            default:
                return "Unknown reason";
        }
    }

    public void zzw(int i, int i2) {
        if (this.zzbHq != null && i2 == 0 && i == 3) {
            this.zzbHq.zzON();
        }
        String valueOf = String.valueOf(this.zzbJV.zzRh().getContainerId());
        String valueOf2 = String.valueOf(zzmY(i));
        zzayx.v(new StringBuilder((String.valueOf(valueOf).length() + 61) + String.valueOf(valueOf2).length()).append("Failed to fetch the container resource for the container \"").append(valueOf).append("\": ").append(valueOf2).toString());
        zza(new zzbfi(Status.zzayj, i2));
    }
}
