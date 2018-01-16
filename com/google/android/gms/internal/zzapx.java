package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzapx extends zza {
    public static final Creator<zzapx> CREATOR = new zzapy();
    public final int versionCode;
    private zzaf.zza zzbfG = null;
    private byte[] zzbfH;

    zzapx(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzbfH = bArr;
        zzzg();
    }

    private void zzze() {
        if (!zzzf()) {
            try {
                this.zzbfG = zzaf.zza.zzd(this.zzbfH);
                this.zzbfH = null;
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
        zzzg();
    }

    private boolean zzzf() {
        return this.zzbfG != null;
    }

    private void zzzg() {
        if (this.zzbfG == null && this.zzbfH != null) {
            return;
        }
        if (this.zzbfG != null && this.zzbfH == null) {
            return;
        }
        if (this.zzbfG != null && this.zzbfH != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (this.zzbfG == null && this.zzbfH == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzapy.zza(this, parcel, i);
    }

    public byte[] zzFY() {
        return this.zzbfH != null ? this.zzbfH : zzbut.zzf(this.zzbfG);
    }

    public zzaf.zza zzFZ() {
        zzze();
        return this.zzbfG;
    }
}
