package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public class zzbfi implements Result {
    private final int zzAG;
    private final Status zzahq;
    private final zza zzbKi;
    private final zzbfu zzbKj;

    public static class zza {
        private final zzbfr zzbIk;
        private final byte[] zzbKk;
        private final long zzbKl;
        private final zzbfa zzbKm;

        public zza(zzbfa com_google_android_gms_internal_zzbfa, byte[] bArr, zzbfr com_google_android_gms_internal_zzbfr, long j) {
            this.zzbKm = com_google_android_gms_internal_zzbfa;
            this.zzbKk = bArr;
            this.zzbIk = com_google_android_gms_internal_zzbfr;
            this.zzbKl = j;
        }

        public zza(zzbfr com_google_android_gms_internal_zzbfr) {
            this(null, null, com_google_android_gms_internal_zzbfr, 0);
        }

        public byte[] zzRl() {
            return this.zzbKk;
        }

        public zzbfa zzRm() {
            return this.zzbKm;
        }

        public zzbfr zzRn() {
            return this.zzbIk;
        }

        public long zzRo() {
            return this.zzbKl;
        }
    }

    public zzbfi(Status status, int i) {
        this(status, i, null, null);
    }

    public zzbfi(Status status, int i, zza com_google_android_gms_internal_zzbfi_zza, zzbfu com_google_android_gms_internal_zzbfu) {
        this.zzahq = status;
        this.zzAG = i;
        this.zzbKi = com_google_android_gms_internal_zzbfi_zza;
        this.zzbKj = com_google_android_gms_internal_zzbfu;
    }

    public int getSource() {
        return this.zzAG;
    }

    public Status getStatus() {
        return this.zzahq;
    }

    public zza zzRi() {
        return this.zzbKi;
    }

    public zzbfu zzRj() {
        return this.zzbKj;
    }

    public String zzRk() {
        if (this.zzAG == 0) {
            return "Network";
        }
        if (this.zzAG == 1) {
            return "Saved file on disk";
        }
        if (this.zzAG == 2) {
            return "Default resource";
        }
        throw new IllegalStateException("Resource source is unknown.");
    }
}
